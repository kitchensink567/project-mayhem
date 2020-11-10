package
{
   import flash.events.Event;
   
   public class o19627 extends o5304
   {
       
      
      public function o19627()
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
      }
      
      public function o15428() : void
      {
         o13640();
      }
      
      private function o12233(param1:Event) : void
      {
         o13640();
      }
   }
}
