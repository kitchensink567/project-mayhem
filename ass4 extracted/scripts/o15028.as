package
{
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class o15028 extends o10384
   {
      
      public static var o3613:Boolean = false;
      
      private static const NONE:int = 0;
      
      private static const o17035:int = 1;
      
      private static const o6487:int = 2;
      
      private static const o18015:int = 3;
      
      private static const o11502:int = 0;
      
      private static const o2335:int = 1;
      
      private static const o2343:int = 2;
      
      private static const o17176:int = 3;
      
      private static const o7024:int = 10000;
      
      private static const o9916:int = 2000;
      
      public static var o16566:Number = 0;
       
      
      public var o11243:int = 0;
      
      public var o1589:int = 0;
      
      public var id:int = 0;
      
      public var o17050:Boolean = false;
      
      public var o11618:Boolean = false;
      
      private var o8812:String;
      
      private var o19909:String;
      
      private var o8098:int = 0;
      
      private var o19398:int = 0;
      
      private var o14622:o4332;
      
      private var o18235:o18442 = null;
      
      private var o10480:int = 0;
      
      private var o20669:Number = 0;
      
      private var o10799:int = 0;
      
      private var o12479:int = 0;
      
      private var o14905:Number = 0;
      
      private var o2458:Number = 10;
      
      private var o17194:Number = 0;
      
      private var o10279:int = 0;
      
      private var o18186:int = 0;
      
      private var o4172:Number = 0;
      
      private var o4747:Boolean = false;
      
      private var o790:Boolean = false;
      
      private var o3444:Number = 0;
      
      private var o4873:Number = 0;
      
      private var o15555:Boolean = false;
      
      private var o2510:Number = 0;
      
      public function o15028()
      {
         o8812 = "assets.maps.zombieEgg.bossEggTop";
         o19909 = "assets.maps.zombieEgg.bossEggDestroyed";
         super();
      }
      
      public function o16955(param1:int, param2:o18442) : void
      {
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16396 = o17541.o13617("assets.maps.zombieEgg.eggBase");
         o6691.o16990 = o11381.o7748;
         o6691.rotation = Math.random() * 3.14159265358979 * 2 - 3.14159265358979;
         var _loc3_:o10262 = o4519.o8116.o9869.o1968(0,0);
         var _loc5_:o17761 = new o17761(_loc3_.o2535);
         o30 = 68;
         _loc5_.o16716(o30);
         var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o18481,o8723.o10217 ^ o8723.o2823,o17517.o6365 | o8723.o17798);
         _loc4_.o10289 = _loc5_.id;
         _loc3_.o14230(_loc4_);
         _loc3_.o7191 = 10;
         o14622 = o4519.o8116.o11954.o10869();
         o14622.position = _loc3_.position;
         o14622.rotation = o6691.rotation;
         o14622.o16396 = o17541.o13617("assets.maps.zombieEgg.bossEggBase");
         o14622.o16990 = o11381.o3010;
         o4519.o8116.o11954.o9226(o14622);
         super.o10783(param1,_loc3_,o6691,o4519.o8116.o11676);
         o16166.o10589(o8812);
         o16166.gotoAndPlay(0);
         var _loc6_:int = o10176.o13327();
         if(_loc6_ <= 5)
         {
            o2458 = 10;
         }
         else if(_loc6_ <= 40)
         {
            o2458 = (1 - (_loc6_ - 6) / 34) * 5 + 5;
         }
         else if(_loc6_ > 40)
         {
            o2458 = 5;
         }
         o10279 = 0;
         o4873 = 75;
         o3444 = 75;
         o14905 = o2458;
         o17194 = 0;
         o8098 = 1;
         o4172 = 0;
         o18235 = param2;
         if(o18235)
         {
            o18235.o14116(o1589);
            o18235.o2287(o11243);
         }
         o6691.scaleX = 0.75;
         o6691.scaleY = 0.75;
         o14622.scaleX = 0.75;
         o14622.scaleY = 0.75;
      }
      
      public function o1912(param1:Boolean = false) : void
      {
         this.o17050 = param1;
         var _loc3_:Number = o10176.o13327() / 100 / o10176.o6407() / 2;
         var _loc2_:* = 0;
         if(o17050)
         {
            o10480 = o1051.o4767(this,0.1,o17293);
            o12479 = getTimer();
            o6691.scaleX = 1;
            o6691.scaleY = 1;
            o14622.scaleX = 1;
            o14622.scaleY = 1;
            _loc2_ = Number(10000 * o10176.o6572());
            o1589 = _loc2_ + _loc2_ * _loc3_;
            o11243 = _loc2_ + _loc2_ * _loc3_;
            o20669 = _loc2_ / 2 + _loc2_ * _loc3_;
            o2510 = _loc2_ / 2;
         }
         else
         {
            _loc2_ = Number(2000 * o10176.o6572());
            o1589 = _loc2_ + _loc2_ * _loc3_;
            o11243 = _loc2_ + _loc2_ * _loc3_;
         }
         if(o18235)
         {
            o18235.o14116(o1589);
            o18235.o2287(o11243);
         }
         o11618 = false;
      }
      
      public function o16557(param1:Number) : void
      {
         this.o10799 = param1;
      }
      
      public function o17293() : void
      {
         var _loc5_:int = 0;
         var _loc2_:* = null;
         var _loc8_:* = null;
         var _loc7_:Number = NaN;
         var _loc6_:int = 0;
         var _loc4_:* = null;
         var _loc1_:int = 0;
         var _loc3_:* = undefined;
         if(o11243 <= 0 || o11618)
         {
            return;
         }
         if(o4747 == false)
         {
            if(o790)
            {
               o4747 = true;
            }
            return;
         }
         o2449(0.1);
         o17194 = o17194 + 0.1;
         if(o790)
         {
            if(o17194 > o14905)
            {
               o17194 = 0;
               _loc8_ = [];
               _loc2_ = o4519.o8116.o2996.o20698(o17517);
               _loc5_ = 0;
               while(_loc5_ < _loc2_.length)
               {
                  _loc8_.push(_loc5_);
                  _loc5_++;
               }
               _loc7_ = o4519.o8116.random.o10418(o5973 + o18186);
               _loc6_ = _loc8_[int(_loc7_ * _loc8_.length)];
               _loc4_ = new ByteArray();
               _loc1_ = 1;
               _loc4_.writeInt(_loc1_);
               _loc4_.writeInt(_loc6_);
               _loc3_ = this;
               dispatchData(new o2149(_loc3_,_loc4_));
            }
         }
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc8_:int = 0;
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc9_:* = null;
         var _loc5_:int = 0;
         var _loc4_:int = param2.readInt();
         switch(int(_loc4_) - 1)
         {
            case 0:
               _loc8_ = param2.readInt();
               o18186 = Number(o18186) + 1;
               _loc9_ = [];
               _loc3_ = o4519.o8116.o2996.o20698(o17517);
               _loc5_ = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc9_.push(_loc5_);
                  _loc5_++;
               }
               if(o6691 != null)
               {
                  _loc7_ = _loc3_[_loc9_[_loc8_]];
                  if(_loc7_)
                  {
                     _loc6_ = new o7231();
                     _loc6_.o7554(new o18509(_loc7_.body.position.x,_loc7_.body.position.y),this);
                  }
               }
               break;
            case 1:
               o8565();
         }
      }
      
      public function o20736() : void
      {
         o4747 = true;
         o4519.o13206.o15777(o16450.o17386);
      }
      
      public function o8565() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(o790 == false && o17050)
         {
            o790 = true;
            if(o4519.o32.o1217 == 0)
            {
               _loc1_ = 8;
            }
            else if(o4519.o32.o1217 == 1)
            {
               _loc1_ = 10;
            }
            else if(o4519.o32.o1217 == 2)
            {
               _loc1_ = 9;
            }
            _loc2_ = o4519.o8116.profileData.o10206("dialogMessage.podsMessages.messageBossEggFound");
            o4519.o8116.o20488.o2251(_loc1_,_loc2_);
         }
      }
      
      public function o6143() : void
      {
         var _loc3_:ByteArray = new ByteArray();
         var _loc2_:int = 2;
         _loc3_.writeInt(_loc2_);
         var _loc1_:* = this;
         dispatchData(new o2149(_loc1_,_loc3_));
      }
      
      private function o2449(param1:Number) : void
      {
         o3444 = o3444 - param1;
         if(o3444 <= 0)
         {
            o20970(1);
         }
      }
      
      override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
      {
      }
      
      override public function o5725(param1:o4016) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o11243 <= 0 || o11618 || o4747 == false && o17050)
         {
            if(o15555)
            {
               o19542();
               o15555 = true;
            }
            return;
         }
         o10492(param1.o9968);
         if(o17050 == false)
         {
            o3613 = true;
         }
         if(param1.o9968 == false)
         {
            _loc3_ = o15460.o16789;
            _loc3_.x = o30;
            _loc3_.y = 0;
            _loc3_.rotate(param1.o1487);
            _loc3_.x = _loc3_.x + body.position.x;
            _loc3_.y = _loc3_.y + body.position.y;
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.eggBurst"]) as o2130;
            if(_loc2_)
            {
               _loc2_.o6691.position.x = _loc3_.x;
               _loc2_.o6691.position.y = _loc3_.y;
               _loc2_.o6691.rotation = 3.14159265358979 + param1.o1487;
            }
         }
         o317(param1.amount,param1.o1487);
      }
      
      public function o20970(param1:Number = 1.0) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(o11618)
         {
            return;
         }
         o11618 = true;
         o16855();
         if(o10480 != 0)
         {
            o1051.o19115(o10480);
         }
         o16566 = param1;
         dispatchData(new o8324(new o18509(o6691.position.x,o6691.position.y)));
         if(o17050)
         {
            o16642(o4519.o8116.o2996.o20698(o15028));
         }
         o14622.o16396 = o17541.o13617(o19909);
         o16166.o19115();
         o4519.o8116.o11954.o17454(o6691);
         o6691.o19115();
         o6691 = null;
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.bossEggSplosionBig"]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = _loc3_ * (3.14159265358979 * 0.5);
            }
            _loc3_++;
         }
         o11243 = 0;
         body.o19115();
         o18235.o19115();
      }
      
      protected function o20104() : Boolean
      {
         return o4519.o13206.o4326 == 2?true:false;
      }
      
      override public function o19115() : void
      {
         o4519.o8116.o11954.o17454(o14622);
         o14622.o19115();
         super.o19115();
      }
      
      public function o5254() : void
      {
         var _loc1_:* = 0;
         if(o17050)
         {
            if(o11243 >= o2510 / 2)
            {
               _loc1_ = Number(o20669 * 0.25);
               if(o11243 - _loc1_ <= o2510)
               {
                  _loc1_ = Number(o11243 - o2510);
               }
            }
            o317(_loc1_,0,true);
         }
      }
      
      protected function o317(param1:Number, param2:Number = 0, param3:Boolean = false) : void
      {
         var _loc4_:* = NaN;
         if(o11243 < 0)
         {
            return;
         }
         o11243 = o11243 - param1;
         if(o11243 <= 0)
         {
            _loc4_ = 1;
            if(o17050)
            {
               _loc4_ = Number((1 - o3444 / o4873) * 0.75 + 0.75);
            }
            o20970(1);
         }
         if(!param3 && o790 == false)
         {
            o6143();
         }
         var _loc5_:Number = 1 - o11243 / o1589;
         if(_loc5_ < 0.28)
         {
            o19398 = 0;
            o14905 = o2458;
         }
         else if(_loc5_ < 0.56)
         {
            o19398 = 1;
            o14905 = o2458 * 0.8;
         }
         else if(_loc5_ < 0.84)
         {
            o19398 = 2;
            o14905 = o2458 * 0.6;
         }
         else
         {
            o19398 = 3;
            o14905 = o2458 * 0.4;
         }
         if(o18235)
         {
            o18235.o14116(o1589);
            o18235.o2287(o11243);
         }
      }
      
      public function o16642(param1:Array) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1[_loc2_].o17050 == false)
            {
               param1[_loc2_].o20970();
            }
            _loc2_++;
         }
      }
      
      private function o10492(param1:Boolean = false) : void
      {
         var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         if(!param1)
         {
            o4519.o8116.o4812.o14142.o4202.play(0.85,0,0,false,_loc2_.o10088());
         }
      }
      
      private function o16855() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o14142.o6633.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
}
