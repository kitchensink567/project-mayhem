package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o2629 extends o6539
   {
       
      
      private var o1758:Vector.<o7345>;
      
      private var o19419:o14200;
      
      public function o2629()
      {
         super();
      }
      
      private function o8829(param1:MovieClip, param2:o978) : void
      {
         var _loc3_:o7345 = new o7345();
         _loc3_.o16384(param1,param2);
         this.o5452(_loc3_);
         o1758.push(_loc3_);
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:o13064) : void
      {
         super.init(param1);
         o19419 = o14200.o19505;
         o1758 = new Vector.<o7345>();
         o8829(param1.getChildByName("contractContainer1") as MovieClip,param2);
         o8829(param1.getChildByName("contractContainer0") as MovieClip,param2);
         var _loc4_:o6296 = o19419.o5292.o6666;
         var _loc5_:Date = new Date();
         _loc4_.addEventListener(o6296.o20332,o15534,false,0,true);
         o15534(null);
      }
      
      private function o15534(param1:Event) : void
      {
         var _loc2_:o6296 = o19419.o5292.o6666;
         var _loc7_:int = 0;
         var _loc6_:* = o1758;
         for each(var _loc5_ in o1758)
         {
            _loc5_.o10950();
         }
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:* = _loc2_.o14841;
         for each(var _loc3_ in _loc2_.o14841)
         {
            if(_loc4_ < o1758.length)
            {
               o1758[_loc4_].o15312(_loc3_);
               _loc4_++;
               continue;
            }
            break;
         }
      }
      
      override public function o13640() : void
      {
         o1758 = null;
         o19419 = null;
         super.o13640();
      }
   }
}
