package
{
   import flash.display.Sprite;
   
   public class o5904 extends Sprite
   {
       
      
      public function o5904()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1073;
      }
   }
}

import flash.utils.ByteArray;

class o1073 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"trigger"],[2,o17243.o2013,o13351.o10420,"image"]];
    
   
   private var o20447:o7331 = null;
   
   function o1073()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o17761 = new o17761(_loc5_.o2535);
      var _loc7_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
      _loc8_.o14486(_loc7_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc8_.id;
      _loc5_.o14230(_loc3_);
      _loc5_.o16280(this,o8273.o7087,o46);
   }
   
   private function o46(param1:o663) : void
   {
      var _loc2_:* = undefined;
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         _loc2_ = o4519.o9721.o12334("securityDoor1");
         _loc2_.o17776();
         _loc2_ = o4519.o9721.o12334("securityDoor2");
         _loc2_.o17776();
      }
   }
}
