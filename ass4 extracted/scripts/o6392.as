package
{
   import flash.events.Event;
   
   public class o6392 extends o5304
   {
       
      
      private var o16854:Function;
      
      public function o6392()
      {
         super();
      }
      
      public function o16677(param1:String, param2:Function, param3:Number = -1, param4:int = 0) : void
      {
         this.o16854 = param2;
         super.o11521(param1);
         if(param3 == -1)
         {
            o6691.o16990 = o11381.o7800;
         }
         else
         {
            o6691.o16990 = param3;
         }
         o16166.gotoAndPlay(param4);
         o16166.o19926(this,o1490.o16612,o12233);
      }
      
      public function o1666(param1:String, param2:Function, param3:Number = -1, param4:int = 0) : void
      {
         this.o16854 = param2;
         super.o1148(param1);
         if(param3 == -1)
         {
            o6691.o16990 = o11381.o7800;
         }
         else
         {
            o6691.o16990 = param3;
         }
         o16166.gotoAndPlay(param4);
         o16166.o19926(this,o1490.o16612,o12233);
      }
      
      private function o12233(param1:Event) : void
      {
         o16854();
         o13640();
      }
   }
}
