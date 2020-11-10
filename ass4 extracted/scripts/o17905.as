package
{
   public class o17905
   {
       
      
      private var o16593:o16123;
      
      private var o11265:o16123;
      
      public var o20829:Boolean = false;
      
      private var o19103:o16123;
      
      private var o8603:o16123;
      
      private var o15606:o16123;
      
      private var o8077:o16123;
      
      private var o12323:o16123;
      
      private var o12771:o16123;
      
      private var o2659:o16123;
      
      private var o20236:o16123;
      
      private var o13820:o16123;
      
      private var o2298:o16123;
      
      public function o17905()
      {
         o16593 = new o16123(0);
         o11265 = new o16123(0);
         o19103 = new o16123(0);
         o8603 = new o16123(0);
         o15606 = new o16123(0);
         o8077 = new o16123(0);
         o12323 = new o16123(0);
         o12771 = new o16123(0);
         o2659 = new o16123(0);
         o20236 = new o16123(0);
         o13820 = new o16123(0);
         o2298 = new o16123(0);
         super();
      }
      
      public function get level() : int
      {
         return o16593.value;
      }
      
      public function get o13439() : int
      {
         return o11265.value;
      }
      
      public function get o18875() : int
      {
         return o19103.value;
      }
      
      public function get o3173() : int
      {
         return o8603.value;
      }
      
      public function get o1372() : int
      {
         return o15606.value;
      }
      
      public function get o7566() : int
      {
         return o8077.value;
      }
      
      public function get o7136() : int
      {
         return o12323.value;
      }
      
      public function get o1900() : int
      {
         return o12771.value;
      }
      
      public function set o1900(param1:int) : void
      {
         o12771.value = param1;
      }
      
      public function get o12131() : int
      {
         return o2659.value;
      }
      
      public function set o12131(param1:int) : void
      {
         o2659.value = param1;
      }
      
      public function get o2754() : int
      {
         return o20236.value;
      }
      
      public function get o5532() : int
      {
         return o13820.value;
      }
      
      public function get o8061() : int
      {
         return o2298.value;
      }
      
      public function o20811() : void
      {
         o16593.value = 2147483647;
         o19103.value = 2147483647;
         o8603.value = 2147483647;
         o11265.value = 15;
         this.o20829 = true;
      }
      
      public function init(param1:o2693, param2:String, param3:int, param4:o17905) : void
      {
         param2 = param2 + ".";
         o16593.value = param1.o3554(param2 + "level");
         o19103.value = param1.o3554(param2 + "xp");
         o15606.value = param1.o3554(param2 + "sasCashPacks");
         o8077.value = param1.o3554(param2 + "hdAmmoClips");
         o12323.value = param1.o3554(param2 + "blackStrongboxes");
         o12771.value = param1.o3554(param2 + "thuliumStrongboxes");
         o2659.value = param1.o3554(param2 + "nantoniumStrongboxes");
         o20236.value = param1.o3554(param2 + "eliteAugmentCores");
         o13820.value = param1.o3554(param2 + "blackKeys");
         o2298.value = param1.o3554(param2 + "skillPoints");
         o11265.value = param3 + 1;
         if(param4 == null)
         {
            o8603.value = o18875;
         }
         else
         {
            o8603.value = o18875 - param4.o18875;
         }
      }
      
      private function o19031(param1:String, param2:int, param3:String, param4:String) : String
      {
         if(param2 == 0)
         {
            return param1;
         }
         if(param1.length > 0)
         {
            param1 = param1 + "\n";
         }
         param1 = param1 + (param2 == 1?param3.replace("#QTY#","1x"):param4.replace("#QTY#",param2.toString() + "x"));
         return param1;
      }
      
      public function o14733() : String
      {
         var _loc1_:String = "";
         _loc1_ = o19031(_loc1_,o1372,"#QTY# sas cash pack","#QTY# sas cash packs");
         _loc1_ = o19031(_loc1_,o7566,"#QTY# clip of high damage ammo for each ammo type you have a gun for","#QTY# clips of high damage ammo for each ammo type you have a gun for");
         _loc1_ = o19031(_loc1_,o7136,"#QTY# black strongbox","#QTY# black strongboxes");
         _loc1_ = o19031(_loc1_,o1900,"#QTY# thulium strongbox","#QTY# thulium strongboxes");
         _loc1_ = o19031(_loc1_,o12131,"#QTY# nantonium strongbox","#QTY# nantonium strongboxes");
         _loc1_ = o19031(_loc1_,o2754,"#QTY# elite augment core","#QTY# elite augment cores");
         _loc1_ = o19031(_loc1_,o5532,"#QTY# black key","#QTY# black keys");
         _loc1_ = o19031(_loc1_,o8061,"#QTY# skill point","#QTY# skill points");
         return _loc1_;
      }
      
      public function o2904() : void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc1_:o14200 = o4519.o8116.profileData;
         var _loc4_:o9145 = _loc1_.o7923;
         _loc4_.o20170 = _loc4_.o20170 + _loc1_.o5292.o3838() * o1372;
         if(o7566 > 0)
         {
            var _loc7_:int = 0;
            var _loc6_:* = _loc4_.o1819();
            for each(var _loc3_ in _loc4_.o1819())
            {
               _loc2_ = _loc4_.o17638.o8567(_loc3_);
               if(_loc3_.o2752.o6365 == 9)
               {
                  _loc3_ = _loc3_;
               }
               _loc2_.o17383 = _loc2_.o17383 + _loc3_.o11344 * o7566;
            }
         }
         _loc4_.o18104 = _loc4_.o18104 + o2754;
         _loc4_.o201(o7136);
         _loc4_.o5532 = _loc4_.o5532 + o5532;
         if(o1900 > 0 || o12131 > 0)
         {
            _loc5_ = 0;
            _loc1_.o202.o11362();
            _loc5_ = 0;
            while(_loc5_ < o1900)
            {
               _loc1_.o202.o11612(o4189.o4718(o4189.o15243));
               _loc5_++;
            }
            _loc5_ = 0;
            while(_loc5_ < o12131)
            {
               _loc1_.o202.o11612(o4189.o4718(o4189.o1897));
               _loc5_++;
            }
            _loc1_.o202.o19266(_loc1_.o7923);
         }
         _loc1_.saveData();
      }
   }
}
