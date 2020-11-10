package
{
   import flash.events.Event;
   
   public class o1850 extends o5304
   {
      
      public static var o3922:int = 0;
       
      
      public function o1850()
      {
         super();
      }
      
      public function o16677(param1:String, param2:Number, param3:Number, param4:Number, param5:Number = -1) : void
      {
         super.o11521(param1);
         o11533(param2,param3,param4,param5);
      }
      
      public function o1666(param1:String, param2:Number, param3:Number, param4:Number, param5:Number = -1) : void
      {
         super.o1148(param1);
         o11533(param2,param3,param4,param5);
      }
      
      private function o11533(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:int = 0;
         if(param4 > -1)
         {
            _loc5_ = o16166.o12950();
            if(_loc5_ != 0)
            {
               o16166.frameRate = param4 / _loc5_;
            }
         }
         o6691.position.x = param1;
         o6691.position.y = param2;
         o6691.o16990 = param3;
         o6691.o9824 = true;
         o16166.o19926(this,o1490.o16612,o12233);
      }
      
      private function o12233(param1:Event = null) : void
      {
         o13640();
      }
   }
}
