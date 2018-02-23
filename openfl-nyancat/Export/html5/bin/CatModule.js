(function ($hx_exports, $global) { "use-strict";
var $s = $global.$hx_scope;
var require = (function(r){ return function require(m) { return r[m]; } })($s.__registry__);
var openfl_display_Sprite = $s.openfl_display_Sprite, haxe_Log = $s.haxe_Log, openfl_utils_Assets = $s.openfl_utils_Assets, $hxClasses = $s.$hxClasses, $extend = $s.$extend;
$hx_exports["lime"] = $hx_exports["lime"] || {};
var CatModule = function() {
	openfl_display_Sprite.call(this);
	haxe_Log.trace("I'm a cat!",{ fileName : "CatModule.hx", lineNumber : 11, className : "CatModule", methodName : "new"});
	var cat = openfl_utils_Assets.getMovieClip("library:NyanCatAnimation");
	this.addChild(cat);
};
$hxClasses["CatModule"] = CatModule;
CatModule.__name__ = ["CatModule"];
CatModule.__super__ = openfl_display_Sprite;
CatModule.prototype = $extend(openfl_display_Sprite.prototype,{
	__class__: CatModule
});
var $_, $fid = 0;
var __map_reserved = {}
if(typeof console == "undefined") {
	console = {}
}
if(console.log == null) {
	console.log = function() {
	};
}
if(typeof(window) != "undefined") {
	openfl__$internal_renderer_canvas_CanvasGraphics.hitTestCanvas = window.document.createElement("canvas");
	openfl__$internal_renderer_canvas_CanvasGraphics.hitTestContext = openfl__$internal_renderer_canvas_CanvasGraphics.hitTestCanvas.getContext("2d");
}
$s.CatModule = CatModule; 
})(typeof exports != "undefined" ? exports : typeof window != "undefined" ? window : typeof self != "undefined" ? self : this, typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);
