package
{
   import flash.display.Sprite;
   
   public class o19935 extends Sprite
   {
       
      
      public function o19935()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8097;
      }
   }
}

import flash.utils.ByteArray;

class o8097 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics graph"]];
    
   
   function o8097()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(param1);
      var _loc3_:int = param2.readShort();
      o4519.o9721.o3865(Vector.<int>([_loc3_]),o8723.o13056,o8723.o17445);
   }
}
