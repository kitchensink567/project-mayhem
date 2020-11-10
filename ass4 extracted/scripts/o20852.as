package
{
   import flash.display.DisplayObject;
   
   public class o20852
   {
      
      public static const o7105:Number = 57.2957795;
      
      public static const o1530:Number = 0.0174532;
       
      
      public function o20852()
      {
         super();
      }
      
      public static function o3471(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public static function random(param1:Number) : Number
      {
         return o3471(0,param1);
      }
      
      public static function o17418(param1:int) : int
      {
         return Math.random() * 2147483647 % (param1 + 1);
      }
      
      public static function o17542(param1:DisplayObject, param2:int, param3:int) : void
      {
         var _loc4_:Number = param3 / param2 > param1.height / param1.width?param2 / param1.width:param3 / param1.height;
         param1.scaleX = _loc4_;
         param1.scaleY = _loc4_;
         o20355.o3935(param1,_loc4_);
         param1.x = param2 / 2 - param1.width / 2;
         param1.y = param3 / 2 - param1.height / 2;
      }
      
      public static function o8678(param1:Number) : Number
      {
         var _loc2_:int = Math.round(param1 * 10);
         return _loc2_ / 10;
      }
      
      public static function o2906(param1:Number) : Number
      {
         var _loc2_:int = Math.round(param1 * 100);
         return _loc2_ / 100;
      }
      
      public static function o928(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return (param1 - param3) * (param1 - param3) + (param2 - param4) * (param2 - param4);
      }
   }
}
