// ActionScript file

import com.vistech.ST_STBPRP_B_search;
import com.vistech.SuperPanel;

import flash.utils.Dictionary;

import mx.controls.Alert;
import mx.events.CloseEvent;
import mx.rpc.events.FaultEvent;
import mx.rpc.events.ResultEvent;
import mx.rpc.http.mxml.HTTPService;

import org.openscales.core.Map;
import org.openscales.core.basetypes.Bounds;
import org.openscales.core.feature.Marker;
import org.openscales.core.geometry.Point;
import org.openscales.core.layer.KML;
import org.openscales.core.style.Style;

/**
 * 为站点查询提供功能
 * */
public function wxf_searchStation(map:Map):void{
	//添加一个漂浮框
	var window:SuperPanel = new SuperPanel();
	window.allowClose = true;
	window.allowDrag = true;
	window.allowMinimize = true;
	window.width = 550;
	window.height = 250;
	window.y = 150;
	window.x = 400;
	window.title = "站点查询";
	window.addEventListener(CloseEvent.CLOSE,function(){
		window.parent.removeChild(window);
	});
	addChild(window);
	
	//读取 appURL 路径
	var appURL:String = null;
	var httpservice:HTTPService = new HTTPService();
    httpservice.url = "st_stbprp_search.xml";
    httpservice.method = "GET";
	httpservice.addEventListener(ResultEvent.RESULT, function(event:ResultEvent):void{
		appURL = event.result.vistech.appURL;
	});
	httpservice.addEventListener(FaultEvent.FAULT, function(event:FaultEvent):void{
		Alert.show("无法读取配置文件 st_stbprp_search.xml, 请将st_stbprp_search.xml 放到 地图 文件的同目录下,或者 st_stbprp_search.xml 文件格式错误");
	});			
	httpservice.send();
	
	var st_stbprp_b_searchCanvas:ST_STBPRP_B_search = new ST_STBPRP_B_search();
	st_stbprp_b_searchCanvas.addEventListener("clickSearchBut",function(){
		if(appURL==null){
			Alert.show("尚未读取配置文件,请等待")
			return;
		};

		var conditions:Dictionary = st_stbprp_b_searchCanvas.getSearchConditions();
		//var style:Style = new Style();
		//style.name = "Default circle style";
		
		//var kml:KML = new KML("stdddation","http://localhost:8003/st_stbprp_b.php?function=readKml",new Bounds(104.484,21.351,112.056,26.389));

		//kml.style = style;
		//map.removeLayer(map.getLayerByName("stations"));
		//map.addLayer(kml);
		//kml.redraw(true);
		//Alert.show("point");
		//var my

		//map.(kml);
		//map.addLayer();
		//var kr:kmlReader = new kmlReader(gmap);
		//kr.readKml(appURL + "?controller=st_stbprp_b&action=readKml",conditions as Object);
	});
	
	window.addChild(st_stbprp_b_searchCanvas);
}


/**
 * 产生一个漂浮框,实现对 地图层的控制
 * 主要控制 堤防 桥梁 抢险段 等
 * 线条数据
 * */
public function wxf_layerManager(gmap:Map):void{
	//添加一个漂浮框
	var window:SuperPanel = new SuperPanel();
	window.allowClose = true;
	window.allowDrag = true;
	window.allowMinimize = true;
	window.width = 350;
	window.height = 400;
	window.title = "图层叠加";
	window.addEventListener(CloseEvent.CLOSE,function(){
		window.parent.removeChild(window);
	});
	addChild(window);
}