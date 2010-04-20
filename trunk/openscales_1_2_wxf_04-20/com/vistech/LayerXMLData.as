package com.vistech
{   
    import com.livemate.features.LabelStringFeature;
    
    import flash.text.TextFormat;
    
    import mx.collections.ArrayCollection;
    import mx.controls.Alert;
    import mx.managers.CursorManager;
    import mx.rpc.events.FaultEvent;
    import mx.rpc.events.ResultEvent;
    import mx.rpc.http.HTTPService;
    
    import org.openscales.core.Map;
    import org.openscales.core.geometry.Point;
    import org.openscales.core.layer.FeatureLayer;
    import org.openscales.core.layer.Layer;
    import org.openscales.core.style.Rule;
    import org.openscales.core.style.Style;
    import org.openscales.core.style.marker.DisplayObjectMarker;
    import org.openscales.core.style.symbolizer.PointSymbolizer;

    /**
     * 读取原 openGis 的后台数据格式 getDataXml.php 所返回的XML数据
     * 这只能描点,不能描线
     * 如果是描点,可以描这个点的 角度,图标,数值,闪烁状态
     *
     * @author wxf.livemate@gmail.com
     * @version 2010-01-20
     * */
    public class LayerXMLData
    {
    	//绑定本地的图标资源 TODO
        [Embed(source="assets/DP.png")]
        public var imgClassDP:Class;
        
        [Embed(source="assets/FHZ.gif")]
        public var imgClassFHZ:Class;
        
        [Embed(source="assets/DP_FHZ.gif")]
        public var imgClassDP_FHZ:Class;
        
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
        
        [Embed(source="assets/DP_WARNNING.gif")]
        public var imgClassDP_WARNNING:Class;
        
        [Embed(source="assets/ZZ_WARNNING.gif")]
        public var imgClassZWARNNING:Class;
        
        [Embed(source="assets/RR_WARNNING.gif")]
        public var imgClassRR_WARNNING:Class;
        
        [Embed(source="assets/PP_WARNNING.gif")]
        public var imgClassPP_WARNNING:Class;
        
        [Embed(source="assets/WIND.gif")]
        public var imgClassMM_WIND:Class;   

        //GIS系统中唯一的地图控件,将在构造函数中初始化
        public var map:Map=null;
        
        //这个控件主要是一个 层 ,这个层上要绘制很多个点,这个层最终将被叠加到地图上
        public var mainlayer:FeatureLayer=null;
        
        public var stationType:String = 'RR';
        
        /**
         * 构造函数,初始化 图层的主要信息,包括 这个图层的名称,图层所采用的比例尺系数,图层将被叠加到那个地图上
         * 
         * @param map 一个openScales的map控件,注意,不是 fmap
         * @param layerName 所要添加的图层的名称
         * @param resolutions 地图缩放时所用的比例系数 
         * */
        public function LayerXMLData(map:Map, resolutions:String=null, layerName:String='ImmediateData' )
        {
            this.map=map;
            mainlayer=new FeatureLayer(layerName, false, true, "EPSG:4326");  
            var arr:Array = resolutions.split(",");
            mainlayer.resolutions = arr; 
        }

        /**
         * 读取XmlData数据,XmlData数据可能是后台生成的(比如PHP语言)
         * 这个操作是异步通信的
         * 成功读取到后台数据后,将执行 drawXmlData 函数
         * @parma XmlDataPath 返回数据的路径
         * @parma postData 在执行查询过程中,需要向后台 POST 数据
         * */
        public function readXmlData(XmlDataPath:String, postData:Object):void
        {
            var httpservice:HTTPService=new HTTPService();
            CursorManager.setBusyCursor();
            httpservice.url=XmlDataPath;
            httpservice.addEventListener(ResultEvent.RESULT, drawXmlData);
            httpservice.addEventListener(FaultEvent.FAULT, function(event:FaultEvent):void
                {
                    Alert.show("无法读取数据" + XmlDataPath);
                    CursorManager.removeBusyCursor();
                });
            httpservice.request=postData;
            httpservice.method="POST";
            httpservice.send();
        }

        /**
         * 在地图控件上绘制XmlData,主要是添加图层
         * 这是一个事件函数,在 readXmlData 函数执行之后自动运行
         * */
        public function drawXmlData(event:ResultEvent):Layer
        {     	
        	//后台得到的xml数据包含了公司自己定义的地图标记格式,是一张完全的二维表,将它处理为一个数组
        	if(!event.result.Vistech.Data){
        		Alert.show("没有数据");
        		CursorManager.removeBusyCursor();
        		return null;
        	}
        	if(!(event.result.Vistech.Data.Data as ArrayCollection)){
        		var arr:ArrayCollection = new ArrayCollection();
        		arr.addItem(event.result.Vistech.Data.Data);
        		event.result.Vistech.Data.Data = arr;
        	}
            var XmlDataArray:ArrayCollection = event.result.Vistech.Data.Data as ArrayCollection;
            
            //循环遍历这个数组,并得到其中所要的数据:经纬度,站点编号
			for(var i:int=0;i<XmlDataArray.length;i++){

				var style:Style;
	            var rule:Rule;
	            var arrayComponents:Array;
	            var arrayVertices:Array;
	            var point:org.openscales.core.geometry.Point;
				
				point=new org.openscales.core.geometry.Point(XmlDataArray[i].经度,XmlDataArray[i].纬度);
	            style=new Style();
	            style.rules[0]=new Rule();    
	            
	            var rotation:int = 0;
	            var label:String = "";      
	            var objData:Object=new Object();
	            objData.description = '';  
	            objData.type = stationType;
	           
				
				switch(stationType){
					case 'RR':
						label = (XmlDataArray[i].库水位).toString();	
						var imageIcon:DisplayObjectMarker;
						if(XmlDataArray[i].库水位>XmlDataArray[i].警戒水位){
							imageIcon = new DisplayObjectMarker(imgClassRR_WARNNING,0,0,15,1,rotation);
						}else{
							imageIcon = new DisplayObjectMarker(imgClassRR,-7,-7,15,1,rotation);
						}
						style.rules[0].symbolizers.push(new PointSymbolizer(imageIcon));
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						objData.id = XmlDataArray[i].站码;
						break;
					case 'ZZ':
						label = (XmlDataArray[i].水位 ).toString();	
						rotation = XmlDataArray[i].倾角;	
												
						if(XmlDataArray[i].水位>XmlDataArray[i].警戒水位){
							imageIcon = new DisplayObjectMarker(imgClassZWARNNING,-7,-7,15,1,rotation);
						}else{
							imageIcon = new DisplayObjectMarker(imgClassZZ,-7,-7,15,1,rotation);
						}
						style.rules[0].symbolizers.push(new PointSymbolizer(imageIcon));						
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}		
						objData.id = XmlDataArray[i].站码;			
						break;
					case 'PP':
						label = (XmlDataArray[i].降水).toString();	
						imageIcon = new DisplayObjectMarker(imgClassPP,-5,-5,15,1,rotation);
						style.rules[0].symbolizers.push(new PointSymbolizer(imageIcon));
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						objData.id = XmlDataArray[i].站码;
						break;	
					//实时风情	
					case 'MM_WIND':
						rotation = XmlDataArray[i].二分钟风向;  
						label = (XmlDataArray[i].二分钟风速 ).toString();	
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						objData.id = XmlDataArray[i].站码;
						style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassMM_WIND,-8,-8,16,1,rotation)));
						break;	
					//实时温度	
					case 'MM':
						label = (XmlDataArray[i].干球温度 ).toString();	
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassMM,-7.5,-7.5,15,1,rotation)));
						objData.id = XmlDataArray[i].站码;
						break;							
					//描水利工程设施中的水库
					case 'vt_projects_res':
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						
						var imageIcon:DisplayObjectMarker;
						if(XmlDataArray[i].库容 as Number > 100000000){
							imageIcon = new DisplayObjectMarker(imgClassRR,-12,-12,24,1,rotation);
						}else if(XmlDataArray[i].库容 as Number >= 10000000 && XmlDataArray[i].库容 as Number < 100000000){
							imageIcon = new DisplayObjectMarker(imgClassRR,-11,-11,22,1,rotation);
						}else if(XmlDataArray[i].库容 as Number >= 1000000 && XmlDataArray[i].库容 as Number < 10000000){
							imageIcon = new DisplayObjectMarker(imgClassRR,-9,-9,18,1,rotation);
						}else if(XmlDataArray[i].库容 as Number >= 100000 && XmlDataArray[i].库容 as Number < 1000000){
							imageIcon = new DisplayObjectMarker(imgClassRR,-7,-7,14,1,rotation);
						}else {
							imageIcon = new DisplayObjectMarker(imgClassRR,-5,-5,10,1,rotation);
						}						
						style.rules[0].symbolizers.push(new PointSymbolizer(imageIcon));		
						objData.id = XmlDataArray[i].站码;					
						break;		
					//描水利工程设施中的泵站						
					case 'pumbingStation':
						label = "";
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="泵站"){
							if(XmlDataArray[i].是否在抽水&&XmlDataArray[i].是否在抽水==1){
								imageIcon = new DisplayObjectMarker(imgClassDP_WARNNING,-7,-7,15,1,rotation);
							}else{
								imageIcon = new DisplayObjectMarker(imgClassDP,-7,-7,15,1,rotation);
							}
						}else if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="泵站防洪闸"){
							if(XmlDataArray[i].是否在抽水&&XmlDataArray[i].是否在抽水==1){
								imageIcon = new DisplayObjectMarker(imgClassDP_WARNNING,-7,-7,15,1,rotation);
							}else{
								imageIcon = new DisplayObjectMarker(imgClassDP_FHZ,-7,-7,15,1,rotation);
							}
						}else if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="防洪闸"){
							imageIcon = new DisplayObjectMarker(imgClassFHZ,-7,-7,15,1,rotation);
						}else if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="拟建防洪闸"){
							imageIcon = new DisplayObjectMarker(imgClassDP_FHZ,-5,-5,10,1,rotation);
						}else if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="拟建泵站"){
							imageIcon = new DisplayObjectMarker(imgClassDP,-5,-5,10,1,rotation);
						}else if(XmlDataArray[i].类别&&XmlDataArray[i].类别=="拟建泵站防洪闸"){
							imageIcon = new DisplayObjectMarker(imgClassDP_FHZ,-5,-5,10,1,rotation);
						}else{
							imageIcon = new DisplayObjectMarker(imgClassDP,-7,-7,15,1,rotation);
						}
						style.rules[0].symbolizers.push(new PointSymbolizer(imageIcon));	
						objData.id = XmlDataArray[i].站码;
						break;		
					//描水利工程设施中的视屏站						
					case 'HYDRO_VD':
						label = "";
						for(var x:Object in XmlDataArray[i]){
							if(XmlDataArray[i][x]){
								objData.description += x+":"+XmlDataArray[i][x]+"\n";
							}
						}
						style.rules[0].symbolizers.push(new PointSymbolizer(new DisplayObjectMarker(imgClassVD,-7,-9,15,1,rotation)));
						objData.id = XmlDataArray[i].站码;
						break;																											
					default:break;
					
				}				
				var _textFormat:TextFormat=new TextFormat();//标注属性
				_textFormat.color= 0xcccccc;
				var _labelFeature:LabelStringFeature=new LabelStringFeature(point, objData, style,false,null,label,_textFormat);
				this.mainlayer.addFeature(_labelFeature);	
	        }
	        
			CursorManager.removeBusyCursor();
			this.map.addLayer(this.mainlayer);
			return this.mainlayer;
        }
    }
}