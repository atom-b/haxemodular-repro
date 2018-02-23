package;

import openfl.display.Sprite;
import CatModule;
import haxe.Constraints;

class Main extends Sprite {

	public function new () {
		super ();

		#if !no_modular
		Bundle.load(CatModule).then(function(_) {
			trace("CatModule loaded!");
            var cat = new CatModule();
            addChild (cat);
        });
		#else
		trace("no_modular specified");
        var cat = new CatModule();
        addChild (cat);
		#end
	}
}