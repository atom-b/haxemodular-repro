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

      // All of these fail
      castingModule.stdDynamicToInt();
      castingModule.intToInt();
      castingModule.dynamicToBool();
      castingModule.dynamicToFloat();
      castingModule.dynamicToInt();
      castingModule.floatToInt();
    });
    #else
    trace("no_modular specified, using non-modular CastingModule");
    var castingModule = new CastingModule();
    castingModule.stdDynamicToInt();
    castingModule.intToInt();
    castingModule.dynamicToBool();
    castingModule.dynamicToFloat();
    castingModule.dynamicToInt();
    castingModule.floatToInt();
    #end

  }
}