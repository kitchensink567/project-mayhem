package
{
   public class o9729
   {
       
      
      public var o19549:o20021;
      
      public var o20685:o20021;
      
      public function o9729()
      {
         o19549 = new o20021();
         o20685 = new o20021();
         super();
         var _loc1_:int = 1;
         o20685.y = _loc1_;
         o19549.x = _loc1_;
      }
      
      public static function o7036(param1:Number) : o9729
      {
         var _loc2_:o9729 = new o9729();
         _loc2_.o18596(param1);
         return _loc2_;
      }
      
      public static function o11695(param1:o20021, param2:o20021) : o9729
      {
         var _loc3_:o9729 = new o9729();
         _loc3_.o3391(param1,param2);
         return _loc3_;
      }
      
      public function o18596(param1:Number) : void
      {
         var _loc3_:Number = Math.cos(param1);
         var _loc2_:Number = Math.sin(param1);
         o19549.x = _loc3_;
         o20685.x = -_loc2_;
         o19549.y = _loc2_;
         o20685.y = _loc3_;
      }
      
      public function o3391(param1:o20021, param2:o20021) : void
      {
         o19549.o13101(param1);
         o20685.o13101(param2);
      }
      
      public function o2747() : o9729
      {
         var _loc1_:o9729 = new o9729();
         _loc1_.o19487(this);
         return _loc1_;
      }
      
      public function o19487(param1:o9729) : void
      {
         o19549.o13101(param1.o19549);
         o20685.o13101(param1.o20685);
      }
      
      public function o7248(param1:o9729) : void
      {
         o19549.x = o19549.x + param1.o19549.x;
         o19549.y = o19549.y + param1.o19549.y;
         o20685.x = o20685.x + param1.o20685.x;
         o20685.y = o20685.y + param1.o20685.y;
      }
      
      public function o4911() : void
      {
         o19549.x = 1;
         o20685.x = 0;
         o19549.y = 0;
         o20685.y = 1;
      }
      
      public function o14195() : void
      {
         o19549.x = 0;
         o20685.x = 0;
         o19549.y = 0;
         o20685.y = 0;
      }
      
      public function o17815() : Number
      {
         return Math.atan2(o19549.y,o19549.x);
      }
      
      public function o8330(param1:o9729) : o9729
      {
         var _loc6_:Number = o19549.x;
         var _loc4_:Number = o20685.x;
         var _loc2_:Number = o19549.y;
         var _loc3_:Number = o20685.y;
         var _loc5_:Number = _loc6_ * _loc3_ - _loc4_ * _loc2_;
         if(_loc5_ != 0)
         {
            _loc5_ = 1 / _loc5_;
         }
         param1.o19549.x = _loc5_ * _loc3_;
         param1.o20685.x = -_loc5_ * _loc4_;
         param1.o19549.y = -_loc5_ * _loc2_;
         param1.o20685.y = _loc5_ * _loc6_;
         return param1;
      }
      
      public function o6052(param1:o20021, param2:Number, param3:Number) : o20021
      {
         var _loc5_:Number = o19549.x;
         var _loc6_:Number = o20685.x;
         var _loc7_:Number = o19549.y;
         var _loc4_:Number = o20685.y;
         var _loc8_:Number = _loc5_ * _loc4_ - _loc6_ * _loc7_;
         if(_loc8_ != 0)
         {
            _loc8_ = 1 / _loc8_;
         }
         param1.x = _loc8_ * (_loc4_ * param2 - _loc6_ * param3);
         param1.y = _loc8_ * (_loc5_ * param3 - _loc7_ * param2);
         return param1;
      }
      
      public function o17599() : void
      {
         o19549.o17599();
         o20685.o17599();
      }
   }
}
