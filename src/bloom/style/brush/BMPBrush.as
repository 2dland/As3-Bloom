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
package bloom.style.brush {

import bloom.core.Component;
import bloom.core.ObjectBase;
import bloom.core.ScaleBitmap;

import flash.display.Bitmap;

public class BMPBrush extends Brush {

	public var bitmap:Vector.<Bitmap>;

	public function BMPBrush (bitmap:Vector.<Bitmap> = null) {
		this.bitmap = bitmap;
	}

	override public function update (state:int,value:*,args:ObjectBase = null):void {
		var bitmap:Bitmap = Bitmap (bitmap[state]);

		var _value:Component = value as Component;
		_value.graphics.clear ();
		_value.graphics.beginBitmapFill (bitmap.bitmapData.clone (),null,false,true);
		_value.graphics.drawRect (0,0,args.width,args.height);
		_value.graphics.endFill ();
	}

	///////////////////////////////////
	// Dispose
	///////////////////////////////////

	override public function dispose ():void {
		for each(var image:ScaleBitmap in bitmap) {
			image.dispose ();
			image = null;
		}
		bitmap = null;
	}

	///////////////////////////////////
	// toString
	///////////////////////////////////

	override public function toString ():String {
		return "[bloom.brushes.BMPBrush]";
	}

}

}
