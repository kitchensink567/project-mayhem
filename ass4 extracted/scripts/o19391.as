package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class o19391 extends o11979
   {
       
      
      private var o19419:o14200;
      
      public function o19391(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      private function o1259(param1:Number, param2:int) : String
      {
         var _loc4_:* = param1;
         var _loc3_:Number = Math.round(o17517.o20042(_loc4_) * 100 * 10) / 10;
         return o16724.o20031(_loc4_) + " (" + _loc3_ + "% Less Dmg) ";
      }
      
      override protected function o20493(param1:MouseEvent) : void
      {
         var _loc2_:o9555 = this.o1878 as o9555;
         _loc2_.o16989.o9171(false);
      }
      
      override public function o16489() : void
      {
         if(o19419.o7923 == null)
         {
            return;
         }
         super.o16489();
         var _loc2_:o9145 = o19419.o7923;
         var _loc19_:o4117 = o4117.o18521(o19419,_loc2_);
         var _loc7_:Vector.<o1253> = o19419.o7923.o420;
         var _loc18_:int = o19419.o5292.o923.o4481(o19419.o7923.o7211);
         var _loc6_:Object = this.o1878;
         var _loc11_:int = o19419.o202.o9706;
         if(_loc11_ < 0)
         {
            _loc11_ = 1;
         }
         var _loc16_:o14096 = null;
         if(o19419.o7923.o7993[_loc11_] != null)
         {
            _loc16_ = o19419.o7923.o7993[_loc11_];
         }
         else
         {
            _loc16_ = new o14096();
            _loc16_.o2752 = new o10481(new o8347(),0);
            _loc16_.o2752.o13369 = 1;
         }
         var _loc4_:o6421 = new o6421();
         var _loc13_:Number = _loc4_.o18951(13,_loc19_,_loc16_);
         var _loc12_:Number = _loc4_.o18951(14,_loc19_,_loc16_);
         var _loc1_:Number = _loc4_.o18951(15,_loc19_,_loc16_);
         var _loc8_:Number = _loc4_.o18951(17,_loc19_,_loc16_);
         var _loc3_:Number = _loc4_.o14472(_loc19_,_loc16_);
         var _loc20_:Number = _loc4_.o18951(20,_loc19_,_loc16_);
         var _loc15_:Number = _loc4_.o18951(16,_loc19_,_loc16_);
         var _loc10_:Number = _loc4_.o18951(18,_loc19_,_loc16_);
         var _loc14_:Number = _loc4_.o18951(19,_loc19_,_loc16_);
         var _loc9_:Vector.<Number> = _loc4_.o11279(_loc19_,_loc16_);
         var _loc5_:o125 = new o125();
         var _loc17_:String = o160(_loc5_,_loc3_,22);
         o14414(_loc2_.o2274,_loc2_.o7211,_loc18_,o160(_loc5_,_loc8_,17),o160(_loc5_,_loc3_,22),o16724.o20031(_loc20_) + " seconds",o160(_loc5_,_loc15_,16),o16724.o20031(_loc10_) + " hp/second",o16724.o20031(_loc14_) + " e/second",_loc2_.o3562,_loc2_.o20269,o1259(_loc13_,1),o1259(_loc12_,2),o1259(_loc1_,4),o160(_loc5_,_loc3_,22));
         o11706(o160(_loc5_,_loc9_[1],22),o160(_loc5_,_loc9_[2],22),o160(_loc5_,_loc9_[3],22));
         this.o19034.o7658(o19419.data.o433);
      }
      
      private function o160(param1:o125, param2:Number, param3:int, param4:Boolean = false) : String
      {
         param1.o7246 = param3;
         if(param4 && param2 >= 0)
         {
            return "+" + param1.o11353(param2,true);
         }
         return param1.o11353(param2,true);
      }
   }
}
