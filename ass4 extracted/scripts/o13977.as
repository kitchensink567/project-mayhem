package
{
   import flash.display.Sprite;
   
   public class o13977 extends Sprite
   {
       
      
      public function o13977()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10984;
      }
   }
}

import flash.utils.ByteArray;

class o10984 extends o11386
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics graph"],[2,o17243.o14773,o13351.o10420,"projectiles pass thru"],[3,o17243.o14773,o13351.o10420,"enemies pass thru"],[4,o17243.o14773,o13351.o10420,"players pass thru"],[115,o17243.o14773,o13351.o10420,"survivors pass thru"],[6,o17243.o14773,o13351.o10420,"ai soldiers pass thru"]];
    
   
   function o10984()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:int = param2.readShort();
      var _loc3_:Boolean = param2.readByte();
      var _loc6_:Boolean = param2.readByte();
      var _loc7_:Boolean = param2.readByte();
      var _loc4_:Boolean = param2.readByte();
      var _loc5_:Boolean = false;
      if(param2.bytesAvailable > 0)
      {
         _loc5_ = param2.readByte();
      }
      mask = o8723.o10217;
      if(_loc3_)
      {
         mask = mask ^ (o8723.o17798 | o8723.o42);
      }
      if(_loc6_)
      {
         mask = mask ^ o8723.o2823;
      }
      if(_loc7_)
      {
         mask = mask ^ o8723.o32;
      }
      if(_loc4_)
      {
         mask = mask ^ o8723.o12624;
      }
      if(_loc5_)
      {
         mask = mask ^ o8723.o3732;
      }
      super.o20950(param1,_loc8_);
   }
}
