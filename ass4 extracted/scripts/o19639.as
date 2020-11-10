package
{
   import flash.display.Sprite;
   
   public class o19639 extends Sprite
   {
       
      
      public function o19639()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1645;
      }
   }
}

import flash.utils.ByteArray;

class o1645 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"Script Name"],[2,o17243.o2013,o13351.o10420,"Enemy spawn positions (Graph)"]];
    
   
   public var o19021:Vector.<o18509>;
   
   function o1645()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(o5973);
      name = param2.readUTF();
      var _loc3_:int = param2.readShort();
      o19021 = o4519.o9721.o7963(o4519.o9721.o7352[_loc3_].o6041[0].id);
   }
   
   override public function o19115() : void
   {
      o19021 = null;
      super.o19115();
   }
}
