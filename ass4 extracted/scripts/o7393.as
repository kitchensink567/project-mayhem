package
{
   public class o7393 extends o15408
   {
       
      
      private var o19419:o14200;
      
      private var o8461:Boolean = true;
      
      public function o7393(param1:o14200, param2:Boolean)
      {
         super();
         this.o19419 = param1;
         this.o16028 = param2;
      }
      
      public function get o16028() : Boolean
      {
         return o8461;
      }
      
      public function set o16028(param1:Boolean) : void
      {
         o8461 = param1;
      }
      
      override protected function o11048() : void
      {
         o8828();
      }
      
      private function o8828() : void
      {
         if(o19419.o7923 == null)
         {
            o16028 = true;
         }
         else
         {
            o16028 = o1477 == false;
         }
         o4227();
         o19570();
         o11454();
      }
      
      private function o4227() : void
      {
         var _loc8_:int = 0;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc10_:* = null;
         var _loc6_:int = 0;
         var _loc11_:* = undefined;
         var _loc1_:int = 0;
         var _loc9_:o2693 = o19419.o19552;
         var _loc7_:String = "enemy.zombieInfo";
         var _loc2_:int = _loc9_.o3554(_loc7_);
         _loc7_ = _loc7_ + ".";
         _loc8_ = 0;
         while(_loc8_ < _loc2_)
         {
            _loc3_ = _loc7_ + _loc8_.toString() + ".";
            _loc5_ = _loc9_.o9009(_loc3_ + "heading");
            _loc4_ = _loc9_.o9009(_loc3_ + "details");
            _loc10_ = _loc9_.o9009(_loc3_ + "iconFrameLabel");
            _loc6_ = _loc9_.o3554(_loc3_ + "zombieId");
            _loc11_ = new Vector.<int>();
            if(o16028)
            {
               _loc1_ = 0;
               while(_loc1_ < o16819.o8592)
               {
                  _loc11_.push(o19419.o11453.o226(_loc6_,_loc1_));
                  _loc1_++;
               }
            }
            else
            {
               _loc1_ = 0;
               while(_loc1_ < o16819.o8592)
               {
                  _loc11_.push(o19419.o7923.o226(_loc6_,_loc1_));
                  _loc1_++;
               }
            }
            this.o16826(_loc5_,_loc4_,_loc10_,_loc11_);
            _loc8_++;
         }
      }
      
      private function o19570() : void
      {
         var _loc7_:int = 0;
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc9_:* = null;
         var _loc5_:int = 0;
         var _loc8_:o2693 = o19419.o19552;
         var _loc6_:String = "enemy.bossInfo";
         var _loc1_:int = _loc8_.o3554(_loc6_);
         _loc6_ = _loc6_ + ".";
         _loc7_ = 0;
         while(_loc7_ < _loc1_)
         {
            _loc2_ = _loc6_ + _loc7_.toString() + ".";
            _loc4_ = _loc8_.o9009(_loc2_ + "heading");
            _loc3_ = _loc8_.o9009(_loc2_ + "details");
            _loc9_ = _loc8_.o9009(_loc2_ + "iconFrameLabel");
            _loc5_ = _loc8_.o3554(_loc2_ + "zombieId");
            if(o16028)
            {
               this.o5160(_loc4_,_loc3_,_loc9_,o19419.o11453.o226(_loc5_,0),o19419.o11453.o226(_loc5_,1));
            }
            else
            {
               this.o5160(_loc4_,_loc3_,_loc9_,o19419.o7923.o226(_loc5_,0),o19419.o7923.o226(_loc5_,1));
            }
            _loc7_++;
         }
      }
      
      private function o11454() : void
      {
         var _loc7_:int = 0;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc2_:int = 0;
         o13013();
         var _loc8_:o2693 = o19419.o19552;
         var _loc6_:String = "enemy.eliteInfo";
         var _loc1_:int = _loc8_.o3554(_loc6_);
         _loc6_ = _loc6_ + ".";
         _loc7_ = 0;
         while(_loc7_ < _loc1_)
         {
            _loc3_ = _loc6_ + _loc7_.toString() + ".";
            _loc5_ = _loc8_.o9009(_loc3_ + "heading");
            _loc4_ = _loc8_.o9009(_loc3_ + "details");
            _loc9_ = _loc8_.o9009(_loc3_ + "iconFrameLabel");
            _loc2_ = _loc8_.o3554(_loc3_ + "eliteId");
            if(o16028)
            {
               this.o2167(_loc7_,_loc5_,_loc4_,_loc9_,o19419.o11453.o6688(_loc2_) == 0);
            }
            else
            {
               this.o2167(_loc7_,_loc5_,_loc4_,_loc9_,o19419.o7923.o6688(_loc2_) == 0);
            }
            _loc7_++;
         }
      }
      
      private function o3109() : void
      {
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         super.o13640();
      }
   }
}
