package
{
   import flash.display.Sprite;
   
   public class o6617 extends Sprite
   {
       
      
      public function o6617()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5990;
      }
   }
}

import flash.utils.ByteArray;

class o5990 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[20,o17243.o2013,o13351.o10420,"virus pos 1"],[21,o17243.o2013,o13351.o5585,"virus pos 2"],[22,o17243.o2013,o13351.o5585,"virus pos 3"],[23,o17243.o2013,o13351.o5585,"virus pos 4"],[24,o17243.o2013,o13351.o5585,"virus pos 5"],[25,o17243.o2013,o13351.o5585,"virus pos 6"],[26,o17243.o2013,o13351.o5585,"virus pos 7"],[27,o17243.o2013,o13351.o5585,"virus pos 8"],[28,o17243.o2013,o13351.o5585,"virus pos 9"],[29,o17243.o2013,o13351.o5585,"virus pos 10"],[2,o17243.o2013,o13351.o10420,"enemy spawn pos 1"],[3,o17243.o2013,o13351.o5585,"enemy spawn pos 2"],[4,o17243.o2013,o13351.o5585,"enemy spawn pos 3"],[5,o17243.o2013,o13351.o5585,"enemy spawn pos 4"],[6,o17243.o2013,o13351.o5585,"enemy spawn pos 5"],[7,o17243.o2013,o13351.o5585,"enemy spawn pos 6"],[8,o17243.o2013,o13351.o5585,"enemy spawn pos 7"],[9,o17243.o2013,o13351.o5585,"enemy spawn pos 8"],[10,o17243.o2013,o13351.o5585,"enemy spawn pos 9"],[11,o17243.o2013,o13351.o5585,"enemy spawn pos 10"]];
    
   
   public var o7362:Vector.<o18509>;
   
   public var o19021:Vector.<o18509>;
   
   public var o5369:ByteArray;
   
   function o5990()
   {
      o5369 = new ByteArray();
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = null;
      super.o16955(o5973);
      name = param2.readUTF();
      o7362 = new Vector.<o18509>();
      _loc5_ = 0;
      while(_loc5_ < 10)
      {
         _loc4_ = param2.readShort();
         _loc3_ = o4519.o9721.o12831(_loc4_);
         if(!(_loc4_ == 0 || _loc3_ == null))
         {
            o7362.push(new o18509(_loc3_.position.x,_loc3_.position.y));
            o4519.o8116.o11954.o11867(_loc3_);
         }
         _loc5_++;
      }
      o19021 = new Vector.<o18509>();
      _loc5_ = 0;
      while(_loc5_ < 10)
      {
         _loc4_ = param2.readShort();
         _loc3_ = o4519.o9721.o12831(_loc4_);
         if(!(_loc4_ == 0 || _loc3_ == null))
         {
            o19021.push(new o18509(_loc3_.position.x,_loc3_.position.y));
            o5369.writeFloat(_loc3_.position.x);
            o5369.writeFloat(_loc3_.position.y);
            o4519.o8116.o11954.o11867(_loc3_);
         }
         _loc5_++;
      }
   }
   
   override public function o19115() : void
   {
      o7362 = null;
      o19021 = null;
      o5369 = null;
      super.o19115();
   }
}
