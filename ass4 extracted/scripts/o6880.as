package
{
   public class o6880 extends o8023
   {
       
      
      private var o6691:o4332;
      
      private var o8630:Number;
      
      private var o16388:Number;
      
      private var o8154:Vector.<Number>;
      
      private const o12947:int = 15;
      
      public function o6880(param1:o4332)
      {
         o8154 = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]);
         super();
         this.o6691 = param1;
      }
      
      public function o2008(param1:Number, param2:Boolean = false) : void
      {
         if(param2)
         {
            o4519.o8116.o11954.o9226(o6691);
         }
         o6691.o2158 = 1;
         this.o8630 = param1;
         o16388 = 0;
         o1051.o4767(this,0.0333333333333333,o4813,param1 * 30 + 1,true);
      }
      
      private function o4813() : void
      {
         if(o16388 > o8630)
         {
            o16388 = o8630;
         }
         if(o6691.colorTransform != null)
         {
            o8154 = o6691.colorTransform;
         }
         o8154[15] = o16388 / o8630;
         o6691.colorTransform = o8154;
         o16388 = o16388 + 0.0333333333333333;
      }
      
      public function o20013(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         o6691.o2158 = 1;
         this.o8630 = param1;
         o16388 = 0;
         o1051.o4767(this,0.0333333333333333,o5871,param1 * 30 + 1,true);
         if(param2)
         {
            o1051.o9310(this,param1,o17454);
         }
         if(param3)
         {
            o1051.o9310(this,param1,o6691.o19115);
         }
      }
      
      private function o5871() : void
      {
         if(o16388 > o8630)
         {
            o16388 = o8630;
         }
         if(o6691.colorTransform != null)
         {
            o8154 = o6691.colorTransform;
         }
         o8154[15] = 1 - o16388 / o8630;
         o6691.colorTransform = o8154;
         o16388 = o16388 + 0.0333333333333333;
      }
      
      private function o17454() : void
      {
         o4519.o8116.o11954.o17454(o6691);
      }
      
      public function o890() : void
      {
         o8154[15] = 1;
         o6691.colorTransform = o8154;
      }
      
      public function o12339() : void
      {
         o8154[15] = 0;
         o6691.colorTransform = o8154;
      }
      
      public function o4236(param1:Number) : void
      {
         o6691.o2158 = 1;
         o8154[15] = param1;
         o6691.colorTransform = o8154;
      }
   }
}
