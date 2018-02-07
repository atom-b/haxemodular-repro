class CastingModule {

    public function new() {
    }

    public function intToInt() {
        trace("int to int...");
        var dynamicInt:Int = 10;
        var result = cast(dynamicInt, Int);
        trace("result: " + result);
    }

    public function dynamicToBool() {
        trace("dynamic to Bool...");
        var dynamicInt:Dynamic = true;
        var result = cast(dynamicInt, Bool);
        trace("result: " + result);
    }

    public function dynamicToFloat() {
        trace("dynamic to Float...");
        var dynamicFloat:Dynamic = 10.1;
        var result = cast(dynamicFloat, Float);
        trace("result: " + result);
    }

    public function dynamicToInt() {
        trace("dynamic to int...");
        var dynamicInt:Dynamic = 10;
        var result = cast(dynamicInt, Int);
        trace("result: " + result);
    }

    public function floatToInt() {
        trace("float to int...");
        var myFloat:Float = 10;
        var result = cast(myFloat, Int);
        trace("result: " + result);
    }

    public function stdDynamicToInt() {
        trace("Std.int(dynamic)...");
        var dynamicInt:Dynamic = 10;
        var result = Std.int(dynamicInt);
        trace("result: " + result);
    }

    public function dynamicToString() {
        trace("dynamic to string...");
        var dynamicString:Dynamic = "castme";
        var result = cast(dynamicString, String);
        trace("result: " + result);
    }
}