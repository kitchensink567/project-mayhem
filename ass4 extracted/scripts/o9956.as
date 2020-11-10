package
{
   public class o9956
   {
       
      
      private var o8596:o16123;
      
      private var o14948:o16123;
      
      private var o14665:o16123;
      
      private var o11641:o16123;
      
      private var o9257:o15787;
      
      private var o9818:o15787;
      
      private var o6451:o15787;
      
      private var o15264:o15787;
      
      private var o5275:o10411;
      
      private var o5371:o16123;
      
      public function o9956(param1:Object)
      {
         o8596 = new o16123(0);
         o14948 = new o16123(0);
         o14665 = new o16123(0);
         o11641 = new o16123(0);
         o9257 = new o15787(100);
         o9818 = new o15787(100);
         o6451 = new o15787(100);
         o15264 = new o15787(100);
         o5275 = new o10411(true);
         o5371 = new o16123(1);
         super();
         o3848(param1);
      }
      
      public function get o9633() : int
      {
         return o8596.value;
      }
      
      public function get o15533() : int
      {
         return o14948.value;
      }
      
      public function get o16663() : int
      {
         return o14665.value;
      }
      
      public function get o4008() : int
      {
         return o11641.value;
      }
      
      public function get o13205() : Number
      {
         return o9257.value;
      }
      
      public function get o6554() : Number
      {
         return o9818.value;
      }
      
      public function get o15321() : Number
      {
         return o6451.value;
      }
      
      public function get o4328() : Number
      {
         return o15264.value;
      }
      
      public function get o18326() : Boolean
      {
         return o5275.value;
      }
      
      public function get o2530() : int
      {
         return o5371.value;
      }
      
      public function set o9633(param1:int) : void
      {
         o8596.value = param1;
      }
      
      public function set o15533(param1:int) : void
      {
         o14948.value = param1;
      }
      
      public function set o16663(param1:int) : void
      {
         o14665.value = param1;
      }
      
      public function set o4008(param1:int) : void
      {
         o11641.value = param1;
      }
      
      public function set o13205(param1:Number) : void
      {
         o9257.value = param1;
      }
      
      public function set o6554(param1:Number) : void
      {
         o9818.value = param1;
      }
      
      public function set o15321(param1:Number) : void
      {
         o6451.value = param1;
      }
      
      public function set o4328(param1:Number) : void
      {
         o15264.value = param1;
      }
      
      public function set o18326(param1:Boolean) : void
      {
         o5275.value = param1;
      }
      
      public function set o2530(param1:int) : void
      {
         o5371.value = param1;
      }
      
      public function o3848(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.o13205 = o17485(o13205,param1,"health") as Number;
         this.o6554 = o17485(o6554,param1,"speed") as Number;
         this.o15321 = o17485(o15321,param1,"damage") as Number;
         this.o4328 = o17485(o4328,param1,"size") as Number;
         this.o18326 = o17485(o18326,param1,"affectDarkMinon") as Boolean;
         this.o2530 = o17485(o2530,param1,"minAvgLevelBeforeZombiesGetBuffed") as int;
         var _loc2_:Object = param1["eventPoints"];
         if(_loc2_)
         {
            this.o9633 = o17485(o9633,_loc2_,"normalValue") as int;
            this.o15533 = o17485(o15533,_loc2_,"normalEliteValue") as int;
            this.o16663 = o17485(o16663,_loc2_,"savageValue") as int;
            this.o4008 = o17485(o4008,_loc2_,"savageEliteValue") as int;
         }
      }
      
      private function o17485(param1:*, param2:Object, param3:String) : *
      {
         if(isNaN(param2[param3]) == false)
         {
            return param2[param3];
         }
         return param1;
      }
      
      public function o5948() : void
      {
         this.o13205 = this.o13205 / 100;
         this.o6554 = this.o6554 / 100;
         this.o15321 = this.o15321 / 100;
         this.o4328 = this.o4328 / 100;
      }
      
      public function o14951(param1:Boolean, param2:Boolean) : int
      {
         if(!param1 && !param2)
         {
            return o9633;
         }
         if(param1 && !param2)
         {
            return o15533;
         }
         if(!param1 && param2)
         {
            return o16663;
         }
         if(param1 && param2)
         {
            return o4008;
         }
         return 0;
      }
      
      public function o10001() : void
      {
         var _loc1_:* = null;
         if(o9633 != 0 || o15533 != 0 || o16663 != 0 || o4008 != 0)
         {
            trace("| [Points Value]");
            _loc1_ = "| ";
            if(o9633 > 0)
            {
               _loc1_ = _loc1_ + ("\tV1: " + o9633);
            }
            if(o15533 > 0)
            {
               _loc1_ = _loc1_ + ("\tV2: " + o15533);
            }
            if(o16663 > 0)
            {
               _loc1_ = _loc1_ + ("\tV3: " + o16663);
            }
            if(o4008 > 0)
            {
               _loc1_ = _loc1_ + ("\tV4: " + o4008);
            }
            trace(_loc1_);
         }
         trace("| [Scaler Values]");
         if(o13205 != 1)
         {
            trace("| Scale Health: \t" + Math.round(o13205 * 100));
         }
         if(o6554 != 1)
         {
            trace("| Scale Speed: \t\t" + Math.round(o6554 * 100));
         }
         if(o15321 != 1)
         {
            trace("| Scale Damage: \t" + Math.round(o15321 * 100) + " (Ranged and Melee)");
         }
         if(o4328 != 1)
         {
            trace("| Scale Size: \t \t" + Math.round(o4328 * 100));
         }
         trace("| [Other Data]");
         if(o18326 != false)
         {
            trace("| Affect Dark Minion: " + o18326);
         }
         if(o2530 != 1)
         {
            trace("| Min Avg Level Before Zombies Get Buffed: " + o2530);
         }
      }
      
      public function o19115() : void
      {
         this.o8596 = null;
         this.o14948 = null;
         this.o14665 = null;
         this.o11641 = null;
         this.o9257 = null;
         this.o9818 = null;
         this.o6451 = null;
         this.o15264 = null;
         this.o5275 = null;
         this.o5371 = null;
      }
   }
}
