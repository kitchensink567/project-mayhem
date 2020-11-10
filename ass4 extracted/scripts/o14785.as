package
{
   import flash.events.Event;
   
   public class o14785 extends o4023
   {
       
      
      private var o19419:o14200;
      
      private var o3093:o10346;
      
      private var o408:Boolean = false;
      
      private var o5262:Number = 0;
      
      private var o19324:Boolean = false;
      
      public function o14785(param1:o14200)
      {
         super();
         this.o19419 = param1;
         o4519.o8116.o20488.o10608.level = param1.o7923.level;
      }
      
      private function o9922() : void
      {
         o16989.screen = 31;
      }
      
      override protected function o11048() : void
      {
         o3093 = new o10346(o19419,this.o16989,o9922);
         o92(false);
         o19419.o2719.o10907(213);
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         if(o408 == false)
         {
            _loc2_ = o3093.o12333();
            if(_loc2_ == 1)
            {
               o19324 = true;
            }
         }
         else
         {
            _loc2_ = o5262;
         }
         if(o19324 && o408 == false && o19419.o202.o2685 != null)
         {
            o408 = true;
            o19419.o202.o2685.o16280(null,o9782.o11785,o1354);
         }
         this.o3243(_loc2_,o408);
      }
      
      private function o1354(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o19419.o202.o2685 != null)
         {
            _loc2_ = o19419.o202.o2685.o10591[0];
            o5262 = _loc2_.o951;
         }
      }
      
      override protected function o154() : void
      {
         super.o154();
         o3093.o154();
      }
      
      override protected function o9492() : void
      {
         o92(true);
      }
      
      private function o92(param1:Boolean) : void
      {
         var _loc2_:o69 = o19419.o202.o18702();
         o3093.o14279(param1);
         var _loc3_:String = !!o3093.o4643?"LoadingIntro":_loc2_.o7219;
         o4095(_loc2_.o1007.toUpperCase(),_loc2_.o6393,_loc3_,o3093.o4643);
         o3093.o92(param1);
      }
      
      override public function o13640() : void
      {
         o3093.o13640();
         if(o19419.o202.o2685 != null)
         {
            o19419.o202.o2685.o12657(o9782.o11785,o1354);
         }
         o19419 = null;
         o3093 = null;
         super.o13640();
      }
   }
}
