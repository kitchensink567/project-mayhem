package
{
   import flash.display.Sprite;
   
   public class o6548 extends Sprite
   {
       
      
      public function o6548()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3250;
      }
   }
}

import flash.utils.ByteArray;

class o3250 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"polygon graph"],[2,o17243.float,o13351.o10420,"z value (0 defaults to 100)"]];
    
   
   private var o16245:o4332;
   
   function o3250()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[param2.readShort()].o6041[0].id);
      o16245 = o4519.o8116.o11954.o10869();
      o16245.o16396 = o17541.o13617(_loc4_);
      var _loc3_:* = Number(param2.readFloat());
      if(_loc3_ == 0)
      {
         _loc3_ = 100;
      }
      o16245.position = new o2415();
      o16245.o16990 = _loc3_;
      o4519.o8116.o11954.o9226(o16245);
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o16245.o19115();
      super.o19115();
   }
}
