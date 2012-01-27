/**
 * Copyright (c) 2012 - 2100 Sindney
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package bloom.brushes 
{
	import flash.text.TextFormat;
	
	import bloom.events.BrushEvent;
	
	/** 
	 * Dispatched when redraw is needed.
	 * @eventType bloom.events.BrushEvent
	 */
	[BrushEvent(name = "redraw", type = "bloom.events.BrushEvent")]
	
	/**
	 * TextBrush
	 * 
	 * @author sindney
	 */
	public class TextBrush extends Brush {
		
		private var _textFormat:TextFormat;
		
		public function TextBrush(font:String = "Verdana", size:int = 12, color:uint = 0x000000, bold:Boolean = false, italic:Boolean = false, underline:Boolean = false) {
			super();
			_textFormat = new TextFormat(font, size, color, bold, italic, underline);
		}
		
		/**
		 * Use this to make your changes up to date.
		 */
		override public function update():void {
			dispatchEvent(new BrushEvent("redraw"));
		}
		
		override public function clone():Brush {
			return new TextBrush(_textFormat.font, int(_textFormat.size), uint(_textFormat.color), Boolean(_textFormat.bold), Boolean(_textFormat.italic), Boolean(_textFormat.underline));
		}
		
		override public function destroy():void {
			_textFormat = null;
		}
		
		///////////////////////////////////
		// getter/setters
		///////////////////////////////////
		
		public function get textFormat():TextFormat {
			return _textFormat;
		}
		
		///////////////////////////////////
		// toString
		///////////////////////////////////
		
		public override function toString():String {
			return "[bloom.brushes.TextBrush]";
		}
	}

}