(function ($hx_exports, $global) { "use-strict";
var $s = $global.$hx_scope;
var require = (function(r){ return function require(m) { return r[m]; } })($s.__registry__);
var js_Boot = $s.js_Boot, Int = $s.Int, Bool = $s.Bool, Float = $s.Float;
var CastingModule = function() {
};
CastingModule.__name__ = true;
CastingModule.prototype = {
	intToInt: function() {
		console.log("int to int...");
		var dynamicInt = 10;
		var result = js_Boot.__cast(dynamicInt , Int);
		console.log("result: " + result);
	}
	,dynamicToBool: function() {
		console.log("dynamic to Bool...");
		var dynamicInt = true;
		var result = js_Boot.__cast(dynamicInt , Bool);
		console.log("result: " + (result == null ? "null" : "" + result));
	}
	,dynamicToFloat: function() {
		console.log("dynamic to Float...");
		var dynamicFloat = 10.1;
		var result = js_Boot.__cast(dynamicFloat , Float);
		console.log("result: " + result);
	}
	,dynamicToInt: function() {
		console.log("dynamic to int...");
		var dynamicInt = 10;
		var result = js_Boot.__cast(dynamicInt , Int);
		console.log("result: " + result);
	}
	,floatToInt: function() {
		console.log("float to int...");
		var myFloat = 10;
		var result = js_Boot.__cast(myFloat , Int);
		console.log("result: " + result);
	}
	,stdDynamicToInt: function() {
		console.log("Std.int(dynamic)...");
		var dynamicInt = 10;
		var result = dynamicInt | 0;
		console.log("result: " + result);
	}
	,dynamicToString: function() {
		console.log("dynamic to string...");
		var dynamicString = "castme";
		var result = js_Boot.__cast(dynamicString , String);
		console.log("result: " + result);
	}
	,__class__: CastingModule
};
var __map_reserved = {}
$s.CastingModule = CastingModule; 
})(typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this, typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);
