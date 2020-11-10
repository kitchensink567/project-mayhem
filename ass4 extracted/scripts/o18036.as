package
{
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   
   public class o18036 extends o8023
   {
       
      
      private var o886:Dictionary;
      
      private var o6169:o3461;
      
      public function o18036(param1:o3461, param2:Dictionary)
      {
         super();
         this.o886 = param2;
         this.o6169 = param1;
      }
      
      public function o20013() : void
      {
         o5871();
      }
      
      private function o5871() : void
      {
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = o886;
         for(var _loc1_ in o886)
         {
            if(_loc1_ != null)
            {
               _loc2_ = _loc1_.soundTransform;
               if(_loc2_ != null)
               {
                  if(_loc2_.volume <= 0)
                  {
                     _loc1_.stop();
                     _loc1_ = null;
                     o6169.o12964 = false;
                  }
                  else
                  {
                     _loc2_.volume = _loc2_.volume - 0.05;
                     _loc1_.soundTransform = _loc2_;
                     o8339("volume: " + _loc1_.soundTransform.volume);
                  }
               }
            }
         }
      }
      
      public function o6952() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o886;
         for(var _loc1_ in o886)
         {
            _loc1_.stop();
            _loc1_ = null;
         }
         o886 = null;
         o6169 = null;
         o19115();
      }
   }
}
