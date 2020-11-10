package
{
   import flash.display.Sprite;
   
   public class o14856 extends Sprite
   {
       
      
      public function o14856()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8892;
      }
   }
}

import flash.utils.ByteArray;

class o8892 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Image to stick to avatars position"],[5,o17243.o14773,o13351.o10420,"Animated sprite?"],[6,o17243.o19845,o13351.o10420,"Loop label"],[7,o17243.o14773,o13351.o10420,"Stop on end frame?"]];
    
   
   private var o8351:int = 0;
   
   private var o3334:int = 0;
   
   private var o3591:int = 0;
   
   private var o5841:int = 0;
   
   private var o19575:int = 0;
   
   private var o5510:int = -1;
   
   private var o16166:o7331 = null;
   
   private var o11237:o4332 = null;
   
   function o8892()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc4_:* = null;
      var _loc3_:Boolean = false;
      o19575 = param2.readShort();
      o16166 = o4519.o9721.o7833(o19575);
      if(param2.readBoolean())
      {
         _loc4_ = param2.readUTF();
         _loc3_ = false;
         if(param2.bytesAvailable > 0)
         {
            _loc3_ = param2.readBoolean();
         }
         o16166.o12265 = true;
         o16166.play();
         if(_loc4_ != null && _loc4_ != "")
         {
            o16166.o3030(_loc4_);
            o16166.o11(_loc4_);
         }
         if(_loc3_)
         {
            o16166.o12265 = false;
         }
      }
      o11237 = o4519.o9721.o12831(o19575);
      o11237.position = o4519.o32.o6691.position;
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      if(o11237)
      {
         o11237.o19115();
      }
      o11237 = null;
      if(o16166)
      {
         o16166.o19115();
      }
      o16166 = null;
      o1051.o19115(o5510);
      super.o19115();
   }
}
