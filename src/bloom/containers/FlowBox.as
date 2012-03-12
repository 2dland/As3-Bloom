package bloom.containers {

import bloom.core.IComponent;

import flash.display.DisplayObject;
import flash.display.DisplayObjectContainer;

import org.as3commons.ui.layout.HLayout;
import org.as3commons.ui.layout.constants.Align;

public class FlowBox extends Container {

	protected var _LayoutComponent:HLayout;

	private var _hGap = 5;
	private var _vGap = 5;
	private var _hAlign = Align.CENTER;
	private var _vAlign = Align.TOP;

	public function FlowBox (p:DisplayObjectContainer = null) {
		super (p);
	}

	override protected function createAssets ():void {
		super.createAssets ();

		_LayoutComponent = new HLayout ();
//		_LayoutComponent.marginX = 0;
//		_LayoutComponent.marginY = 0;
//		_LayoutComponent.offsetX = 0;
//		_LayoutComponent.offsetY = 0;
//		_LayoutComponent.maxItemsPerRow = 0;
		_LayoutComponent.hGap = _hGap;
		_LayoutComponent.vGap = _vGap;
		_LayoutComponent.hAlign = _hAlign;
		_LayoutComponent.vAlign = _vAlign;
	}

	override public function addContent (value:IComponent):void {
		if (value is IComponent) {
			value.drawDirectly ();
			_LayoutComponent.add (value);
			content.addChild (DisplayObject (value));
		}
	}

	override public function layoutContent ():void {
		_LayoutComponent.minWidth = _width;
		_LayoutComponent.minHeight = _height;
		_LayoutComponent.maxContentWidth = _width;

		_LayoutComponent.layout (content);
	}

	public function set hGap (value):void {
		_LayoutComponent.hGap = value;
	}

	public function set vGap (value):void {
		_LayoutComponent.vGap = value;
	}

	public function set hAlign (value):void {
		_LayoutComponent.hAlign = value;
	}

	public function set vAlign (value):void {
		_LayoutComponent.vAlign = value;
	}
}

}
