package
{
   import flash.display.Sprite;
   
   public class o9931 extends Sprite
   {
       
      
      public function o9931()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8641;
      }
   }
}

import flash.utils.ByteArray;

class o8641 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o14773,o13351.o10420,"use rectangle? (otherwise circle)"],[3,o17243.float,o13351.o10420,"x length (radius)"],[4,o17243.float,o13351.o10420,"y length"],[5,o17243.o14773,o13351.o10420,"sensor only"]];
    
   
   function o8641()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = param2.readShort();
      var _loc11_:Boolean = param2.readBoolean();
      var _loc14_:Number = param2.readFloat();
      var _loc13_:Number = param2.readFloat();
      var _loc4_:Boolean = param2.readBoolean();
      var _loc10_:o4332 = o4519.o9721.o12831(_loc6_);
      var _loc12_:Boolean = false;
      var _loc15_:Boolean = true;
      var _loc9_:Boolean = true;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0);
      var _loc8_:o17761 = new o17761(_loc3_.o2535);
      if(_loc11_)
      {
         _loc8_.o10827(-_loc14_ / 2,-_loc13_ / 2,_loc14_,_loc13_);
      }
      else
      {
         _loc8_.o16716(_loc14_);
      }
      var _loc7_:* = o8723.o32 | o8723.o12624 | o8723.o2823 | o8723.o17798 | o8723.o42;
      var _loc5_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc7_,_loc7_,_loc4_);
      _loc5_.o10289 = _loc8_.id;
      _loc3_.o14230(_loc5_);
      _loc3_.o16687(_loc10_.rotation);
      _loc3_.o8564(_loc10_.position.x,_loc10_.position.y);
      _loc3_.o16280(this,o8273.o7087,o7087);
      super.o10783(param1,_loc3_,_loc10_,o4519.o8116.o11676);
      o16166.o12265 = false;
      o16166.gotoAndStop(0);
   }
   
   private function o7087(param1:o663) : void
   {
      o16166.o11("shot");
   }
   
   override public function o5725(param1:o4016) : void
   {
      o16166.o11("shot");
   }
}
