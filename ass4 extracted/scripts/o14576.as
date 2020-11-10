package
{
   public class o14576
   {
      
      public static var o11078:Number;
      
      public static var o19002:Number;
      
      public static var o11754:int;
      
      public static var o16633:int;
      
      public static var o19970:int;
      
      public static var o1341:int;
      
      public static var o17589:int;
      
      public static var o11605:int;
      
      private static var o11217:o15787 = new o15787(5);
      
      private static var o8368:o15787 = new o15787(5);
      
      private static var o19781:o15787 = new o15787(20);
      
      private static var o12326:o15787 = new o15787(4);
      
      private static var o13193:o16123 = new o16123(35);
      
      private static var o15014:o15787 = new o15787(7200000);
      
      private static var o2521:o15787 = new o15787(3);
      
      private static var o20607:o16123 = new o16123(38);
      
      public static var o19800:o16123 = new o16123(15);
      
      public static var o14424:Vector.<o5106> = new Vector.<o5106>();
      
      private static var o11018:o16123 = new o16123(5);
      
      private static const o4283:Number = 1.0;
       
      
      public function o14576()
      {
         super();
      }
      
      public static function get o17763() : Number
      {
         return o11217.value;
      }
      
      public static function get o17749() : Number
      {
         return o8368.value;
      }
      
      public static function get o18420() : Number
      {
         return o19781.value;
      }
      
      public static function get o20288() : Number
      {
         return o12326.value;
      }
      
      public static function get o2846() : int
      {
         return o13193.value;
      }
      
      public static function get o3298() : Number
      {
         return o15014.value;
      }
      
      public static function get o17270() : Number
      {
         return o2521.value;
      }
      
      public static function get o8957() : int
      {
         return o20607.value;
      }
      
      public static function get o19436() : int
      {
         return o19800.value;
      }
      
      public static function get o8340() : int
      {
         return o11018.value;
      }
      
      public static function o2863(param1:o2693, param2:String) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         o11078 = param1.o17521(param2 + "properties.percentChanceEliteSpawnAsNightmare");
         o19002 = param1.o17521(param2 + "properties.baseBoseHPIncreaseForSpecificBosses.value");
         o11754 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.savageEliteRegurgitator");
         o16633 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.savageEliteZombieMech");
         o19970 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.savageEliteDevastator");
         o1341 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.savageEliteNecrosis");
         o17589 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.savageEliteWicker");
         o11605 = param1.o3554(param2 + "gameMode.bossStrongboxDropCount.default");
         o11217.value = param1.o17521(param2 + "properties.cashDropMoneyMultiplier");
         o8368.value = param1.o17521(param2 + "properties.strongboxQualtityRollBonus") / 100;
         o19781.value = param1.o17521(param2 + "properties.consumableRollBonus") / 100;
         o12326.value = param1.o3554(param2 + "properties.baseRatingForLootBonusDiv");
         o13193.value = param1.o3554(param2 + "gameMode.unlockLevel");
         o2521.value = param1.o17521(param2 + "gameMode.powerUpCostMultiplier");
         o15014.value = param1.o17521(param2 + "gameMode.unlockNightmareCooldown") * 1000;
         o20607.value = param1.o3554(param2 + "gameMode.tryNighmareDialogLevel");
         var _loc3_:int = param1.o3554(param2 + "enemyBonus");
         o14424 = new Vector.<o5106>();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = new o5106();
            _loc5_.o2863(param1,param2 + "enemyBonus." + _loc4_.toString());
            o14424.push(_loc5_);
            _loc4_++;
         }
      }
      
      public static function o1375(param1:int, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:int = 0;
         var _loc5_:* = o14424;
         for each(var _loc4_ in o14424)
         {
            if(_loc4_.o9899 == param1 && _loc4_.o4084 == param2 && _loc4_.o16277 == param3)
            {
               return _loc4_.o4207 + o17749;
            }
         }
         return o17749;
      }
   }
}
