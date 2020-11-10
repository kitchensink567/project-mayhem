package
{
   import flash.events.Event;
   
   public class o13363 extends o10855
   {
       
      
      private var o19419:o14200;
      
      public function o13363(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o4006() : o3164
      {
         return new o2080();
      }
      
      override protected function o11048() : void
      {
         o16545(o19419.o202.o19062.length,o19419.o202.o19062);
      }
      
      override public function o18277() : void
      {
         o16545(o19419.o202.o19062.length,o19419.o202.o19062);
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         super.o13640();
      }
      
      override protected function o15157() : void
      {
         super.o15157();
         var _loc1_:o16681 = this.o1878;
         _loc1_.o1258();
      }
      
      override protected function o14199() : void
      {
         this.o16989.o198(this.o15157);
      }
      
      override protected function o292() : void
      {
         var _loc5_:int = 0;
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc4_:* = null;
         var _loc3_:int = 0;
         if(o14200.o19505.o202.o19062.length > 0)
         {
            _loc5_ = o14200.o19505.o202.o19062.length;
            _loc1_ = new o16123(o13800.o15774(o14200.o19505.o202.o19062,0,0,true));
            this.o14309 = _loc1_.value;
            o14200.o19505.o15894.o4848.o2719.o15200(_loc5_,_loc1_.value);
            _loc2_ = 0;
            while(_loc2_ < _loc5_)
            {
               if(o14200.o19505.o202.o19062 && o14200.o19505.o202.o19062.length >= 1)
               {
                  _loc4_ = new o16123(o13800.o16475(o14200.o19505.o202.o19062,0,true));
                  _loc3_ = o14200.o19505.o202.o19062[0];
                  o14200.o19505.o15894.o4848.o2719.o2684(_loc4_.value,_loc3_);
               }
               o14200.o19505.o202.o14782();
               o14200.o19505.o7923.o10248();
               _loc2_++;
            }
            o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc1_.value;
            o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc1_.value;
         }
         o14200.o19505.saveData();
         super.o292();
      }
      
      override protected function o12573(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(o14200.o19505.o202.o19062.length > 0)
         {
            _loc2_ = new o16123(o13800.o16475(o14200.o19505.o202.o19062,0,true));
            this.o14309 = _loc2_.value;
            if(o14200.o19505.o202.o19062 && o14200.o19505.o202.o19062.length >= 1)
            {
               _loc3_ = o14200.o19505.o202.o19062[0];
               o14200.o19505.o15894.o4848.o2719.o2684(_loc2_.value,_loc3_);
            }
            o14200.o19505.o202.o14782();
            o14200.o19505.o7923.o10248();
            o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 + _loc2_.value;
            o14200.o19505.data.o1553 = o14200.o19505.data.o1553 + _loc2_.value;
         }
         o14200.o19505.saveData();
         super.o12573(param1);
      }
   }
}
