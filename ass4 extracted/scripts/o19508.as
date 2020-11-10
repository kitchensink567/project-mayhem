package
{
   import flash.utils.Dictionary;
   
   public class o19508
   {
       
      
      private var o11416:Dictionary;
      
      private var o1165:Dictionary;
      
      public function o19508()
      {
         super();
         o11416 = new Dictionary();
         o11416[181] = "RIA_Trident";
         o11416[182] = "HIKS_M1000";
         o11416[183] = "TEMPLATE_WEAPON";
         o11416[184] = "PREM_PLANET_STORMER_LTD_EDITION";
         o11416[185] = "PREM_RONSON_WPX_FLAMETHROWER";
         o11416[186] = "PREM_HIKS_10";
         o11416[187] = "PREM_DONDERBUS";
         o11416[188] = "PREM_RIA_15_SE";
         o11416[189] = "PREM_TORMENT";
         o11416[190] = "CM_X-1_Furie";
         o11416[194] = "PREM_HANDKANONE";
         o11416[195] = "PREM_CM505_ALPHA_LTD_EDITION";
         o11416[196] = "PREM_HIKS_S4000";
         o11416[197] = "PREM_VITIROL";
         o11416[198] = "PREM_CM_000_KELVIN";
         o11416[199] = "PREM_RONSON_5X5";
         o11416[200] = "PREM_SUPERMARINE_ALPHA_LTD_EDITION";
         o11416[201] = "PREM_RIA_8A";
         o11416[202] = "PREM_CM_LASER_DRILL";
         o11416[203] = "PREM_CM_467";
         o11416[204] = "PREM_CM_352_QUASAR";
         o11416[205] = "PREM_RICOCHET";
         o11416[206] = "PREM_BAYONET";
         o11416[207] = "PREM_RIA_75";
         o11416[208] = "PREM_HIKS_888_CAW";
         o11416[211] = "PREM_ZERFALLEN";
         o11416[212] = "PREM_CM_PROTON_ARC";
         o1165 = new Dictionary();
         o1165[216] = "TEMPLATE_ARMOR";
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
      
      public function o14906(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o14200.o19505.o15894.o4848.isGuest)
         {
            return;
         }
         if(o11416[param1] != null)
         {
            _loc3_ = o14200.o19505.o15894.o4848.o12485;
            _loc2_ = "AwardedWeapon_" + o11416[param1];
            o8613.o6543(_loc3_,_loc2_,1,o17767(),2147483647);
         }
      }
      
      public function o4895(param1:int, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(o14200.o19505.o15894.o4848.isGuest)
         {
            return;
         }
         if(o11416[param1] != null)
         {
            _loc4_ = o14200.o19505.o15894.o4848.o12485;
            _loc3_ = "HasWeapon_" + o11416[param1];
            o8613.o6543(_loc4_,_loc3_,param2,o17767(),2147483647);
         }
      }
      
      public function o10660(param1:int, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(o14200.o19505.o15894.o4848.isGuest)
         {
            return;
         }
         if(o1165[param1] != null)
         {
            _loc4_ = o14200.o19505.o15894.o4848.o12485;
            _loc3_ = "HasArmor_" + o1165[param1];
            o8613.o6543(_loc4_,_loc3_,param2,o17767(),2147483647);
         }
      }
      
      private function o17767() : String
      {
         var _loc3_:Dictionary = o14200.o19505.data.o433.o6366();
         var _loc2_:String = o14200.o19505.o15894.o4848.o14996;
         var _loc1_:int = o14200.o19505.o115();
         return _loc1_.toString() + ":" + _loc2_ + ":" + o186(_loc3_);
      }
      
      public function o7000() : void
      {
         var _loc2_:int = 0;
         var _loc8_:int = 0;
         if(o14200.o19505.o15894.o4848.isGuest)
         {
            return;
         }
         var _loc5_:Dictionary = new Dictionary();
         var _loc11_:* = 0;
         var _loc10_:* = o11416;
         for(var _loc3_ in o11416)
         {
            _loc5_[_loc3_] = 0;
         }
         var _loc16_:int = 0;
         var _loc15_:* = o14200.o19505.data.o11400;
         for each(var _loc1_ in o14200.o19505.data.o11400)
         {
            if(_loc1_)
            {
               var _loc14_:int = 0;
               var _loc13_:* = _loc1_.o1819();
               for each(var _loc7_ in _loc1_.o1819())
               {
                  if(o11416[_loc7_.o10748] != null)
                  {
                     _loc11_ = _loc5_;
                     _loc10_ = _loc7_.o10748;
                     var _loc12_:* = Number(_loc11_[_loc10_]) + 1;
                     _loc11_[_loc10_] = _loc12_;
                  }
               }
               continue;
            }
         }
         var _loc18_:int = 0;
         var _loc17_:* = o11416;
         for(_loc3_ in o11416)
         {
            _loc2_ = _loc5_[_loc3_];
            if(_loc2_ > 0)
            {
               o4895(_loc3_,_loc2_);
            }
         }
         var _loc4_:Dictionary = new Dictionary();
         var _loc20_:int = 0;
         var _loc19_:* = o1165;
         for(var _loc6_ in o1165)
         {
            _loc4_[_loc6_] = 0;
         }
         var _loc24_:int = 0;
         var _loc23_:* = o14200.o19505.data.o11400;
         for each(_loc1_ in o14200.o19505.data.o11400)
         {
            if(_loc1_)
            {
               var _loc22_:int = 0;
               var _loc21_:* = _loc1_.o12203();
               for each(var _loc9_ in _loc1_.o12203())
               {
                  if(o1165[_loc9_.o15372] != null)
                  {
                     _loc11_ = _loc4_;
                     _loc10_ = _loc9_.o15372;
                     _loc12_ = Number(_loc11_[_loc10_]) + 1;
                     _loc11_[_loc10_] = _loc12_;
                  }
               }
               continue;
            }
         }
         var _loc26_:int = 0;
         var _loc25_:* = o1165;
         for(_loc6_ in o1165)
         {
            _loc8_ = _loc4_[_loc6_];
            if(_loc8_ > 0)
            {
               o10660(_loc6_,_loc8_);
            }
         }
      }
   }
}
