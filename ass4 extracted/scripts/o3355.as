package
{
   import flash.media.Sound;
   import flash.media.SoundTransform;
   
   public class o3355
   {
      
      private static const o13044:Boolean = false;
       
      
      var o8703:Sound = null;
      
      private var o13256:o3461 = null;
      
      public var o8793:Number;
      
      public var key:Number = 0;
      
      public function o3355()
      {
         super();
      }
      
      public function initialise(param1:Sound, param2:o3461) : void
      {
         this.o8703 = param1;
         this.o13256 = param2;
         this.o8793 = param1.length;
      }
      
      public function play(param1:Number = 0.5, param2:int = 0, param3:Number = 0, param4:Boolean = false, param5:SoundTransform = null, param6:int = 0, param7:int = 0, param8:Number = 0) : void
      {
         key = param8;
         o13256.play(this,param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function stop() : void
      {
         o13256.stop();
      }
      
      public function o16404() : void
      {
         o13256.o16404();
      }
   }
}
