package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o5640 extends o7848 implements o6270, o1452, o6925
   {
      
      public static const o9003:int = o19504.o4386();
      
      public static const o12777:int = o19504.o4386();
      
      public static const o3542:int = 1;
      
      public static const o474:int = 2;
      
      public static const o9749:int = 3;
      
      public static const o16052:int = 4;
      
      public static const o10224:int = 5;
      
      private static const o15206:Number = 0.5;
       
      
      public var o1432:o17517;
      
      public var o20915:int = 0;
      
      private var o15465:o4332;
      
      private var o13203:o4332;
      
      private var o13376:o8925;
      
      public var o2752:o4411;
      
      private var o3843:Number = 1;
      
      private var o3478:Number = 1;
      
      public var o7616:o3358;
      
      public var o11243:Number = 1;
      
      public var o1589:Number = 1;
      
      public var o7694:Boolean = false;
      
      public var o19587:Boolean = true;
      
      public var o12487:Boolean = false;
      
      public var o16390:Dictionary;
      
      public var o4027:String;
      
      public var o10051:uint = 16711680;
      
      public var o1396:String;
      
      public var o5757:String;
      
      public var o19989:String;
      
      public var o4963:String;
      
      public var o279:String;
      
      public var o13718:String;
      
      public var o11700:String;
      
      public var o14808:String;
      
      public var o17332:String;
      
      private var moveTo:o18509;
      
      private var o4836:Number = 99999;
      
      public var o14344:Boolean = false;
      
      private var o18867:Dictionary;
      
      public var o20593:Number = 0;
      
      private var o12456:Dictionary;
      
      public function o5640()
      {
         o4027 = "Freddie";
         o1396 = "assets.hvmsoldier.pose.pistol.helmet.HVM";
         o5757 = "assets.hvmsoldier.pose.rifle.helmet.HVM";
         o19989 = "assets.hvmsoldier.pose.pistol.vest.HVM";
         o4963 = "assets.hvmsoldier.pose.rifle.vest.HVM";
         o279 = "assets.hvmsoldier.legs.Foward";
         o13718 = "assets.hvmsoldier.legs.Sideway";
         o11700 = "assets.hvmsoldier.legs.Backward";
         o14808 = "assets.hvmsoldier.legs.Idle";
         o17332 = "assets.hmvsoldier.pose.Death";
         moveTo = new o18509();
         o18867 = new Dictionary();
         o12456 = new Dictionary();
         super();
      }
      
      public function o16955(param1:int, param2:String, param3:o18509, param4:Number, param5:uint, param6:uint = 0, param7:o8925 = null, param8:o3358 = null) : void
      {
         this.name = param2;
         this.o13376 = param7;
         this.o7616 = param8;
         var _loc11_:o4332 = o4519.o8116.o11954.o10869();
         _loc11_.o16990 = o11381.o7998;
         o15465 = o4519.o8116.o11954.o10869();
         o15465.o16990 = o11381.o9071;
         o15465.o16396 = o17541.o13617(o4963);
         o13203 = o4519.o8116.o11954.o10869();
         o13203.o16990 = o11381.o9071 + 0.02;
         o13203.o16396 = o17541.o13617(o5757);
         var _loc9_:o10262 = o4519.o8116.o9869.o1968(1,0,false);
         var _loc12_:o17761 = new o17761(_loc9_.o2535);
         _loc12_.o16716(20);
         var _loc10_:o4039 = o4519.o8116.o20600.o15803(o8723.o3732,param5,param6);
         _loc10_.o10289 = _loc12_.id;
         _loc9_.o14230(_loc10_);
         _loc9_.o8564(param3.x,param3.y);
         super.o10783(param1,_loc9_,_loc11_,o4519.o8116.o11676);
         o15465.position = _loc9_.position;
         o15465.rotation = param4;
         o13203.rotation = param4;
         _loc11_.rotation = param4;
         o4519.o8116.o11954.o9226(o15465);
         o4519.o8116.o11954.o9226(o13203);
         o4519.o8116.o11954.align(o13203,o15465);
         o16166.o10589(o14808);
         o16166.o12265 = true;
         o16166.play();
         o8231(param7);
         param8.o16280(this,o2511.o7816,o11159);
         param8.o16280(this,o2511.o6315,o6976);
         o1051.o4767(this,0.0333333333333333,o7664);
         o1051.o4767(this,0.1,o14181);
      }
      
      public function o7921(param1:Number) : void
      {
         o3478 = param1;
         o20357();
      }
      
      public function o5946(param1:Number) : void
      {
         o1589 = param1;
         o11243 = param1;
         o15777(o9003);
      }
      
      public function o10691() : Number
      {
         return o11243 / o1589;
      }
      
      public function o6610() : void
      {
         o15465.o16396 = o17541.o13617(o4963);
         if(o13376 && o13376.o12735 == 1)
         {
            o15465.o16396 = o17541.o13617(o19989);
         }
         o13203.o16396 = o17541.o13617(o5757);
         if(o13376 && o13376.o12735 == 1)
         {
            o13203.o16396 = o17541.o13617(o1396);
         }
         o16166.o10589(o14808);
      }
      
      public function o8231(param1:o8925) : void
      {
         if(o2752)
         {
            o2752.o12657(o11468.o20957,o20957);
         }
         this.o13376 = param1;
         if(param1 == null)
         {
            return;
         }
         o2752 = new o4411(param1,this,o15465,o15465.o16990 + 0.01);
         o2752.o16280(this,o11468.o20957,o20957);
         o6610();
      }
      
      private function o11159(param1:Event) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(2);
         dispatchData(new o2149(this,_loc2_));
      }
      
      private function o6976(param1:Event) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(3);
         dispatchData(new o2149(this,_loc2_));
      }
      
      private function o7664() : void
      {
         var _loc3_:* = null;
         var _loc1_:Number = NaN;
         o4836 = o4836 + 0.0333333333333333;
         if(!o7616 || o7694)
         {
            return;
         }
         if(o4519.o13206.o2685.id != o10887)
         {
            _loc3_ = o15460.o4078;
            _loc3_.x = 1;
            _loc3_.y = 0;
            _loc3_.rotate(o15465.rotation);
            _loc1_ = _loc3_.o19203(o7616.o2179);
            o15465.rotation = o15465.rotation + _loc1_ / 2;
            if(o4836 < 1)
            {
               body.o8564(body.position.x + (moveTo.x - body.position.x) / 5,body.position.y + (moveTo.y - body.position.y) / 5);
            }
         }
         else
         {
            o15465.rotation = o7616.o2179.rotation;
         }
         var _loc2_:* = 1;
         if(o7616.o10720.x != 0 || o7616.o10720.y != 0)
         {
            o6691.rotation = o7616.o10720.rotation;
            _loc3_ = o15460.o16789;
            _loc3_.x = 1;
            _loc3_.y = 0;
            _loc3_.rotate(o6691.rotation);
            _loc1_ = Math.abs(o7616.o2179.o19203(_loc3_));
            _loc2_ = Number(1 - _loc1_ / 3.14159265358979 * 0.5);
            if(_loc1_ <= 3.14159265358979 / 4)
            {
               o16166.o10589(o279);
            }
            else if(_loc1_ <= 2.35619449019235)
            {
               o16166.o10589(o13718);
               if(o7616.o2179.o10018(_loc3_.o4010()) > 0)
               {
                  o6691.rotation = o6691.rotation + 3.14159265358979 / 2;
               }
               else
               {
                  o6691.rotation = o6691.rotation - 3.14159265358979 / 2;
               }
            }
            else
            {
               o16166.o10589(o11700);
               o6691.rotation = o6691.rotation - 3.14159265358979;
            }
         }
         else
         {
            o16166.o10589(o14808);
            o6691.rotation = o15465.rotation;
         }
         body.o6141(o7616.o10720.x * o3843 * _loc2_,o7616.o10720.y * o3843 * _loc2_);
      }
      
      public function o11022(param1:o4016) : void
      {
         if(o16390)
         {
            if(o16390[param1.o3])
            {
               param1.amount = param1.amount * (1 - o16390[param1.o3]);
            }
         }
         if(o12487)
         {
            param1.amount = 0;
         }
      }
      
      public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o4519.o8116.o6458 && param1.o9968 == false)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodImpact1"]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = o6691.position.x;
               _loc2_.o6691.position.y = o6691.position.y;
               _loc2_.o6691.rotation = param1.o1487;
            }
         }
         o11243 = o11243 - param1.amount;
         o15777(o9003);
         if(o11243 <= 0)
         {
            _loc3_ = new ByteArray();
            _loc3_.writeByte(1);
            dispatchData(new o2149(this,_loc3_));
         }
      }
      
      private function o9183() : void
      {
         if(o7694)
         {
            return;
         }
         o2752.o6976();
         o4929(0,0,0,0,0,0);
         o7694 = true;
         o16166.o12265 = false;
         o16166.o10589(o17332);
         o6691.rotation = o15465.rotation;
         o15465.o9824 = false;
         o13203.o9824 = false;
         o2752.o681.o9824 = false;
         o16855();
         o19542();
         body.o15838(o8723.o5479);
         body.o6141(0,0);
         o15777(o12777);
      }
      
      override public function o19115() : void
      {
         o4519.o8116.o11954.o17454(o15465);
         o4519.o8116.o11954.o17454(o13203);
         if(o2752 != null)
         {
            o2752.o19115();
         }
         o1432 = null;
         o2752 = null;
         o13376 = null;
         o16390 = null;
         if(o7616 != null)
         {
            o7616.o19115();
            o7616 = null;
         }
         super.o19115();
      }
      
      private function o16855() : void
      {
         var _loc1_:o257 = new o257(o6691.position.x,o6691.position.y);
         o4519.o8116.o4812.o1162.o20017.play(1,0,0,false,_loc1_.o10088());
      }
      
      public function o13005() : int
      {
         return 10;
      }
      
      public function o17441() : Boolean
      {
         return o19587 && !o8289();
      }
      
      public function o15437(param1:o7848) : Boolean
      {
         return o19587 && !o8289() && !o7694;
      }
      
      public function o15644() : void
      {
         o4519.o8116.o11954.o17454(o13203);
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc3_:int = param2.readByte();
         switch(int(_loc3_) - 1)
         {
            case 0:
               o9183();
               break;
            case 1:
               o2752.trigger();
               break;
            case 2:
               o2752.o6976();
               break;
            case 3:
               o2752.o20957();
               break;
            case 4:
               o7461(param2);
         }
      }
      
      private function o14181() : void
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeByte(5);
         _loc1_.writeFloat(o7616.o2179.x);
         _loc1_.writeFloat(o7616.o2179.y);
         _loc1_.writeFloat(body.position.x);
         _loc1_.writeFloat(body.position.y);
         _loc1_.writeFloat(o7616.o10720.x);
         _loc1_.writeFloat(o7616.o10720.y);
         dispatchData(new o2149(this,_loc1_,false,false,-1,false));
      }
      
      private function o7461(param1:ByteArray) : void
      {
         var _loc3_:Number = param1.readFloat();
         var _loc5_:Number = param1.readFloat();
         var _loc4_:Number = param1.readFloat();
         var _loc2_:Number = param1.readFloat();
         var _loc7_:Number = param1.readFloat();
         var _loc6_:Number = param1.readFloat();
         if(o14344)
         {
            o4836 = 99999;
         }
         else
         {
            o7616.o2179.x = _loc3_;
            o7616.o2179.y = _loc5_;
            moveTo.x = _loc4_;
            moveTo.y = _loc2_;
            o4836 = 0;
            o7616.o10720.x = _loc7_;
            o7616.o10720.y = _loc6_;
         }
      }
      
      private function o20957(param1:Event) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeByte(4);
         dispatchData(new o2149(this,_loc2_,false,false,-1,false));
      }
      
      public function o20009(param1:o2940) : void
      {
         o12795 = param1;
         o18867[o12795.o5092] = o12795;
         o1051.o9310(this,o12795.o2031,function():void
         {
            o19378(o12795);
         });
         o20357();
      }
      
      public function o19378(param1:o2940) : void
      {
         if(o18867[param1.o5092] != null)
         {
            delete o18867[param1.o5092];
            o20357();
         }
      }
      
      private function o20357() : void
      {
         var _loc2_:* = 1;
         var _loc4_:Dictionary = new Dictionary();
         var _loc6_:int = 0;
         var _loc5_:* = o18867;
         for each(var _loc1_ in o18867)
         {
            if(_loc4_[_loc1_.o3079] == null)
            {
               _loc4_[_loc1_.o3079] = _loc1_.o6355;
            }
            else if(_loc4_[_loc1_.o3079] < _loc1_.o6355)
            {
               _loc4_[_loc1_.o3079] = _loc1_.o6355;
            }
         }
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            _loc2_ = Number(_loc2_ * (1 - _loc3_ * (1 - o20593)));
         }
         if(_loc2_ < 1)
         {
            o4929(0,0,0,0.2745,0.3529,0.3921);
         }
         else
         {
            o4929(0,0,0,0,0,0);
         }
         o3843 = o3478 * _loc2_;
      }
      
      public function o9121() : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = o18867;
         for(var _loc1_ in o18867)
         {
            return true;
         }
         return false;
      }
      
      public function o5878(param1:o18442, param2:o4016) : void
      {
         if(o1432 != null && o1432 is o17517)
         {
            o17517(o1432).o5878(param1,param2);
         }
         o20915 = Number(o20915) + 1;
      }
      
      override protected function o17308() : void
      {
         var _loc3_:* = null;
         var _loc2_:Boolean = false;
         var _loc1_:int = 0;
         var _loc5_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = o12456;
         for(var _loc4_ in o12456)
         {
            _loc3_ = o12456[_loc4_];
            if(_loc3_.o18141())
            {
               _loc2_ = false;
               _loc1_ = 0;
               while(_loc1_ < o16738.length)
               {
                  if(_loc4_ == o16738[_loc1_].type)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc1_++;
               }
               if(!_loc2_)
               {
                  _loc3_.stop();
               }
            }
         }
         _loc1_ = 0;
         while(_loc1_ < o16738.length)
         {
            _loc5_ = o16738[_loc1_];
            if(o12456[_loc5_.type] == null)
            {
               o12456[_loc5_.type] = o18303(_loc5_.type);
            }
            if(o12456[_loc5_.type].o18141() == false)
            {
               o12456[_loc5_.type].start();
            }
            _loc1_++;
         }
      }
      
      private function o18303(param1:int) : o9686
      {
         var _loc3_:o9686 = new o9686();
         var _loc4_:String = o7342.o9506[param1];
         var _loc2_:int = 6;
         if(param1 == 2)
         {
            _loc2_ = 7;
         }
         _loc3_.init(_loc4_,0,0,o11381.o20103,0.2,this,this.o6691,-1,-1,o9686.o19410,_loc2_);
         return _loc3_;
      }
      
      override public function o18192(param1:ByteArray) : void
      {
      }
      
      override public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
