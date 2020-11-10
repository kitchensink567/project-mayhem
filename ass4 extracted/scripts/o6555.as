package
{
   import flash.display.Sprite;
   
   public class o6555 extends Sprite
   {
       
      
      public function o6555()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8487;
      }
   }
}

class o8487 extends o6743
{
    
   
   private const o12793:Number = 400;
   
   private var o6433:Boolean = false;
   
   private var o1361:Boolean = true;
   
   private var o12713:o10262;
   
   function o8487()
   {
      super();
   }
   
   public function o16955(param1:int, param2:o18509, param3:int, param4:int = 1, param5:int = -1, param6:o12443 = null, param7:Boolean = false) : void
   {
      super.o9714(param1);
      o12713 = o4519.o8116.o9869.o1968(1,0,false);
      var _loc9_:o17761 = new o17761(body.o2535);
      _loc9_.o16716(24);
      var _loc8_:o4039 = o4519.o8116.o20600.o15803(o6365,o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969,o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969,true);
      _loc8_.o10289 = _loc9_.id;
      o12713.o14230(_loc8_);
      body.o13392(param2);
      o12713.o13392(param2);
      o16809 = new o14331(param6);
      o16809.o9449 = false;
      o16809.o5408 = false;
      var _loc10_:* = param3;
      switch(_loc10_)
      {
         case o19053.o14669:
            super.o12675(param3,param6,1);
            o1361 = false;
            break;
         case o19053.o17861:
            o4052 = o19053.o17861;
            o16809.type = o19053.o17861;
            o16809.value = param4;
            break;
         case o19053.o14419:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = 12;
            o16809.value = 100 + Math.random() * 150 % 150;
            o16809.o8944 = true;
            break;
         case o19053.o15635:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = o7227(param5);
            o16809.value = 1;
            break;
         case o19053.o2752:
            break;
         case o19053.o15402:
            break;
         case o19053.o13265:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = 11;
            o16809.value = 1;
            break;
         case o19053.o15724:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = 1;
            o16809.value = param4;
            break;
         case o19053.o2438:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = 2;
            o16809.value = param4;
            break;
         case o19053.o10094:
            o4052 = o19053.o14325;
            o16809.type = o19053.o14325;
            o16809.o17401 = 13;
            o16809.value = param4;
      }
      o11464(param3,param6,1);
      this.o6433 = param7;
      if(param7)
      {
         o123();
      }
      o1051.o4767(this,0.25,o13785);
   }
   
   public function o11464(param1:int, param2:o12443, param3:Number = 1) : void
   {
      if(!o1361)
      {
         super.o12675(param1,param2,param3);
      }
      else
      {
         this.o4052 = param1;
         o6691 = o4519.o8116.o11954.o10869();
         o15611(o16809);
         o6691.scaleX = 1.5;
         o6691.scaleY = 1.5;
         o6691.o16990 = o16810;
         o6691.rotation = -1.5707963267949;
         o1051.o4767(this,0.0333333333333333,super.o18285,30 * o2918);
         o6691.position = body.position;
         o16166.o11525(o6691);
         o4519.o8116.o11954.o9226(o6691);
         if(param2 != null && param2.o7743 > 0)
         {
            o16950(o16809);
         }
      }
      body.o16280(this,o8273.o7087,o17025);
   }
   
   private function o13785() : void
   {
      var _loc1_:* = null;
      if(!o6433)
      {
         if(o15986 || o4519.o8116.o9869.o16561(o12713))
         {
            if(o16809.type == o19053.o14325 && o16809.o17401 == 11 && o4519.o32.o10691() >= 1)
            {
               body.o6141(0,0);
               o12713.o8564(body.position.x,body.position.y);
               return;
            }
            _loc1_ = o15460.o4078;
            _loc1_.x = o4519.o32.body.o2697.x - body.o2697.x;
            _loc1_.y = o4519.o32.body.o2697.y - body.o2697.y;
            _loc1_.o3215 = 400;
            body.o6141(_loc1_.x,_loc1_.y);
            o12713.o6141(_loc1_.x,_loc1_.y);
         }
         else
         {
            body.o6141(0,0);
            o12713.o8564(body.position.x,body.position.y);
         }
      }
   }
   
   public function o123() : void
   {
      o6433 = true;
      o1051.o9310(this,1,function():void
      {
         o6433 = false;
      });
   }
   
   private function o7227(param1:int) : int
   {
      var _loc2_:int = -1;
      switch(int(param1) - 2)
      {
         case 0:
            _loc2_ = 4;
            break;
         case 1:
            if(Math.random() >= 0.5)
            {
               _loc2_ = 10;
            }
            else
            {
               _loc2_ = 9;
            }
            break;
         default:
            _loc2_ = 4;
            break;
         case 3:
            _loc2_ = 6;
            break;
         case 4:
         default:
            _loc2_ = 7;
            break;
         case 6:
            if(Math.random() >= 0.5)
            {
               _loc2_ = 8;
            }
            else
            {
               _loc2_ = 5;
            }
      }
      return _loc2_;
   }
}
