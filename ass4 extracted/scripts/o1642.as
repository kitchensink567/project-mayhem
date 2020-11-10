package
{
   import flash.display.Sprite;
   
   public class o1642 extends Sprite
   {
       
      
      public function o1642()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15798;
      }
   }
}

import flash.utils.ByteArray;

class o15798 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics"],[2,o17243.o19845,o13351.o5585,"name"],[3,o17243.o8809,o13351.o5585,"collision categories"]];
    
   
   private var body:o10262;
   
   function o15798()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:* = null;
      var _loc4_:* = null;
      var _loc9_:int = param2.readShort();
      name = param2.readUTF();
      var _loc3_:int = param2.readInt();
      body = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc9_].o6041[0].id);
      var _loc8_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc11_:int = 0;
      var _loc10_:* = _loc8_;
      for each(var _loc6_ in _loc8_)
      {
         _loc7_ = new o17761(body.o2535);
         _loc7_.o14486(_loc6_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.trigger,_loc3_,_loc3_,true);
         _loc4_.o10289 = _loc7_.id;
         body.o14230(_loc4_);
      }
   }
   
   public function o4526() : void
   {
      body.o16280(this,o8273.o7087,o7087);
   }
   
   private function o7087(param1:o663) : void
   {
      o15777(o11376.o9522);
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      body.o19115();
      super.o19115();
   }
}
