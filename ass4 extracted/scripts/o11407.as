package
{
   import flash.utils.Dictionary;
   
   public class o11407
   {
       
      
      public function o11407()
      {
         super();
      }
      
      private static function o8046(param1:String, param2:int) : void
      {
         if(o14200.o19505.o15894.o4848.isGuest)
         {
            return;
         }
         var _loc7_:String = o14200.o19505.o15894.o4848.o12485;
         var _loc6_:Dictionary = o14200.o19505.data.o433.o6366();
         var _loc4_:String = o14200.o19505.o15894.o4848.o14996;
         var _loc3_:int = o14200.o19505.o115();
         var _loc5_:String = _loc3_.toString() + ":" + _loc4_ + ":" + o186(_loc6_);
         o8613.o6543(_loc7_,param1,param2,_loc5_,2147483647);
      }
      
      public static function o186(param1:Dictionary) : String
      {
         var _loc3_:String = "";
         var _loc2_:Boolean = true;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for(var _loc4_ in param1)
         {
            if(_loc2_)
            {
               _loc2_ = false;
            }
            else
            {
               _loc3_ = _loc3_ + ",";
            }
            _loc3_ = _loc3_ + (_loc4_.toString() + "#" + (param1[_loc4_] as int).toString());
         }
         return _loc3_;
      }
      
      public static function o16003() : void
      {
         o8046("Crafted_Elite_Augment_Core",o14200.o19505.data.o6234);
      }
      
      public static function o18088() : void
      {
         o8046("Crafted_Weapon",o14200.o19505.data.o3811);
      }
      
      public static function o14077() : void
      {
         o8046("Crafted_Equipment",o14200.o19505.data.o13060);
      }
      
      public static function o3876() : void
      {
         o8046("Crafted_TotalCrafedItems",o14200.o19505.data.o7686);
      }
      
      public static function o2565() : void
      {
         o8046("Alloy_HitMaxCap",o13800.o15839().o19685);
      }
      
      public static function o14828(param1:int) : void
      {
         o8046("Nightmare_PlayingNightmareWithNoTickets",param1 < 1?1:param1);
      }
      
      public static function o17225(param1:int) : void
      {
         o8046("Gameplay_MaxLevelWithLowKills",param1 < 1?1:param1);
      }
      
      public static function o13129(param1:int) : void
      {
         o8046("Gameplay_EventLmsMaxTimeDifferenceViloated",param1);
      }
      
      public static function o14011(param1:int) : void
      {
         if(param1 < 3000000)
         {
            return;
         }
         o8046("Gameplay_AlloyOverSpecificAmount",param1);
      }
      
      public static function o15361(param1:int) : void
      {
         o8046("Gameplay_NegativeSasCashValue",param1);
      }
      
      public static function o9053(param1:int) : void
      {
         o8046("Gameplay_HasMorePremiumWeaponsThanBrought",param1);
      }
      
      public static function o13644(param1:int) : void
      {
         o8046("Gameplay_HasPremiumWeaponsThatAreNotPurchased",param1);
      }
   }
}
