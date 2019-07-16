(function($) {
	$.fn.selection = function() {
		var s, e, range, stored_range;
		if (this[0].selectionStart == undefined) {
			var selection = document.selection;
			if (this[0].tagName.toLowerCase() != "textarea") {
				var val = this.val(), range = selection.createRange()
						.duplicate();
				range.moveEnd("character", val.length);
				s = (range.text == "" ? val.length : val
						.lastIndexOf(range.text));
				range = selection.createRange().duplicate();
				range.moveStart("character", -val.length);
				e = range.text.length;
			} else {
				range = selection.createRange();
				stored_range = range.duplicate();
				stored_range.moveToElementText(this[0]);
				stored_range.setEndPoint('EndToEnd', range);
				s = stored_range.text.length - range.text.length;
				e = s + range.text.length;
			}
		} else {
			s = this[0].selectionStart;
			e = this[0].selectionEnd;
		}
		var te = this[0].value.substring(s, e);
		return {
			start : s,
			end : e,
			text : te
		}
	};
})(jQuery);

function getBit(str) {// 获得字符长度,一个中文占2位
	return str.replace(/[^\x00-\xff]/g, '..').length;
}