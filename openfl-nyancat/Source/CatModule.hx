package;

import openfl.display.Sprite;
import openfl.Assets;

class CatModule extends Sprite {

    public function new () {
        super();

        trace("I'm a cat!");
        var cat = Assets.getMovieClip ("library:NyanCatAnimation");
        addChild (cat);
    }
}