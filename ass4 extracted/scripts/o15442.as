package
{
   import flash.display.Sprite;
   
   public class o15442 extends Sprite
   {
      
      public static const o16231:int = 1000;
      
      public static const o17837:int = 1001;
       
      
      public function o15442()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8760;
      }
   }
}

import flash.utils.ByteArray;

class o8760 extends o15755
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"teleport trigger"],[2,o17243.o2013,o13351.o10420,"teleport location"]];
    
   
   private var o6440:o18509;
   
   public var o12134:o10262;
   
   private var o12595:Boolean = false;
   
   function o8760()
   {
      o6440 = new o18509();
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:* = undefined;
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc3_:o4332 = o4519.o9721.o12831(_loc7_);
      o6440.x = _loc3_.position.x;
      o6440.y = _loc3_.position.y;
      o4519.o8116.o11954.o11867(_loc3_);
      o12134 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o17761 = new o17761(o12134.o2535);
      if(_loc4_ == 0)
      {
         _loc8_.o16716(25);
      }
      else
      {
         _loc6_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
         _loc8_.o14486(_loc6_);
      }
      var _loc5_:o4039 = o4519.o8116.o20600.o15803(o8723.o9077,o8723.o32 | o8723.o2823,o8723.o32 | o8723.o2823,true);
      _loc5_.o10289 = _loc8_.id;
      o12134.o14230(_loc5_);
      o12134.o16280(this,o8273.o7087,o3718);
   }
   
   private function o3718(param1:o663) : void
   {
      var _loc2_:o7848 = o4519.o8116.o2996.o14389(param1.o11541);
      if(o12595 && _loc2_ is o18442)
      {
         if(o18442(_loc2_).o17050)
         {
            return;
         }
      }
      if(_loc2_ is o17517 && _loc2_.o5973 == o4519.o13206.o2685.id)
      {
         o17517(_loc2_).o15315(o6440);
      }
      param1.o11541.o13392(o6440);
      o15777(1000);
      if(param1.o11541 == o4519.o32.body)
      {
         o15777(1001);
      }
   }
   
   public function enabled(param1:Boolean) : void
   {
      if(param1)
      {
         o12134.o16280(this,o8273.o7087,o3718);
      }
      else
      {
         o12134.o12657(o8273.o7087,o3718);
      }
   }
   
   public function o17985(param1:Boolean) : void
   {
      o12595 = param1;
   }
}
