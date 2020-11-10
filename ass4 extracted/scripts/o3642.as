package
{
   import flash.utils.ByteArray;
   
   public class o3642 extends o15755
   {
      
      public static const o11027:int = o19504.o4386();
      
      public static const o286:int = o19504.o4386();
      
      public static const o16954:int = 1;
      
      public static const o12298:int = 2;
       
      
      private var o10940:o4332;
      
      private var o14868:o4332;
      
      private var o8836:o4332;
      
      private var o3385:o7331;
      
      private var o10975:o4332;
      
      private var o264:o7331;
      
      private var o17713:o18509;
      
      private var o3709:o18509;
      
      private var o10449:o18509;
      
      private var o530:Array;
      
      private var o177:Vector.<o9686>;
      
      private var o13508:Number;
      
      private var o5298:Number;
      
      private const o11408:Number = 400;
      
      private var o14994:Boolean = false;
      
      private var o800:o18509;
      
      private var o12636:int = 0;
      
      private var o5720:o10262;
      
      private var o11019:int = -1;
      
      public var o11398:Boolean = false;
      
      public var o18131:Vector.<o17517>;
      
      public var o20604:Boolean = false;
      
      private var o11425:int = 0;
      
      public function o3642()
      {
         o530 = [new o18509(-185,-60),new o18509(-185,-100),new o18509(-185,60),new o18509(-185,100)];
         o177 = new Vector.<o9686>();
         o800 = new o18509();
         super();
      }
      
      override public function o16955(param1:int, param2:ByteArray = null) : void
      {
         super.o16955(param1);
      }
      
      public function init(param1:o18509, param2:o18509, param3:o18509) : void
      {
         this.o17713 = param1;
         this.o3709 = param2;
         this.o10449 = param3;
         o11398 = false;
         o10940 = o4519.o8116.o11954.o10869();
         o14868 = o4519.o8116.o11954.o10869();
         o10940.o16396 = o17541.o13617("assets.maps.labs.spaceship");
         o14868.o16396 = o17541.o13617("assets.maps.labs.spaceship");
         o10940.position = new o2415();
         o14868.position = new o2415();
         o10940.position.x = param1.x;
         o10940.position.y = param1.y;
         o14868.position.x = param1.x;
         o14868.position.y = param1.y;
         o10940.o16990 = 300;
         o14868.o16990 = 300;
         o14868.scaleY = -1;
         o4519.o8116.o11954.o9226(o10940);
         o4519.o8116.o11954.o9226(o14868);
         var _loc4_:o18509 = o15460.o4078;
         _loc4_.x = param2.x - param1.x;
         _loc4_.y = param2.y - param1.y;
         o10940.rotation = _loc4_.rotation;
         o14868.rotation = _loc4_.rotation;
         o8836 = o4519.o8116.o11954.o10869();
         o8836.o16396 = o17541.o13617("assets.maps.labs.Booster");
         o8836.position = new o2415();
         o8836.o16990 = 301;
         o8836.o2158 = 7;
         o4519.o8116.o11954.o9226(o8836);
         o4519.o8116.o11954.align(o8836,o10940);
         o3385 = o4519.o8116.o11676.o6798("assets.maps.labs.Booster");
         o3385.o11525(o8836);
         o3385.play();
         o10975 = o4519.o8116.o11954.o10869();
         o10975.o16396 = o17541.o13617("assets.maps.labs.Booster");
         o10975.position = new o2415();
         o10975.o16990 = 301;
         o10975.o2158 = 7;
         o10975.scaleY = -1;
         o4519.o8116.o11954.o9226(o10975);
         o4519.o8116.o11954.align(o10975,o10940);
         o264 = o4519.o8116.o11676.o6798("assets.maps.labs.Booster");
         o264.o11525(o10975);
         o264.play();
         o18131 = new Vector.<o17517>();
      }
      
      public function o14891() : void
      {
         o13508 = 0;
         o14994 = false;
         o800.x = o3709.x - o17713.x;
         o800.y = o3709.y - o17713.y;
         var _loc1_:Number = o800.o3215;
         o5298 = _loc1_ / 400;
         o4519.o8116.o4812.o4404.o11681.play(0.85);
         o12636 = o1051.o4767(this,0.0333333333333333,o12886,(o5298 + 1) * 30);
      }
      
      private function o12886() : void
      {
         var _loc2_:* = 0.0333333333333333;
         o13508 = o13508 + _loc2_;
         if(o13508 >= o5298)
         {
            o14994 = true;
            o13508 = o5298;
         }
         var _loc1_:Number = o13508 / o5298;
         _loc1_ = Math.pow(_loc1_,0.5);
         o10940.position.x = o17713.x + _loc1_ * o800.x;
         o10940.position.y = o17713.y + _loc1_ * o800.y;
         o14868.position.x = o17713.x + _loc1_ * o800.x;
         o14868.position.y = o17713.y + _loc1_ * o800.y;
         if(o14994)
         {
            o13916();
         }
      }
      
      private function o13916() : void
      {
         o1051.o19115(o12636);
         o4519.o8116.o11954.o17454(o8836);
         o4519.o8116.o11954.o17454(o10975);
         o11398 = true;
         o5720 = o4519.o8116.o9869.o1968(0,0,false);
         var _loc2_:o17761 = new o17761(o5720.o2535);
         _loc2_.o16716(150);
         var _loc1_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
         _loc1_.o10289 = _loc2_.id;
         o5720.o14230(_loc1_);
         o5720.o13392(o3709);
         o4519.o8116.o4812.o4404.o15171.play(0.5);
         o4519.o8116.o8756.o2282.o8445();
         o5720.o16280(this,o8273.o7087,o7787);
         o11019 = o1051.o4767(this,1,o12364);
      }
      
      private function o7787(param1:o663) : void
      {
         var _loc2_:* = null;
         if(param1.o11541 == o4519.o32.body)
         {
            o4519.o13206.o2034 = false;
            o4519.o13206.o19155 = false;
            o4519.o13206.o17216 = false;
            o4519.o32.o19587 = false;
            o4519.o32.body.o15838(0);
            o4519.o32.body.o13392(o3709);
            o4519.o32.body.o6141(0,0);
            o4519.o8116.o20488.o12056("vaccineMapArrowDropShip");
            _loc2_ = new ByteArray();
            _loc2_.writeByte(1);
            _loc2_.writeInt(o17517(o4519.o8116.o2996.o14389(param1.o11541)).o5973);
            dispatchData(new o2149(this,_loc2_,true,true));
         }
      }
      
      private function o1096(param1:int) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o14443.o2929(param1));
         if(o18131.indexOf(_loc2_) == -1)
         {
            o18131.push(_loc2_);
            _loc2_.o11711();
            _loc2_.o19587 = false;
            _loc2_.body.o15838(0);
            _loc2_.body.o13392(o3709);
            _loc2_.body.o6141(0,0);
            o15777(o286);
         }
      }
      
      private function o12364() : void
      {
         var _loc1_:* = null;
         if(o4519.o13206.o2685.o7629() <= o18131.length)
         {
            o1051.o19115(o11019);
            _loc1_ = new ByteArray();
            _loc1_.writeByte(2);
            dispatchData(new o2149(this,_loc1_,true,false,2));
         }
      }
      
      public function o13141(param1:o17517) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o18131.length)
         {
            if(o18131[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function o2079() : void
      {
         if(o20604)
         {
            return;
         }
         o20604 = true;
         o1051.o19115(o11019);
         o1051.o19115(o12636);
         o4519.o8116.o11954.o9226(o8836);
         o4519.o8116.o11954.o9226(o10975);
         o4519.o8116.o11954.align(o8836,o10940);
         o4519.o8116.o11954.align(o10975,o10940);
         if(o5720)
         {
            o5720.o12657(o8273.o7087,o7787);
            o5720.o19115();
         }
         o13508 = 0;
         o14994 = false;
         o800.x = o10449.x - o10940.position.x;
         o800.y = o10449.y - o10940.position.y;
         var _loc1_:Number = o800.o3215;
         o5298 = _loc1_ / 400;
         o4519.o8116.o8756.o2282.o17511();
         o4519.o8116.o4812.o4404.o7092.play(0.7);
         o11425 = o1051.o4767(this,0.0333333333333333,o5989,(o5298 + 1) * 30);
      }
      
      private function o5989() : void
      {
         var _loc2_:* = 0.0333333333333333;
         o13508 = o13508 + _loc2_;
         if(o13508 >= o5298)
         {
            o14994 = true;
            o13508 = o5298;
         }
         var _loc1_:Number = o13508 / o5298;
         _loc1_ = Math.pow(_loc1_,2);
         o10940.position.x = o3709.x + _loc1_ * o800.x;
         o10940.position.y = o3709.y + _loc1_ * o800.y;
         o14868.position.x = o3709.x + _loc1_ * o800.x;
         o14868.position.y = o3709.y + _loc1_ * o800.y;
         o10940.rotation = o10940.rotation + _loc1_ * o8839(o800.rotation - o10940.rotation);
         o14868.rotation = o10940.rotation;
         o8836.rotation = o10940.rotation;
         o10975.rotation = o10940.rotation;
         var _loc5_:int = 0;
         var _loc4_:* = o18131;
         for each(var _loc3_ in o18131)
         {
            _loc3_.body.o8564(o10940.position.x,o10940.position.y);
         }
         if(o14994)
         {
            o19521();
         }
      }
      
      private function o19521() : void
      {
         o1051.o19115(o11425);
         o15777(o11027);
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc3_:int = param2.readByte();
         switch(int(_loc3_) - 1)
         {
            case 0:
               o1096(param2.readInt());
               break;
            case 1:
               o2079();
         }
      }
      
      override public function o19115() : void
      {
         super.o19115();
         o10940.o19115();
         o14868.o19115();
         o8836.o19115();
         o3385.o19115();
         o10975.o19115();
         o264.o19115();
      }
      
      private function o8839(param1:Number) : Number
      {
         while(param1 > 3.14159265358979)
         {
            param1 = param1 - 2 * 3.14159265358979;
         }
         while(param1 <= -3.14159265358979)
         {
            param1 = param1 + 2 * 3.14159265358979;
         }
         return param1;
      }
      
      public function o13993() : void
      {
         o13508 = 0;
         o5298 = 1884.95559215388 / 400;
         o1051.o4767(this,0.0333333333333333,o17948,2147483647);
      }
      
      private function o17948() : void
      {
         var _loc2_:* = 0.0333333333333333;
         o13508 = o13508 + _loc2_;
         var _loc1_:Number = o13508 % o5298 / o5298;
         o10940.position.x = 1400 + Math.sin(_loc1_ * 2 * 3.14159265358979) * 300;
         o10940.position.y = 2116 + -Math.cos(_loc1_ * 2 * 3.14159265358979) * 300;
         o14868.position.x = 1400 + Math.sin(_loc1_ * 2 * 3.14159265358979) * 300;
         o14868.position.y = 2116 + -Math.cos(_loc1_ * 2 * 3.14159265358979) * 300;
         o10940.rotation = _loc1_ * 2 * 3.14159265358979;
         o14868.rotation = o10940.rotation;
      }
   }
}
