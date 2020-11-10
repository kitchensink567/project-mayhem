package
{
   import flash.events.Event;
   
   public class o2130 extends o5304
   {
       
      
      public function o2130()
      {
         super();
      }
      
      public function o16677(param1:String, param2:Number = -1, param3:int = 0) : void
      {
         super.o11521(param1);
         if(param2 == -1)
         {
            o6691.o16990 = o11381.o7800;
         }
         else
         {
            o6691.o16990 = param2;
         }
         o16166.gotoAndPlay(param3);
         o16166.o19926(this,o1490.o16612,o12233);
      }
      
      public function o1666(param1:String, param2:Number = -1, param3:int = 0) : void
      {
         super.o1148(param1);
         if(param2 == -1)
         {
            o6691.o16990 = o11381.o7800;
         }
         else
         {
            o6691.o16990 = param2;
         }
         o16166.gotoAndPlay(param3);
         o16166.o19926(this,o1490.o16612,o12233);
      }
      
      private function o12233(param1:Event) : void
      {
         o13640();
      }
   }
}
