package
{
   public class o7231 extends o8023
   {
       
      
      private var o406:o10262;
      
      private var o9464:o18509;
      
      private var o10759:o18509;
      
      private var o3120:Number = 80;
      
      private var o19190:Boolean = false;
      
      private var target:o7848 = null;
      
      private var o12226:Number = 0.19634954084936207;
      
      private var o1206:Number = 0.25;
      
      private var o14926:o18509;
      
      private var o14767:o18509;
      
      private var o19754:o7848 = null;
      
      private var o14326:Number = 1;
      
      private var o2803:Number = 1000;
      
      private var o12479:int = 0;
      
      private var o17194:Number = 0;
      
      public function o7231()
      {
         o14926 = new o18509();
         o14767 = new o18509();
         super();
      }
      
      public function o7554(param1:o18509, param2:o7848) : void
      {
         o7597 = param1;
         o5001 = param2;
         o14926.x = o7597.x;
         o14926.y = o7597.y;
         o19754 = o5001;
         if(o19754 && o19754.o6691)
         {
            o14767.x = o19754.o6691.position.x;
            o14767.y = o19754.o6691.position.y;
         }
         else
         {
            o14767.x = 0;
            o14767.y = 0;
         }
         var o13236:o18509 = new o18509(o7597.x - o19754.o6691.position.x,o7597.y - o5001.o6691.position.y);
         var length:Number = o13236.o3215;
         o13236.o14528();
         var o18446:int = length / 50;
         var o1915:int = 0;
         var o19505:o12600 = this;
         o1051.o4767(this,0.02,function():void
         {
            var _loc1_:o18509 = o15460.o4078;
            _loc1_.x = o13236.x * (o1915 * 50) + Math.random() * 20 - 10 + o14767.x;
            _loc1_.y = o13236.y * (o1915 * 50) + Math.random() * 20 - 10 + o14767.y;
            var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.bossEggSpikeLongCracks",o11381.o8973,Math.random() * 4]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = _loc1_.x;
               _loc2_.o6691.position.y = _loc1_.y;
               _loc2_.o6691.rotation = o13236.rotation;
            }
            o1915 = Number(o1915) + 1;
            if(o1915 == o18446)
            {
               o2606(o7597);
               o1051.o9310(o19505,o14326,o10962);
            }
         },o18446,true);
         var o12034:o257 = new o257(o14926.x,o14926.y);
         o4519.o8116.o4812.o10460.o9137.play(0.5,0,0,false,o12034.o10088());
      }
      
      public function o10962() : void
      {
         o4519.o8116.o2996.o9685(o17517,o14926.x,o14926.y,150,o8723.o42,0).defer(function(param1:Array):void
         {
            var _loc4_:int = 0;
            var _loc3_:* = null;
            var _loc2_:Number = NaN;
            var _loc5_:Number = NaN;
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               if(param1[_loc4_] == o4519.o32)
               {
                  _loc3_ = new o18509(param1[_loc4_].body.position.x - o14926.x,param1[_loc4_].body.position.y - o14926.x);
                  _loc2_ = _loc3_.o3215;
                  _loc5_ = o2803 * o10176.o6572() / o10176.o6407();
                  _loc2_ = Math.min(130,Math.max(0,_loc2_));
                  _loc5_ = (150 - _loc2_) / 150 * _loc5_;
                  if(o4519.o13206.o2685.o4326 == 2)
                  {
                     _loc5_ = _loc5_ * 4;
                  }
                  o4519.o8116.o8361.o5725(param1[_loc4_],o4016.o10062().initialise(_loc5_,1,o19754));
               }
               _loc4_++;
            }
         });
      }
      
      private function o2606(param1:o18509) : void
      {
         var _loc5_:int = 0;
         var _loc2_:Number = NaN;
         var _loc6_:* = null;
         var _loc4_:o12906 = o4519.o8116.o13427.o11961(o12906,[o14326,param1.x,param1.y]) as o12906;
         o1051.o9310(this,o14326,o19953);
         var _loc7_:o18509 = new o18509(1,0);
         var _loc3_:Number = Math.random() * 0.5 - 0.25;
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            _loc7_.rotation = _loc5_ * 3.14159265358979 * 0.33333 + Math.random() * 0.1 - 0.05 + _loc3_;
            _loc2_ = 70 * (Math.random() * 0.2 + 0.8);
            _loc6_ = o4519.o8116.o13427.o11961(o12906,[o14326,param1.x + _loc7_.x * _loc2_,param1.y + _loc7_.y * _loc2_]) as o12906;
            _loc5_++;
         }
         _loc3_ = _loc3_ + (Math.random() * 0.5 - 0.25);
         _loc5_ = 0;
         while(_loc5_ < 10)
         {
            _loc7_.rotation = _loc5_ * 3.14159265358979 * 0.2 + Math.random() * 0.05 - 0.025 + _loc3_;
            _loc2_ = 140 * (Math.random() * 0.2 + 0.8);
            _loc6_ = o4519.o8116.o13427.o11961(o12906,[o14326,param1.x + _loc7_.x * _loc2_,param1.y + _loc7_.y * _loc2_]) as o12906;
            _loc5_++;
         }
      }
      
      private function o19953() : void
      {
         var _loc1_:o257 = new o257(o14926.x,o14926.y);
         o4519.o8116.o4812.o10460.o13016.play(1,0,0,false,_loc1_.o10088());
      }
   }
}
