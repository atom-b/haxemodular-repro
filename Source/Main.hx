import CastingModule;

class Main {
  static public function main():Void {
    trace("dynamic int in main()...");
    var dynamicInt:Dynamic = 10;
    cast(dynamicInt, Int);
    trace("result: " + dynamicInt);

    #if !no_modular
    Bundle.load(CastingModule).then(function(_) {
      trace(_ + " loaded");
      var castingModule = new CastingModule();

      // succeed
      castingModule.dynamicToString();
      castingModule.stdDynamicToInt();

      // fail
      castingModule.intToInt();
      castingModule.dynamicToBool();
      castingModule.dynamicToFloat();
      castingModule.dynamicToInt();
      castingModule.floatToInt();
    });
    #else
    trace("no_modular specified, using non-modular CastingModule");
    var castingModule = new CastingModule();

    // succeed
    castingModule.dynamicToString();
    castingModule.stdDynamicToInt();
    castingModule.dynamicToBool();
    castingModule.dynamicToFloat();
    castingModule.dynamicToInt();
    castingModule.floatToInt();
    #end

  }
}