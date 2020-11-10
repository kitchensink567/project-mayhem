package
{
   import flash.utils.ByteArray;
   
   public class o12779 extends o7848 implements o6270, o1452
   {
      
      public static var o2154:o12600 = new o8023();
      
      public static const o882:Number = 11;
      
      public static const o3621:Number = 50;
      
      private static var o19429:Vector.<String>;
       
      
      private const o10884:int = 1;
      
      private const o5393:int = 61;
      
      private const o7969:int = 123;
      
      private const o20883:uint = 0;
      
      private const o5376:uint = 1;
      
      private const o383:uint = 2;
      
      private const o17532:uint = 3;
      
      private var o20488:uint = 0;
      
      private var o17074:Number = 40;
      
      private var o8812:String;
      
      private var o6274:String;
      
      private var o3380:String;
      
      private var o782:String;
      
      private var o8:String;
      
      private var o10849:o18509;
      
      private var o6790:o2041;
      
      private var o4690:o972;
      
      private var o19811:o4332;
      
      private var o20384:o7600;
      
      private var o3874:o7600;
      
      private var o20160:o3047;
      
      private var o17714:int;
      
      private const o16086:int = 30;
      
      private const o3893:Number = 100;
      
      private var o20350:o4039;
      
      private var o12545:o4039;
      
      private var o11110:o4039;
      
      private var o17707:Number = 0;
      
      private var o5808:Boolean = false;
      
      private var o16630:Number = 0;
      
      private var o13631:o18509;
      
      private var o1917:o18509;
      
      public function o12779()
      {
         o13631 = new o18509(0,0);
         o1917 = new o18509();
         super();
      }
      
      public static function o8038() : Vector.<String>
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         o19429 = new Vector.<String>();
         _loc2_ = 1;
         while(_loc2_ <= 11)
         {
            _loc1_ = _loc2_ < 10?"0" + _loc2_.toString():_loc2_.toString();
            o19429.push("assets.civilians.human" + _loc1_ + ".Idle");
            o19429.push("assets.civilians.human" + _loc1_ + ".Walk");
            o19429.push("assets.civilians.human" + _loc1_ + ".Transform");
            o19429.push("assets.civilians.human" + _loc1_ + ".Cower");
            _loc2_++;
         }
         o19429.push("assets.common.BloodDecal1");
         o19429.push("assets.common.BloodSplosion1");
         o19429.push("assets.shadows.Shadow");
         o19429.push("assets.maps.survivors2.dust");
         return o19429;
      }
      
      public function o16955(param1:int, param2:o18509, param3:o18509, param4:o2041, param5:int, param6:o3047, param7:int) : void
      {
         o20384 = new o7600(param1);
         o3874 = new o7600(param1 + 69);
         o20488 = 0;
         o17707 = o20384.random() * 5;
         o5808 = false;
         this.o20160 = param6;
         this.o17714 = param7;
         o8812 = o19429[(param5 - 1) * 4];
         o6274 = o19429[(param5 - 1) * 4 + 1];
         o3380 = o19429[(param5 - 1) * 4 + 1];
         o782 = o19429[(param5 - 1) * 4 + 2];
         o8 = o19429[(param5 - 1) * 4 + 3];
         this.o10849 = param3;
         this.o6790 = param4;
         body = o4519.o8116.o9869.o1968(1,1.4);
         var _loc9_:o17761 = new o17761(body.o2535);
         _loc9_.o16716(o17074 / 2);
         o11110 = o4519.o8116.o20600.o15803(o8723.o12624,o8723.o10217 ^ (o8723.o32 | o8723.o18481 | o8723.o478),o8723.o42 | o8723.o17079 | o8723.o7778 | o8723.o9077,false,15,0.2);
         o11110.o10289 = _loc9_.id;
         body.o14230(o11110);
         o1953();
         var _loc8_:o4332 = o4519.o8116.o11954.o10869();
         o10783(param1,body,_loc8_,o4519.o8116.o11676);
         _loc8_.o16990 = o11381.o3747;
         _loc8_.rotation = o20384.random();
         o16166.o10589(o8812);
         o16166.o12265 = true;
         o16166.o3030("idle");
         o16166.play();
         body.o13392(param2);
         if(o4519.o13206.multiplayer)
         {
            _loc8_.position = new o6403(this,body.position);
         }
         o19811 = o4519.o8116.o11954.o10869();
         o19811.position = _loc8_.position;
         o19811.o16990 = o11381.o2670;
         o19811.o16396 = o17541.o13617("assets.shadows.Shadow");
         o4519.o8116.o11954.o9226(o19811);
         o1051.o4767(this,1 / 30,o7664);
         o1051.o4767(this,0.5,o7838);
         o1051.o9310(this,60,o16462);
      }
      
      private function o1953() : void
      {
         var _loc1_:o17761 = new o17761(body.o2535);
         _loc1_.o16716(100);
         o20350 = o4519.o8116.o20600.o15803(o8723.o3208,o8723.o2823,o8723.o2823,true);
         o20350.o10289 = _loc1_.id;
         body.o14230(o20350);
         o20350.o16280(this,o2841.o1516,o77);
         _loc1_ = new o17761(body.o2535);
         _loc1_.o16716(o17074 / 2);
         o12545 = o4519.o8116.o20600.o15803(o8723.o3208,o8723.o32,o8723.o32,true);
         o12545.o10289 = _loc1_.id;
         body.o14230(o12545);
         o12545.o16280(this,o2841.o1516,o4949);
      }
      
      private function o7664() : void
      {
         var _loc3_:Number = NaN;
         var _loc1_:Number = NaN;
         var _loc2_:* = 0.0333333333333333;
         switch(int(o20488))
         {
            case 0:
               o17707 = o17707 - _loc2_;
               if(o17707 < 0)
               {
                  o5808 = !o5808;
                  if(o5808)
                  {
                     o17707 = (int(o3874.random() * 3) + 1) * 0.8;
                     _loc1_ = o3874.random() * 3.14159265358979 * 2;
                     o13631.x = o4519.o8116.o4550(1.4);
                     o13631.rotate(_loc1_);
                     o6691.rotation = o13631.rotation;
                     o16166.o10589(o6274);
                     o16166.frameRate = 0.0666666666666667;
                  }
                  else
                  {
                     o17707 = o3874.o3471(5,9);
                     o13631.x = 0;
                     o13631.y = 0;
                     o16166.o10589(o8812);
                     o16166.o3030("idle");
                     o16166.frameRate = 1 / 30;
                  }
               }
               body.o6141(o13631.x,o13631.y);
               break;
            case 1:
               o16630 = o16630 - _loc2_;
               if(o16630 > 0)
               {
                  _loc3_ = o4519.o8116.o4550(4.5);
                  o13631.x = body.position.x - o1917.x;
                  o13631.y = body.position.y - o1917.y;
                  o13631.o3215 = _loc3_;
                  body.o6141(o13631.x,o13631.y);
                  o6691.rotation = o13631.rotation;
                  o16166.o10589(o3380);
                  o16166.frameRate = 0.0166666666666667;
               }
               else
               {
                  o17707 = o3874.o3471(2,4);
                  o20488 = 0;
                  o13631.x = 0;
                  o13631.y = 0;
                  body.o6141(o13631.x,o13631.y);
                  o16166.o10589(o782);
                  o16166.frameRate = 1 / 30;
               }
               break;
            case 2:
               if(o4690 == null || o4690.o16255.length == 0)
               {
                  body.o6141(0,0);
                  var _loc4_:int = 0;
                  o13631.y = _loc4_;
                  o13631.x = _loc4_;
                  o16166.o10589(o8812);
                  o16166.o3030("idle");
                  o16166.frameRate = 1 / 30;
                  break;
               }
               _loc3_ = o4519.o8116.o4550(4.5);
               o13631.x = o4690.o16255[0].x - body.position.x;
               o13631.y = o4690.o16255[0].y - body.position.y;
               if(o13631.o17573 <= 100)
               {
                  o4690.o16255.shift();
               }
               o13631.o3215 = _loc3_;
               body.o6141(o13631.x,o13631.y);
               o6691.rotation = o13631.rotation;
               o16166.o10589(o3380);
               o16166.frameRate = 0.0166666666666667;
               break;
         }
      }
      
      private function o3426() : void
      {
         var _loc1_:o16124 = o4519.o9721.o20360.o6048(o6790,o8723.o12624,this.body.id,this.body.position.x,this.body.position.y,0,o10849.x,o10849.y,o8723.o3969,o8723.o3969);
         _loc1_.defer(o5363);
      }
      
      private function o5363(param1:o972) : void
      {
         o4690 = param1;
      }
      
      private function o19719() : void
      {
      }
      
      private function o77(param1:o4217) : void
      {
         var _loc2_:* = null;
         if(param1.o11541.body)
         {
            _loc2_ = o4519.o8116.o2996.o14389(param1.o11541.body) as o18442;
         }
         if(_loc2_)
         {
            o1917.x = _loc2_.body.position.x;
            o1917.y = _loc2_.body.position.y;
            o16630 = 3;
            o20488 = 1;
         }
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
         if(!_loc2_)
         {
            return;
         }
         o15156();
      }
      
      private function o16462() : void
      {
         o15156();
      }
      
      private function o15156() : void
      {
         if(o20488 == 2 || o20488 == 3)
         {
            return;
         }
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(1);
         dispatchData(new o2149(this,_loc1_,true,false,1 + o5973));
      }
      
      private function o18290() : void
      {
         if(o20488 == 2 || o20488 == 3)
         {
            return;
         }
         o17224();
         o1051.o9310(this,0.4,o14063);
         o20488 = 2;
         o20350.o12657(o2841.o1516,o77);
         body.o19977(o20350.id);
         o12545.o12657(o2841.o1516,o4949);
         body.o19977(o12545.id);
         o11110.o8508(o8723.o9077);
         o3426();
         o2154.dispatchData(new o13852(this,o13852.o7257));
      }
      
      public function o8521() : Boolean
      {
         return o20488 == 2;
      }
      
      public function o11022(param1:o4016) : void
      {
      }
      
      public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         if(o20488 == 3 || o20488 == 2)
         {
            return;
         }
         var _loc3_:o18442 = param1.o16334 as o18442;
         if(_loc3_)
         {
            _loc2_ = new ByteArray();
            _loc2_.writeByte(61);
            dispatchData(new o2149(this,_loc2_,true,false,61 + o5973));
         }
      }
      
      private function o8252() : void
      {
         if(o20488 == 3 || o20488 == 2)
         {
            return;
         }
         o20488 = 3;
         o20350.o12657(o2841.o1516,o77);
         body.o19977(o20350.id);
         o12545.o12657(o2841.o1516,o4949);
         body.o19977(o12545.id);
         o11110.o8508(o8723.o3969 | o8723.o18180);
         body.o6141(0,0);
         o16166.o10589(o8);
         o16166.o12265 = false;
         o16166.frameRate = 0.0333333333333333;
         var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodSplosion1"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = body.position.x;
            _loc1_.o6691.position.y = body.position.y;
            _loc1_.o6691.rotation = o6691.rotation;
            _loc1_.o6691.o16990 = o11381.o7800;
            var _loc3_:* = 1.5;
            _loc1_.o6691.scaleX = _loc3_;
            _loc1_.o6691.scaleX = _loc3_;
         }
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodSplosion1"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = body.position.x;
            _loc1_.o6691.position.y = body.position.y;
            _loc1_.o6691.rotation = o6691.rotation + 0.5 * 3.14159265358979;
            _loc1_.o6691.o16990 = o11381.o7800;
            _loc3_ = 1.5;
            _loc1_.o6691.scaleX = _loc3_;
            _loc1_.o6691.scaleX = _loc3_;
         }
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodSplosion1"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = body.position.x;
            _loc1_.o6691.position.y = body.position.y;
            _loc1_.o6691.rotation = o6691.rotation + 3.14159265358979;
            _loc1_.o6691.o16990 = o11381.o7800;
            _loc3_ = 1.5;
            _loc1_.o6691.scaleX = _loc3_;
            _loc1_.o6691.scaleX = _loc3_;
         }
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodSplosion1"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = body.position.x;
            _loc1_.o6691.position.y = body.position.y;
            _loc1_.o6691.rotation = o6691.rotation + 1.5 * 3.14159265358979;
            _loc1_.o6691.o16990 = o11381.o7800;
            _loc3_ = 1.5;
            _loc1_.o6691.scaleX = _loc3_;
            _loc1_.o6691.scaleX = _loc3_;
         }
         var _loc2_:o4332 = o4519.o8116.o11954.o10869();
         _loc2_.o16396 = o17541.o13617("assets.common.BloodDecal1");
         _loc2_.position = new o2415();
         o4519.o8116.o11954.o9226(_loc2_);
         _loc2_.o16990 = o11381.o6537;
         _loc2_.rotation = o6691.rotation;
         _loc2_.position.x = body.position.x;
         _loc2_.position.y = body.position.y;
         o4519.o9721.o2075.o471(_loc2_);
         o5581();
      }
      
      private function o5581() : void
      {
         var _loc3_:int = o9274.o13653(o5973 % 100 / 100);
         var _loc2_:int = o5973 % 101 / 101 < 50 / 100?o10176.o12064(_loc3_):o10176.o18401(_loc3_);
         var _loc1_:Class = o4519.o8116.o20291[o17439.o12681[_loc3_]];
         var _loc4_:o18442 = o20160.o3370(_loc1_,_loc2_,new o18509(this.body.position.x,this.body.position.y),0,0,true,true,true,0);
         _loc4_.o6691.rotation = o6691.rotation;
         _loc4_.o13696.push(o12779);
         _loc4_.o9270(null);
         o2154.dispatchData(new o13852(this,o13852.o13572));
         o19115();
      }
      
      public function get o13917() : Boolean
      {
         return o20488 != 3;
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc3_:int = param2.readByte();
         var _loc4_:* = _loc3_;
         switch(_loc4_)
         {
            case 1:
               o18290();
               break;
            case 61:
               o8252();
               break;
            case 123:
               o18388(param2.readFloat(),param2.readFloat());
         }
      }
      
      private function o7838() : void
      {
         var _loc1_:* = null;
         if(o20488 != 2)
         {
            _loc1_ = new ByteArray();
            _loc1_.writeByte(123);
            _loc1_.writeFloat(body.position.x);
            _loc1_.writeFloat(body.position.y);
            dispatchData(new o2149(this,_loc1_,false));
         }
      }
      
      private function o18388(param1:Number, param2:Number) : void
      {
         var _loc4_:Number = body.position.x - param1;
         var _loc3_:Number = body.position.y - param2;
         if(_loc4_ * _loc4_ + _loc3_ * _loc3_ > 400)
         {
            body.o8564(param1,param2);
         }
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         o19811.o19115();
         o6790 = null;
         o4690 = null;
         o20384 = null;
         o20160 = null;
         super.o19115();
      }
      
      private function o14063() : void
      {
         var _loc1_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
         o4519.o8116.o2996.o2998(_loc1_,[new o18509(body.position.x,body.position.y),o1197.o17861,0,0.1]);
      }
      
      private function o17224() : void
      {
         o4519.o8116.o4812.o10460.o13041.play(0.75);
      }
      
      public function o13005() : int
      {
         return 5;
      }
      
      public function o17441() : Boolean
      {
         return !o8521() && !o8289();
      }
      
      public function o15437(param1:o7848) : Boolean
      {
         return !o8521() && !o8289();
      }
   }
}
