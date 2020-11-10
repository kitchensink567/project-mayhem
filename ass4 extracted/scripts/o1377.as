package
{
   public class o1377
   {
       
      
      private var o16535:o15787;
      
      private var o7820:o15787;
      
      private var o10818:o15787;
      
      private var o3103:o15787;
      
      private var o20496:o15787;
      
      private var o12863:o15787;
      
      private var o3122:o10411;
      
      private var o5025:o15787;
      
      private var o7413:o15787;
      
      private var o19150:o15787;
      
      private var o572:o15787;
      
      private var o15758:o15787;
      
      private var o3481:o15787;
      
      private var o13166:o15787;
      
      private var o1310:o15787;
      
      public function o1377()
      {
         o16535 = new o15787(0);
         o7820 = new o15787(0);
         o10818 = new o15787(0);
         o3103 = new o15787(0);
         o20496 = new o15787(0);
         o12863 = new o15787(0);
         o3122 = new o10411(false);
         o5025 = new o15787(0);
         o7413 = new o15787(0);
         o19150 = new o15787(0);
         o572 = new o15787(0);
         o15758 = new o15787(0);
         o3481 = new o15787(0);
         o13166 = new o15787(0);
         o1310 = new o15787(0);
         super();
      }
      
      public static function o9918(param1:Vector.<int>) : o1377
      {
         var _loc2_:o1377 = new o1377();
         _loc2_.reset();
         _loc2_.o9543(param1);
         return _loc2_;
      }
      
      public function reset() : void
      {
         o13472 = 0;
         o20926 = 0;
         o2386 = 0;
         o1744 = 0;
         o18369 = 0;
         o15296 = 0;
         o7830 = false;
         o5866 = 0;
         o2097 = 0;
         o566 = 0;
         o15433 = 0;
         o6128 = 0;
         o17340 = 0;
         o14256 = 0;
         o5615 = 0;
      }
      
      private function o12267(param1:Number) : String
      {
         return Math.round(param1 * 100).toString() + "%";
      }
      
      private function o3565(param1:String, param2:Number, param3:Number, param4:Number) : String
      {
         var _loc5_:* = 0.001;
         var _loc6_:* = Math.abs(param2 - (param3 + param4)) < _loc5_;
         if(_loc6_ == false)
         {
            return "ERR: " + param1 + ": " + o12267(param2) + "(" + o12267(param3) + " + team:" + o12267(param4) + ")\n";
         }
         if(param2 <= 0)
         {
            return "";
         }
         if(param4 < _loc5_)
         {
            return param1 + ": " + o12267(param2) + "\n";
         }
         return param1 + ": " + o12267(param2) + "(" + o12267(param3) + " + team:" + o12267(param4) + ")\n";
      }
      
      public function o1867() : String
      {
         var _loc1_:String = "";
         _loc1_ = _loc1_ + o3565("Heat Damage Immunity",o14158,o13472,o1744);
         _loc1_ = _loc1_ + o3565("Damage Bonus",o5014,o20926,o18369);
         _loc1_ = _loc1_ + o3565("Crit Chance",o19483,o2386,o15296);
         _loc1_ = _loc1_ + o3565("Damage Immunity",o7022,o5866,o15433);
         _loc1_ = _loc1_ + o3565("Health Gain From Med kits",o10525,o2097,o6128);
         _loc1_ = _loc1_ + o3565("Health Regen Rate",o3792,o566,o17340);
         _loc1_ = _loc1_ + o3565("Increased Strongbox Drop Chance",o13362,o14256,o5615);
         if(o7830)
         {
            _loc1_ = _loc1_ + "Increased Strongbox Quality";
         }
         return _loc1_;
      }
      
      public function o5567(param1:Vector.<int>) : void
      {
         var _loc3_:* = null;
         var _loc5_:o16253 = o4519.o8116.profileData.o5292.o11370;
         var _loc9_:int = 0;
         var _loc8_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_ = _loc5_.o15415(_loc2_);
            var _loc7_:int = 0;
            var _loc6_:* = _loc3_.o15736;
            for(var _loc4_ in _loc3_.o15736)
            {
               switch(int(_loc4_))
               {
                  case 0:
                     this.o13472 = _loc3_.o15736[_loc4_];
                     continue;
                  case 1:
                     this.o20926 = _loc3_.o15736[_loc4_];
                     continue;
                  case 2:
                     this.o2386 = _loc3_.o15736[_loc4_];
                     continue;
                  case 3:
                     this.o14256 = _loc3_.o15736[_loc4_];
                     continue;
                  case 4:
                     this.o7830 = true;
                     continue;
                  case 5:
                     this.o5866 = _loc3_.o15736[_loc4_];
                     continue;
                  case 6:
                     this.o2097 = _loc3_.o15736[_loc4_];
                     continue;
                  case 7:
                     this.o566 = _loc3_.o15736[_loc4_];
                     continue;
               }
            }
         }
      }
      
      public function o9543(param1:Vector.<int>) : void
      {
         var _loc4_:* = null;
         var _loc2_:Boolean = o4519.o8116.profileData.o202.o9381();
         if(_loc2_ == false)
         {
            return;
         }
         var _loc6_:o16253 = o4519.o8116.profileData.o5292.o11370;
         var _loc10_:int = 0;
         var _loc9_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc4_ = _loc6_.o15415(_loc3_);
            var _loc8_:int = 0;
            var _loc7_:* = _loc4_.o15938;
            for(var _loc5_ in _loc4_.o15938)
            {
               switch(int(_loc5_))
               {
                  case 0:
                     this.o1744 = this.o1744 + _loc4_.o15938[_loc5_];
                     continue;
                  case 1:
                     this.o18369 = this.o18369 + _loc4_.o15938[_loc5_];
                     continue;
                  case 2:
                     this.o15296 = this.o15296 + _loc4_.o15938[_loc5_];
                     continue;
                  case 3:
                     this.o5615 = this.o5615 + _loc4_.o15938[_loc5_];
                     continue;
                  default:
                     continue;
                  case 5:
                     this.o15433 = this.o15433 + _loc4_.o15938[_loc5_];
                     continue;
                  case 6:
                     this.o6128 = this.o6128 + _loc4_.o15938[_loc5_];
                     continue;
                  case 7:
                     this.o17340 = this.o17340 + _loc4_.o15938[_loc5_];
                     continue;
               }
            }
         }
      }
      
      public function get o14158() : Number
      {
         return o16535.value + o7820.value;
      }
      
      public function get o5014() : Number
      {
         return o10818.value + o3103.value;
      }
      
      public function get o19483() : Number
      {
         return o20496.value + o12863.value;
      }
      
      public function get o7830() : Boolean
      {
         return o3122.value;
      }
      
      public function get o7022() : Number
      {
         return o5025.value + o7413.value;
      }
      
      public function get o10525() : Number
      {
         return o19150.value + o572.value;
      }
      
      public function get o3792() : Number
      {
         return o15758.value + o3481.value;
      }
      
      public function get o13362() : Number
      {
         return o13166.value + o1310.value;
      }
      
      public function get o13472() : Number
      {
         return o16535.value;
      }
      
      public function get o20926() : Number
      {
         return o10818.value;
      }
      
      public function get o2386() : Number
      {
         return o20496.value;
      }
      
      public function get o5866() : Number
      {
         return o5025.value;
      }
      
      public function get o2097() : Number
      {
         return o19150.value;
      }
      
      public function get o566() : Number
      {
         return o15758.value;
      }
      
      public function get o14256() : Number
      {
         return o13166.value;
      }
      
      public function get o1744() : Number
      {
         return o7820.value;
      }
      
      public function get o18369() : Number
      {
         return o3103.value;
      }
      
      public function get o15296() : Number
      {
         return o12863.value;
      }
      
      public function get o15433() : Number
      {
         return o7413.value;
      }
      
      public function get o6128() : Number
      {
         return o572.value;
      }
      
      public function get o17340() : Number
      {
         return o3481.value;
      }
      
      public function get o5615() : Number
      {
         return o1310.value;
      }
      
      public function set o13472(param1:Number) : void
      {
         o16535.value = param1;
      }
      
      public function set o1744(param1:Number) : void
      {
         o7820.value = param1;
      }
      
      public function set o20926(param1:Number) : void
      {
         o10818.value = param1;
      }
      
      public function set o18369(param1:Number) : void
      {
         o3103.value = param1;
      }
      
      public function set o2386(param1:Number) : void
      {
         o20496.value = param1;
      }
      
      public function set o15296(param1:Number) : void
      {
         o12863.value = param1;
      }
      
      public function set o7830(param1:Boolean) : void
      {
         o3122.value = param1;
      }
      
      public function set o5866(param1:Number) : void
      {
         o5025.value = param1;
      }
      
      public function set o15433(param1:Number) : void
      {
         o7413.value = param1;
      }
      
      public function set o2097(param1:Number) : void
      {
         o19150.value = param1;
      }
      
      public function set o6128(param1:Number) : void
      {
         o572.value = param1;
      }
      
      public function set o566(param1:Number) : void
      {
         o15758.value = param1;
      }
      
      public function set o17340(param1:Number) : void
      {
         o3481.value = param1;
      }
      
      public function set o14256(param1:Number) : void
      {
         o13166.value = param1;
      }
      
      public function set o5615(param1:Number) : void
      {
         o1310.value = param1;
      }
   }
}
