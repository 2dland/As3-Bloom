package {

import bloom.components.controls.Button;
import bloom.components.controls.ToggleButton;
import bloom.core.OmniCore;
import bloom.themes.blue.BlueTheme;
import bloom.themes.darkBasic.DarkBasicTheme;
import bloom.utils.ComponentUtils;

import com.demonsters.debugger.MonsterDebugger;

import flash.display.Sprite;
import flash.events.Event;

import theme_previewer.tabs.*;

public class Main extends Sprite {

	public function Main ():void {
		if (stage) init (); else addEventListener (Event.ADDED_TO_STAGE,init);
	}

	private function init (e:Event = null):void {
		removeEventListener (Event.ADDED_TO_STAGE,init);
		stage.showDefaultContextMenu = false;
		stage.scaleMode = "noScale";
		stage.align = "TL";

		OmniCore.init (stage,DarkBasicTheme);
//		OmniCore.init (stage,BlueTheme);

		MonsterDebugger.initialize (this);
		MonsterDebugger.trace (this,"Hello World!");


//		var butn:Button = new Button(this, "test icon");
//		var butn:ToggleButton = new ToggleButton(this, "test icon");
//		butn.icon = ComponentUtils.createTestIcon(100,100);
//		butn.icon = ComponentUtils.createTestIcon(10,10);
//		butn.width = 240;


//		var thing:TabContainers = new TabContainers ();
//		addChild (thing);

//		var thing:TabButtons = new TabButtons ();
//		addChild (thing);

		var thing:TabWindowTest = new TabWindowTest();
		addChild(thing);

//		var thing:TabScrollContainers = new TabScrollContainers();
//		addChild(thing);

//		var thing:TabSliders = new TabSliders ();
//		addChild (thing);

//		var thing:TitleBar = new TitleBar("Title Bar Title");
//		addChild(thing);

//		var thing:SortableList = new SortableList(this);
//		addChild(thing);
//		for (var i:int = 0; i < 10; i ++) {
//			thing.addContent (ComponentUtils.createIconButtonTest (200));
//		}
	}

}

}
