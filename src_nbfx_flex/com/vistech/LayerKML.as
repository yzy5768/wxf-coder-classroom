package com.vistech
{
    import flash.geom.ColorTransform;
    
    import mx.collections.ArrayCollection;
    import mx.controls.Alert;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.http.HTTPService;
    import mx.utils.ObjectProxy;
    
    import org.openscales.core.Map;
    import org.openscales.core.feature.LineStringFeature;
    import org.openscales.core.feature.PointFeature;
    import org.openscales.core.geometry.LineString;
    import org.openscales.core.geometry.Point;
    import org.openscales.core.layer.FeatureLayer;
    import org.openscales.core.style.Rule;
    import org.openscales.core.style.Style;
    import org.openscales.core.style.fill.SolidFill;
    import org.openscales.core.style.marker.DisplayObjectMarker;
    import org.openscales.core.style.stroke.Stroke;
    import org.openscales.core.style.symbolizer.PointSymbolizer;
    import org.openscales.core.style.symbolizer.PolygonSymbolizer;


    /**
     * 读取一个KML文件,得到这个文件中的点,线标注
     * 主要为 googemp FLEX 版相对应
     *
     * 如果是描点,可以描这个点的角度,图标
     * 如果是描线,可以描这个点的颜色
     *
     * @author wxf.livemate@gmail.com
     * @version 2010-01-20
     * */
    public class LayerKML
    {
        [Embed(source="assets/DP.png")]
        public var imgClassDP:Class;
        
        [Embed(source="assets/ZZ.gif")]
        public var imgClassZZ:Class;
        
        [Embed(source="assets/RR.gif")]
        public var imgClassRR:Class;
        
        [Embed(source="assets/VD.gif")]
        public var imgClassVD:Class;
        
        [Embed(source="assets/PP.gif")]
        public var imgClassPP:Class;
        
        [Embed(source="assets/MM.gif")]
        public var imgClassMM:Class;                                        

        //GIS系统中唯一的地图控件,将在构造函数中初始化
        public var map:Map=null;
        
        
        public var mainlayer:FeatureLayer=null;

        /**
         * 构造函数,初始化 google map
         * 所有点 线 面 都要绘制到 googlemap 上面
         * */
        public function LayerKML(gmap:Map, layerName:String)
        {
            this.map=gmap;
            mainlayer=new FeatureLayer(layerName, false, true, "EPSG:4326");
        }

        /**
         * 读取KML数据,KML数据可能是后台生成的(比如PHP语言)
         * @parma kmlPath 返回数据的路径
         * @parma postData 在执行查询过程中,需要向后台 POST 数据
         * */
        public function readKml(kmlPath:String, postData:Object):void
        {
            var httpservice:HTTPService=new HTTPService();
            httpservice.url=kmlPath;
            httpservice.addEventListener(ResultEvent.RESULT, drawKML);
            httpservice.addEventListener(FaultEvent.FAULT, function(event:FaultEvent):void
                {
                    Alert.show("无法读取数据" + kmlPath);
                });
            httpservice.request=postData;
            httpservice.method="POST";
            httpservice.send();
        }

        /**
         * 在地图控件上绘制KML,主要是添加图层
         * 这是一个事件函数
         * */
        public function drawKML(event:ResultEvent):void
        {
        	mainlayer.resolutions = [0.125,0.0625,0.03125,0.015625,0.0078125,0.00390625,0.001953125,0.00098765125,0.000598820625,0.0002994103125,0.00014970515625,0.000074852578125,0.00001871314453125,0.000009356572265625,0.0000046782861328125];
        	
            //返回的数据是一个KML数据,可以在 GOOLE EARTH 上直接显示的,甚至文件本省是由GOOLE EARTH 产生的,也可以由服务器动态产生
            var kmlObj:ObjectProxy=event.result.kml.Document;

            var kmlPlacemark:ArrayCollection=kmlObj.Placemark;
            if (kmlPlacemark.length == 2)
            {
                Alert.show("没有返回数据");
                return;
            }
            var kmlStyle:ArrayCollection=kmlObj.Style;
            var kmlStyleMap:ArrayCollection=kmlObj.StyleMap;
            var mapLayArr:Array=new Array();

            var lineCount:int=0; //统计有多少条线
            var pointCount:int=0; //统计有多少个点

            for (var iPlacemark:int=2; iPlacemark < kmlPlacemark.length; iPlacemark++)
            {
                //线条
                if (kmlPlacemark[iPlacemark].LineString)
                {
                    this.drawLine(kmlPlacemark[iPlacemark], kmlStyleMap, kmlStyle);
                    lineCount++;
                    //如果要绘制一个点
                }
                else if (kmlPlacemark[iPlacemark].Point)
                {
                    this.drawPoint(kmlPlacemark[iPlacemark], kmlStyleMap, kmlStyle);
                    pointCount++;
                }
            }
            this.map.addLayer(this.mainlayer);
        }

        /**
         * 绘制一条线段
         * 可以根据 KML 中定义的颜色 线条粗细 来描线
         * */
        private function drawLine(kmlPlacemark:Object, kmlStyleMap:ArrayCollection, kmlStyle:ArrayCollection):void
        {
            var arrLatlanKml:Array=(kmlPlacemark.LineString.coordinates as String).split(",0");
            var arrLatlanMap:Array=new Array();
            for (var j:int=0; j < arrLatlanKml.length; j++)
            {
                trace(arrLatlanKml[j]);
                var temp:Array=(arrLatlanKml[j] as String).split(',');
                //如果这个经纬度正常
                if (temp.length >= 2)
                    arrLatlanMap.push(temp);
            }
            //设置样式,样式保存在KML中的 styleMap 和  style 标签中
            var colorTransform:ColorTransform=new ColorTransform();
            colorTransform.color=0xFFFFFF; //线条的默认颜色为白色
            if (kmlStyleMap)
            {
                for (var iSmap:int=0; iSmap < kmlStyleMap.length; iSmap++)
                {
                    if (kmlPlacemark.styleUrl == "#" + kmlStyleMap[iSmap].id)
                    {
                        for (var indexStyle:int=0; indexStyle < kmlStyle.length; indexStyle++)
                        {
                            if (kmlStyleMap[iSmap].Pair[0].styleUrl == "#" + kmlStyle[indexStyle].id)
                            {
                                if (kmlStyle[indexStyle].LineStyle && kmlStyle[indexStyle].LineStyle.color)
                                {
                                    //KML的颜色标注和正规的RGB标注不一样
                                    var SimpleTitleWindowExample:String=kmlStyle[indexStyle].LineStyle.color.substr(0, 2);
                                    var b:String=kmlStyle[indexStyle].LineStyle.color.substr(2, 2);
                                    var g:String=kmlStyle[indexStyle].LineStyle.color.substr(4, 2);
                                    var r:String=kmlStyle[indexStyle].LineStyle.color.substr(6, 2);
                                    colorTransform.blueOffset=Number("0x" + b);
                                    colorTransform.greenOffset=Number("0x" + g);
                                    colorTransform.redOffset=Number("0x" + r);
                                }
                            }
                        }
                    }
                }
            }
            var style:Style;
            var rule:Rule;
            var arrayComponents:Array;
            var arrayVertices:Array;

            style=new Style();
            style.rules[0]=new Rule();
            style.rules[0].symbolizers.push(new PolygonSymbolizer(new SolidFill(0x999999, 0.5), new Stroke(0x000000, 2)));
            arrayComponents=new Array();
            for (var i:int=0; i < arrLatlanMap.length; i++)
            {
                arrayComponents.push(new org.openscales.core.geometry.Point(arrLatlanMap[i][0], arrLatlanMap[i][1]));
            }

            var obj:Object=new Object();
            obj.description=kmlPlacemark.description;

            var lineStringFeature:LineStringFeature=new LineStringFeature(new LineString(arrayComponents), obj, style, true);
            this.mainlayer.addFeature(lineStringFeature);
        }

        /**
         * 绘制一个点
         * 可以根据 KML 中定义的 图标 和 角度 来描点
         * */
        private function drawPoint(kmlPlacemark:Object, kmlStyleMap:ArrayCollection, kmlStyle:ArrayCollection, useMarkerManager:Boolean=true):void
        {
            var arrLonLan:Array=(kmlPlacemark.Point.coordinates as String).split(",");


            var style:Style;
            var rule:Rule;
            var arrayComponents:Array;
            var arrayVertices:Array;
            var point:org.openscales.core.geometry.Point;
            
            var rotation:int = 0;
            if(kmlPlacemark.LookAt&&kmlPlacemark.LookAt.heading)rotation = kmlPlacemark.LookAt.heading;
			if(kmlPlacemark.Camera&&kmlPlacemark.Camera.heading)rotation = kmlPlacemark.Camera.heading;

            point=new org.openscales.core.geometry.Point(arrLonLan[0],arrLonLan[1]);
            style=new Style();
            style.rules[0]=new Rule();       
            
			var arrData:Array = kmlPlacemark.description.split("______");
			if(arrData[1]=="VD"){
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassVD,-7,-7,15,1,rotation)));
			}else if(arrData[1]=="DP"){
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassDP,-7,-7,15,1,rotation)));
			}else if(arrData[1]=="MM"){
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassMM,-7,-7,15,1,rotation)));
			}else if(arrData[1]=="PP"){
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassPP,-7,-7,15,1,rotation)));
			}else if(arrData[1]=="RR"){
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassRR,-7,-7,15,1,rotation)));
			}else{
				style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassZZ,-7,-7,15,1,rotation)));
			}    
			
            var objData:Object=new Object();
            objData.description=arrData[2];
 			objData.stcd=arrData[0];
  			objData.sttp=arrData[1];

            this.mainlayer.addFeature(new PointFeature(point, objData, style));
        }
    }
}