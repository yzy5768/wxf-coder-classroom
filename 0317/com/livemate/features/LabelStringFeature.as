package com.livemate.features
{
	import flash.display.DisplayObject;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import org.openscales.core.feature.PointFeature;
	import org.openscales.core.geometry.Collection;
	import org.openscales.core.geometry.Point;
	import org.openscales.core.style.Style;
	import org.openscales.core.style.marker.DisplayObjectMarker;
		
	/**
	 * 扩展 openScales 的pointFeature,使之支持文字显示
	 * 仿照 googleMapFlex 的功能
	 * 
	 * @copyright www.vistech.com.cn 杭州旅行者科技有限公司
	 * @author zzf.livemate@gmail.com
	 * @version 2010-03-13
	 * */
	public class LabelStringFeature extends PointFeature
	{	
		private var _title:String;
		private var _textFormat:TextFormat;
		
		/**
		 * 构造函数
		 * 
		 * */
		public function LabelStringFeature(geom:Point=null, data:Object=null, style:Style=null, isEditionFeature:Boolean=false, editionFeatureParentGeometry:Collection=null,title:String=null,_titleFormat:TextFormat=null)
		{
			super(geom, data, style,isEditionFeature,editionFeatureParentGeometry);
			if(title&&title!=""){
				_title=title;
				if(_titleFormat){
					_textFormat=_titleFormat;
				}
			}
		}
		override public function draw():void {
			var numChildren:Number = this.numChildren;
			for(var i:int=numChildren-1;i>=0;i--){
				this.removeChildAt(i);
			}
			super.draw();
		}
		override	protected function drawFlashGraphic(marker:DisplayObjectMarker, x:Number, y:Number):void {
			var instance:DisplayObject = marker.instance;
			instance.x += x;
			instance.y += y;
			if(_title){
				var _textFiled:TextField=new TextField();
				_textFiled.text=_title;
				_textFiled.x=instance.x+15;
				_textFiled.y=instance.y;
				//限制文字的热点区域
				_textFiled.width = 40;
				_textFiled.height = 20;
				if(_textFormat){

				}
				this.addChild(_textFiled);
			}
			this.addChild(instance);
		}

	}
}