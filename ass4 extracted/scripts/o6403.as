package
{
   public class o6403 extends o2415
   {
      
      public static const o109:Number = 10;
       
      
      private var o12849:o2415 = null;
      
      public var o14276:Number = 10;
      
      private var o16554:int = -1;
      
      private var parent:o12600 = null;
      
      public var o10286:Number = 40000.0;
      
      public function o6403(param1:o12600, param2:o2415, param3:int = 600)
      {
         super();
         this.o12849 = param2;
         this.o10286 = param3 * param3;
         this.parent = param1;
         x = param2.x;
         y = param2.y;
         o16554 = o1051.o4767(param1,0.0333333333333333,o7664);
      }
      
      public function o7664() : void
      {
         var _loc2_:Number = o12849.x - x;
         var _loc1_:Number = o12849.y - y;
         if(_loc2_ * _loc2_ + _loc1_ * _loc1_ > o10286)
         {
            x = o12849.x;
            y = o12849.y;
            return;
         }
         x = x + _loc2_ / o14276;
         y = y + _loc1_ / o14276;
      }
      
      public function o19997() : void
      {
         o1051.o19115(o16554);
         o16554 = o1051.o4767(parent,0.0333333333333333,o7664);
      }
   }
}
