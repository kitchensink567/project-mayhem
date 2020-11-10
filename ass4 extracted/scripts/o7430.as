package
{
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class o7430 extends o8023
   {
       
      
      public var o19055:Boolean = false;
      
      public var o5216:int;
      
      private var o2282:o3355;
      
      private var o8816:o7304;
      
      private var o15629:o3461;
      
      private var o20632:SoundChannel;
      
      private var o3256:int;
      
      public function o7430(param1:o7304, param2:int)
      {
         super();
         this.o8816 = param1;
         this.o2282 = o4519.o8116.o8756.o11421;
         this.o15629 = param1.o6169;
         this.o5216 = param2;
      }
      
      public function o8445() : void
      {
         if(o19055)
         {
            return;
         }
         o19055 = true;
         o2282.play(0.65,0,0,true,null,0,14);
         o20632 = o15629.o20632;
         o8339(o20632);
      }
      
      public function o3751() : void
      {
         o19055 = false;
         o15629.o6832 = false;
         o2282.o16404();
         o8816.o18374(o5216).play(o8816.o12040,0,0,true);
      }
      
      public function o17511() : void
      {
         o15629.o6832 = true;
         if(!o19055 || o20632 == null)
         {
            o15629.o6832 = false;
            return;
         }
         o3256 = o1051.o4767(this,0.0666666666666667,o5871,31,true);
      }
      
      private function o5871() : void
      {
         if(o20632 == null)
         {
            o15629.o6832 = false;
            o1051.o19115(o3256);
            o3751();
            return;
         }
         var _loc1_:SoundTransform = o20632.soundTransform;
         if(_loc1_.volume <= 0)
         {
            o20632.stop();
            o20632 = null;
            o1051.o19115(o3256);
            o3751();
            return;
         }
         _loc1_.volume = _loc1_.volume - 0.02;
         o20632.soundTransform = _loc1_;
      }
   }
}
