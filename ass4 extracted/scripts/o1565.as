package
{
   import flash.display.Sprite;
   
   public class o1565 extends Sprite
   {
       
      
      public function o1565()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15502;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o15502 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Image to animate"],[2,o17243.float,o13351.o10420,"Lower Bound"],[3,o17243.float,o13351.o10420,"Upper Bound"]];
    
   
   private var o16166:o7331 = null;
   
   private var o416:Boolean = true;
   
   private var o16484:Number = 2;
   
   private var o19569:Number = 10;
   
   function o15502()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:int = param2.readShort();
      if(param2.bytesAvailable > 0)
      {
         o16484 = param2.readFloat();
         o19569 = param2.readFloat();
      }
      o16166 = o4519.o9721.o7833(_loc3_);
      o16166.o12265 = false;
      o16166.play();
      o16166.o16280(this,o1490.o16612,o518);
   }
   
   public function o518(param1:Event = null) : void
   {
      o7367 = param1;
      if(o416 == false)
      {
         return;
      }
      var time:Number = 2;
      time = time + Math.random() * 15;
      o416 = false;
      o1051.o9310(this,time,function():void
      {
         o16166.gotoAndPlay(0);
         o416 = true;
      });
   }
}
