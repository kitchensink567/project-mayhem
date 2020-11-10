package
{
   import flash.display.Sprite;
   
   public class o4074 extends Sprite
   {
       
      
      public function o4074()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o17777;
      }
   }
}

import flash.utils.ByteArray;

class o17777 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Image Node"],[2,o17243.o14773,o13351.o10420,"Colour Subtract"],[3,o17243.o14773,o13351.o10420,"Colour Add"],[4,o17243.o14773,o13351.o10420,"Colour Multiply"],[5,o17243.o14773,o13351.o10420,"Colour Erase"],[6,o17243.o14773,o13351.o10420,"Colour Normal"],[7,o17243.o14773,o13351.o10420,"Colour Screen"],[8,o17243.o14773,o13351.o10420,"Colour None"],[9,o17243.o14773,o13351.o10420,"Colour Add PM"],[10,o17243.o14773,o13351.o10420,"Colour Normal PM"],[11,o17243.o14773,o13351.o10420,"Colour Screen PM"]];
    
   
   private var o11237:o4332 = null;
   
   private var o8154:Vector.<Number>;
   
   function o17777()
   {
      o8154 = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]);
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:int = param2.readShort();
      o11237 = o4519.o9721.o12831(_loc3_);
      if(param2.readBoolean())
      {
         o11237.o2158 = 9;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 2;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 3;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 5;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 1;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 4;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 0;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 7;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 6;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
      else if(param2.readBoolean())
      {
         o11237.o2158 = 8;
         o8154[15] = 1;
         o11237.colorTransform = o8154;
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      if(o11237)
      {
         o11237.o19115();
      }
      o11237 = null;
      o8154 = null;
      super.o19115();
   }
}
