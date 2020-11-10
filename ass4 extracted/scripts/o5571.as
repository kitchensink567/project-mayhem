package
{
   import flash.events.Event;
   
   public class o5571 extends o5853
   {
       
      
      private var o19419:o14200;
      
      private var o15833:int;
      
      public function o5571(param1:o14200, param2:int)
      {
         super();
         this.o19419 = param1;
         this.o15833 = o4519.o32.o7211;
      }
      
      override protected function o11048() : void
      {
         super.o11048();
         o19419.o15894.o4848.o2719.o13760.o18747 = true;
         o2326();
         var _loc4_:o9145 = o19419.o7923;
         var _loc7_:String = o19419.o5292.o923.o5711(_loc4_.o2274,_loc4_.level);
         var _loc3_:int = o19419.o5292.o923.o4458(_loc4_.o7211 - o15833);
         var _loc5_:int = o19419.o5292.o923.o4458(_loc4_.o7211);
         var _loc11_:Boolean = _loc3_ < o19419.o5292.o15272 && _loc5_ >= o19419.o5292.o15272;
         if(_loc11_)
         {
            _loc4_.o3525.o17992();
         }
         var _loc6_:String = o19419.o5292.o923.o5711(_loc4_.o2274,_loc3_);
         var _loc1_:int = _loc5_ - _loc3_;
         var _loc10_:int = o19419.o5292.o923.o4481(_loc4_.o7211);
         var _loc9_:int = o17517.o3866(_loc3_);
         var _loc2_:int = o17517.o3866(_loc5_);
         if(o19419.o202.o8971)
         {
            o19419.o202.o11362();
         }
         var _loc8_:int = o19419.o5292.o9151(o19419.o7923.level);
         o19419.o202.o11612(o4189.o4718(_loc8_));
         o19565(_loc8_);
         o14414(_loc4_.o2274,_loc4_.level,_loc7_,_loc1_,_loc10_,_loc11_,_loc2_ - _loc9_);
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(o19419 != null && o19419.o202 != null)
         {
            o19419.o202.o19842();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         o15833 = 0;
         super.o13640();
      }
      
      private function o2326() : void
      {
         o8339("level up yo!");
         o4519.o8116.o4812.o1162.o18747.play(1);
      }
   }
}
