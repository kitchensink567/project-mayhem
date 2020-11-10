package
{
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class o13202
   {
      
      public static var o7935:uint = 1;
      
      public static var o11298:uint = 2;
      
      public static var o9478:uint = 4;
      
      public static var o17887:uint = 8;
      
      public static var o17540:uint = 16;
      
      public static var o50:uint = 32;
       
      
      private var o17222:uint;
      
      b2internal var o1231:Sprite;
      
      private var o13513:Number = 1.0;
      
      private var o9200:Number = 1.0;
      
      private var o8179:Number = 1.0;
      
      private var o6015:Number = 1.0;
      
      private var o12176:Number = 1.0;
      
      public function o13202()
      {
         super();
         o17222 = 0;
      }
      
      public function o19212(param1:uint) : void
      {
         o17222 = param1;
      }
      
      public function o19611() : uint
      {
         return o17222;
      }
      
      public function o3204(param1:uint) : void
      {
         o17222 = o17222 | param1;
      }
      
      public function o950(param1:uint) : void
      {
         o17222 = o17222 & ~param1;
      }
      
      public function o15744(param1:Sprite) : void
      {
         o1231 = param1;
      }
      
      public function o16822() : Sprite
      {
         return o1231;
      }
      
      public function o12305(param1:Number) : void
      {
         o13513 = param1;
      }
      
      public function o20627() : Number
      {
         return o13513;
      }
      
      public function o10428(param1:Number) : void
      {
         o9200 = param1;
      }
      
      public function o3668() : Number
      {
         return o9200;
      }
      
      public function o8861(param1:Number) : void
      {
         o8179 = param1;
      }
      
      public function o1332() : Number
      {
         return o8179;
      }
      
      public function o9149(param1:Number) : void
      {
         o6015 = param1;
      }
      
      public function o16673() : Number
      {
         return o6015;
      }
      
      public function o8797(param1:Number) : void
      {
         o12176 = param1;
      }
      
      public function o11517() : Number
      {
         return o12176;
      }
      
      public function o20748(param1:Array, param2:int, param3:o6532) : void
      {
         var _loc4_:int = 0;
         o1231.graphics.lineStyle(o9200,param3.color,o8179);
         o1231.graphics.moveTo(param1[0].x * o13513,param1[0].y * o13513);
         _loc4_ = 1;
         while(_loc4_ < param2)
         {
            o1231.graphics.lineTo(param1[_loc4_].x * o13513,param1[_loc4_].y * o13513);
            _loc4_++;
         }
         o1231.graphics.lineTo(param1[0].x * o13513,param1[0].y * o13513);
      }
      
      public function o12355(param1:Vector.<o20021>, param2:int, param3:o6532) : void
      {
         var _loc4_:int = 0;
         o1231.graphics.lineStyle(o9200,param3.color,o8179);
         o1231.graphics.moveTo(param1[0].x * o13513,param1[0].y * o13513);
         o1231.graphics.beginFill(param3.color,o6015);
         _loc4_ = 1;
         while(_loc4_ < param2)
         {
            o1231.graphics.lineTo(param1[_loc4_].x * o13513,param1[_loc4_].y * o13513);
            _loc4_++;
         }
         o1231.graphics.lineTo(param1[0].x * o13513,param1[0].y * o13513);
         o1231.graphics.endFill();
      }
      
      public function o4334(param1:o20021, param2:Number, param3:o6532) : void
      {
         o1231.graphics.lineStyle(o9200,param3.color,o8179);
         o1231.graphics.drawCircle(param1.x * o13513,param1.y * o13513,param2 * o13513);
      }
      
      public function o16258(param1:o20021, param2:Number, param3:o20021, param4:o6532) : void
      {
         o1231.graphics.lineStyle(o9200,param4.color,o8179);
         o1231.graphics.moveTo(0,0);
         o1231.graphics.beginFill(param4.color,o6015);
         o1231.graphics.drawCircle(param1.x * o13513,param1.y * o13513,param2 * o13513);
         o1231.graphics.endFill();
         o1231.graphics.moveTo(param1.x * o13513,param1.y * o13513);
         o1231.graphics.lineTo((param1.x + param3.x * param2) * o13513,(param1.y + param3.y * param2) * o13513);
      }
      
      public function o18480(param1:o20021, param2:o20021, param3:o6532) : void
      {
         o1231.graphics.lineStyle(o9200,param3.color,o8179);
         o1231.graphics.moveTo(param1.x * o13513,param1.y * o13513);
         o1231.graphics.lineTo(param2.x * o13513,param2.y * o13513);
      }
      
      public function o20731(param1:o12362) : void
      {
         o1231.graphics.lineStyle(o9200,16711680,o8179);
         o1231.graphics.moveTo(param1.position.x * o13513,param1.position.y * o13513);
         o1231.graphics.lineTo((param1.position.x + o12176 * param1.o13707.o19549.x) * o13513,(param1.position.y + o12176 * param1.o13707.o19549.y) * o13513);
         o1231.graphics.lineStyle(o9200,65280,o8179);
         o1231.graphics.moveTo(param1.position.x * o13513,param1.position.y * o13513);
         o1231.graphics.lineTo((param1.position.x + o12176 * param1.o13707.o20685.x) * o13513,(param1.position.y + o12176 * param1.o13707.o20685.y) * o13513);
      }
   }
}
