package
{
   import flash.media.SoundTransform;
   
   public class o257
   {
       
      
      private var o13473:Number = 0;
      
      private var o2271:Number = 0.5;
      
      private var o3910:Number = 4000000;
      
      private var o2073:Number = 250000;
      
      public function o257(param1:Number, param2:Number)
      {
         super();
         o8997(param1,param2);
      }
      
      private function o8997(param1:Number, param2:Number) : void
      {
         if(o4519.o32 == null || o4519.o32.o6691 == null)
         {
            return;
         }
         var _loc5_:Number = o4519.o32.o6691.position.x;
         var _loc8_:Number = o4519.o32.o6691.position.y;
         var _loc4_:* = Number(param1 - _loc5_);
         var _loc7_:Number = param2 - _loc8_;
         var _loc3_:Number = _loc4_ * _loc4_ + _loc7_ * _loc7_;
         if(_loc3_ > o3910)
         {
            _loc3_ = o3910;
         }
         else if(_loc3_ < o2073)
         {
            _loc3_ = o2073;
         }
         var _loc6_:Number = 1 / _loc3_;
         _loc6_ = (_loc6_ - 2.5e-7) / 3.75e-6;
         o2271 = _loc6_;
         if(_loc4_ < 150 && _loc4_ > -150)
         {
            _loc4_ = 0;
         }
         else
         {
            _loc4_ = Number((_loc4_ - 150) / 150);
         }
         if(_loc4_ < -1)
         {
            _loc4_ = -1;
         }
         else if(_loc4_ > 1)
         {
            _loc4_ = 1;
         }
         o13473 = _loc4_;
      }
      
      public function o10088() : SoundTransform
      {
         var _loc1_:* = null;
         _loc1_ = new SoundTransform(o2271,o13473);
         return _loc1_;
      }
   }
}
