package
{
   import flash.display.Sprite;
   
   public class o7950 extends Sprite
   {
       
      
      public function o7950()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o14315;
      }
   }
}

import flash.utils.ByteArray;

class o14315 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"Terminal Name"],[2,o17243.o2013,o13351.o10420,"Terminal Image"]];
    
   
   public var o7321:o4332;
   
   function o14315()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o16955(param1);
      name = "terminal";
      name = name + param2.readUTF();
      var _loc3_:int = param2.readShort();
      o7321 = o4519.o9721.o12831(_loc3_);
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      if(o7321)
      {
         o7321.o19115();
      }
      o7321 = null;
      super.o19115();
   }
}
