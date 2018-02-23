package;

import openfl.display.Sprite;
import openfl.Assets;


class TraceModule extends Sprite {
    public function new(message:String = "nyancat!") {
        super();

        trace(message);
    }

    public static function TraceSomething(message:String) {
        trace(message);
    }
}