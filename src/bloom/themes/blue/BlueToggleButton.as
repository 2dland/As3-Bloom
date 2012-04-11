package bloom.themes.blue {

import bloom.core.ComponentConstants;
import bloom.style.brush.ColorBrush;
import bloom.style.components.controls.ButtonStyle;
import bloom.themes.darkBasic.*;
import bloom.utils.ColorUtils;

/**
 * DarkToggleButton
 */
public class BlueToggleButton extends ButtonStyle {

	public function BlueToggleButton () {

		var backgroundColors:Vector.<uint> = new Vector.<uint> (4,true);
		backgroundColors[ComponentConstants.ACTIVE] = ColorUtils.BLACK;
		backgroundColors[ComponentConstants.OVER] = 0x303030;
		backgroundColors[ComponentConstants.ACTIVATED] = ColorUtils.RED;
		backgroundColors[ComponentConstants.DISABLED] = ColorUtils.LIGHT_GRAY;
		background = new ColorBrush (backgroundColors);

		var textBrush:DarkLabel = new DarkLabel ();
		buttonText = textBrush.textStyleBrush;

		defaultWidth = 120;
		defaultHeight = 40;
	}

	///////////////////////////////////
	// toString
	///////////////////////////////////

	override public function toString ():String {
		return "[bloom.styles.DarkToggleButton]";
	}

}

}
