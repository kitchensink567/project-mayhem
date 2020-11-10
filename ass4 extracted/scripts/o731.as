package
{
   import flash.events.Event;
   
   public class o731 extends o16681
   {
       
      
      public function o731()
      {
         super();
      }
      
      override public function o13640() : void
      {
         var _loc1_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = this.o20157;
         for each(_loc1_ in this.o20157)
         {
            if(_loc1_ is o15625)
            {
               _loc1_.addEventListener("click",o14012,false,0,true);
               _loc1_.addEventListener("rollOver",o5251,false,0,true);
            }
         }
         super.o13640();
      }
      
      protected function o11639(param1:o15625) : void
      {
      }
      
      protected function o2806(param1:o15625) : void
      {
      }
      
      private function o14012(param1:Event) : void
      {
         var _loc2_:o15625 = param1.target as o15625;
         o11639(_loc2_);
      }
      
      private function o5251(param1:Event) : void
      {
         var _loc2_:o15625 = param1.target as o15625;
         o2806(_loc2_);
      }
      
      override public function o5452(param1:o16681) : void
      {
         super.o5452(param1);
         if(param1 is o15625)
         {
            param1.addEventListener("click",o14012,false,0,true);
            param1.addEventListener("rollOver",o5251,false,0,true);
         }
      }
      
      override public function o10877(param1:o16681) : void
      {
         if(param1 is o15625)
         {
            param1.removeEventListener("click",o14012);
            param1.removeEventListener("rollOver",o5251);
         }
         super.o10877(param1);
      }
   }
}
