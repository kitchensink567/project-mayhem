package
{
   import flash.utils.Timer;
   
   public class o4821 extends o8023
   {
       
      
      public var o19055:Boolean = false;
      
      private var o16388:Timer;
      
      private var o15926:o3355;
      
      private var o15471:o3355;
      
      private var o8816:o7304;
      
      private var o20680:Number = 1000;
      
      public function o4821(param1:o7304)
      {
         super();
         this.o8816 = param1;
         this.o15926 = o4519.o8116.o4812.ui.o7049;
         this.o15471 = o4519.o8116.o4812.ui.o9744;
      }
      
      public function o12614() : void
      {
         if(o19055)
         {
            return;
         }
         o19055 = true;
         o15926.play(0.65,0,0,true);
         o15471.play(0.65,0,0,true);
      }
      
      private function o9385() : void
      {
         o15471.play(0.65,0,0,true);
      }
      
      public function o5611() : void
      {
         o19055 = false;
         o15471.o16404();
      }
   }
}
