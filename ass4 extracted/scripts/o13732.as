package
{
   import flash.events.Event;
   
   public class o13732 extends o7848 implements o6270, o1452
   {
      
      public static const o6191:int = o19504.o4386();
       
      
      public var o19505:o13732 = null;
      
      private const o12167:uint = 0;
      
      private const o18993:uint = 1;
      
      private const o9940:uint = 2;
      
      private const o18659:uint = 3;
      
      private const o20413:uint = 4;
      
      private const o20883:uint = 0;
      
      private const o2066:uint = 1;
      
      private const o3893:Number = 80;
      
      private var o3216:o2300;
      
      private var o16935:o2300;
      
      private var o19232:o2300;
      
      private var o19553:o2300;
      
      private var o13557:o2300;
      
      private var o18662:o2300;
      
      private var o16800:o2300;
      
      private var o10154:o2300;
      
      private var o20488:uint = 0;
      
      private var o17074:Number = 40;
      
      private var o19811:o4332;
      
      private var o13469:o18509;
      
      private var o11145:o2041;
      
      private var o3841:o2041;
      
      private var o4716:o972;
      
      private var o11243:Number = 0;
      
      private var o16630:Number = 0;
      
      private var o1589:Number = 0;
      
      private var o17707:Number = 0;
      
      private var o15426:Number = 0;
      
      private var o5510:int = -1;
      
      private var o19812:int = -1;
      
      private var o19991:int = 0;
      
      private var o1277:int = 0;
      
      private var o1671:o4039;
      
      private var o11110:o4039;
      
      private var o3205:Function = null;
      
      private var o3388:o18509;
      
      private var o20348:o18509;
      
      private var o3569:Boolean = false;
      
      private var o7012:Boolean = false;
      
      private var o5808:Boolean = false;
      
      private var o14215:Boolean = false;
      
      private var o15882:o20567;
      
      private var o19069:int = 6;
      
      private var o18399:Boolean = false;
      
      private var o6310:o8216;
      
      public function o13732()
      {
         o3216 = new o2300("assets.civilians.vip.Idle","in",o7865,false);
         o16935 = new o2300("assets.civilians.vip.Idle","idle",o959,true);
         o19232 = new o2300("assets.civilians.vip.Idle","out",o14887,false);
         o19553 = new o2300("assets.civilians.vip.Walk",null,o8047,true);
         o13557 = new o2300("assets.civilians.vip.Death",null,o8047,false);
         o18662 = new o2300("assets.civilians.vip.Cower","in",o14649,false);
         o16800 = new o2300("assets.civilians.vip.Cower","cower",o10397,true);
         o10154 = new o2300("assets.civilians.vip.Cower","out",o14887,false);
         o3388 = new o18509();
         o20348 = new o18509();
         super();
      }
      
      public function o16955(param1:int, param2:o18509, param3:Number = 1) : void
      {
         o19505 = this;
         o20488 = 0;
         o17707 = 7;
         o5808 = false;
         o7012 = false;
         if(o4519.o8116.o476.o9392.o16643())
         {
            o15882 = o4519.o8116.o476.o9392.o7908();
            if(o15882 && o15882.id == 2)
            {
               var _loc8_:int = 0;
               var _loc7_:* = o15882.o7929;
               for each(var _loc4_ in o15882.o7929)
               {
                  if(_loc4_ == "VIP")
                  {
                     o3216 = new o2300("assets.civilians.vip" + o15882.name + ".Idle","in",o7865,false);
                     o16935 = new o2300("assets.civilians.vip" + o15882.name + ".Idle","idle",o959,true);
                     o19232 = new o2300("assets.civilians.vip" + o15882.name + ".Idle","out",o14887,false);
                     o19553 = new o2300("assets.civilians.vip" + o15882.name + ".Walk",null,o8047,true);
                     o13557 = new o2300("assets.civilians.vip" + o15882.name + ".Death",null,o8047,false);
                     o18662 = new o2300("assets.civilians.vip" + o15882.name + ".Cower","in",o14649,false);
                     o16800 = new o2300("assets.civilians.vip" + o15882.name + ".Cower","cower",o10397,true);
                     o10154 = new o2300("assets.civilians.vip" + o15882.name + ".Cower","out",o14887,false);
                  }
               }
               o18399 = true;
               o19069 = 15;
            }
         }
         body = o4519.o8116.o9869.o1968(1);
         var _loc6_:o17761 = new o17761(body.o2535);
         _loc6_.o16716(o17074 / 2);
         o11110 = o4519.o8116.o20600.o15803(o8723.o12624,o8723.o10217 ^ o8723.o32 ^ o8723.o2823,o8723.o42 | o8723.o17079 | o8723.o7778 | o8723.o9077,false,0,0.1);
         o11110.o10289 = _loc6_.id;
         body.o14230(o11110);
         var _loc5_:o4332 = o4519.o8116.o11954.o10869();
         o10783(param1,body,_loc5_,o4519.o8116.o11676);
         _loc5_.o16990 = o11381.o3747;
         o16166.o10589(o3216.o17583);
         o16166.gotoAndStop(0);
         body.o13392(param2);
         o1589 = 4000 * o10176.o6572();
         if(o4519.o13206.o2685.o4326 == 2)
         {
            o1589 = o1589 * 20;
         }
         o11243 = param3 * o1589;
         o19811 = o4519.o8116.o11954.o10869();
         o19811.position = body.position;
         o19811.o16990 = o11381.o2670;
         o19811.o16396 = o17541.o13617("assets.shadows.Shadow");
         o4519.o8116.o11954.o9226(o19811);
         o5510 = o1051.o4767(this,0.1,o7664);
         o19991 = 1;
         o14887();
         o16166.o16280(this,o1490.o16612,o8384);
         this.o6310 = new o8216();
         if(o15882 && o15882.id == 2)
         {
            this.o6310.init(this,3,"Santa");
         }
         else
         {
            this.o6310.init(this,3,"VIP");
         }
      }
      
      private function o6962() : void
      {
         var o1070:int = -1;
         var o5134:Number = 16777215;
         var o9071:Array = o4519.o8116.o2996.o20698(o17517);
         var o1903:int = 0;
         while(o1903 < o9071.length)
         {
            if(o9071[o1903] && o9071[o1903].o7694 == false)
            {
               var o13236:o18509 = new o18509(o9071[o1903].o6691.position.x - o6691.position.x,o9071[o1903].o6691.position.y - o6691.position.y);
               var length:Number = o13236.o17573;
               if(length < o5134)
               {
                  o1070 = o1903;
                  o5134 = length;
               }
            }
            o1903 = Number(o1903) + 1;
         }
         if(o1070 != -1)
         {
            this.o13469 = new o18509(o9071[o1070].o6691.position.x,o9071[o1070].o6691.position.y);
            var o81:o16124 = o4519.o9721.o10946.o2566(0,o13469.x,o13469.y,o8723.o12624,o8723.o3969 | o8723.o18180,Vector.<int>([]));
            o81.defer(function(param1:o2041):void
            {
               o3841 = o11145;
               o11145 = param1;
            });
         }
      }
      
      private function o7664() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:* = null;
         if(o11243 <= 0)
         {
            body.o6141(0,0);
            return;
         }
         o6962();
         o16741();
         switch(int(o20488))
         {
            case 0:
               o1965(1);
               break;
            case 1:
               if(o4716 == null || o4716.o16255.length == 0)
               {
                  o1965(1);
                  break;
               }
               if(o7012)
               {
                  o1965(3);
                  break;
               }
               o1965(2);
               break;
         }
         if(o14215)
         {
            _loc2_ = o4519.o8116.o4550(2.5);
            _loc1_ = o15460.o4078;
            if(o4716.o16255.length > 0)
            {
               _loc1_.x = o4716.o16255[0].x - body.position.x;
               _loc1_.y = o4716.o16255[0].y - body.position.y;
               o3388.x = _loc1_.x;
               o3388.y = _loc1_.y;
               if(_loc1_.o17573 <= 100 || _loc1_.o17573 <= 10000 && o4716.o16255.length == 1)
               {
                  o4716.o16255.shift();
               }
            }
            else
            {
               _loc1_.x = o3388.x;
               _loc1_.y = o3388.y;
            }
            _loc1_.o3215 = _loc2_;
            body.o6141(_loc1_.x,_loc1_.y);
            o6691.rotation = _loc1_.rotation;
         }
         else
         {
            body.o6141(0,0);
         }
      }
      
      private function o16741() : void
      {
         var _loc1_:o16124 = o4519.o9721.o10946.o6048(o11145,o8723.o12624,this.body.id,this.body.position.x,this.body.position.y,0,o13469.x,o13469.y,o8723.o3969 | o8723.o18180 | o8723.o19523,o8723.o3969 | o8723.o18180 | o8723.o19523,Vector.<int>([]),Vector.<int>([]));
         _loc1_.defer(o5363);
      }
      
      private function o5363(param1:o972) : void
      {
         if(o5836)
         {
            return;
         }
         if(!param1)
         {
            return;
         }
         o4716 = param1;
         o20488 = 1;
         var _loc2_:o18509 = o15460.o4078;
         _loc2_.x = o4716.o16255[0].x - body.position.x;
         _loc2_.y = o4716.o16255[0].y - body.position.y;
         if(_loc2_.o17573 <= 100 || _loc2_.o17573 <= 10000 && o4716.o16255.length == 1)
         {
            o4716.o16255.shift();
         }
      }
      
      public function o13005() : int
      {
         return 5;
      }
      
      public function o17441() : Boolean
      {
         return !o8289();
      }
      
      public function o15437(param1:o7848) : Boolean
      {
         return !o8289();
      }
      
      public function o11022(param1:o4016) : void
      {
      }
      
      public function o5725(param1:o4016) : void
      {
         o4670 = param1;
         if(o11243 <= 0)
         {
            return;
         }
         o11243 = o11243 - o4670.amount;
         o4519.o8116.o20488.o19764(o10691());
         o7012 = true;
         if(o11243 <= 0)
         {
            o11243 = 0;
            o1965(4,true);
            body.o15838(o8723.o5479);
            o1051.o19115(o5510);
            o14215 = false;
            body.o6141(0,0);
            o19812 = o1051.o9310(this,2,function():void
            {
               o4519.o13206.o8765();
            });
         }
         if(o3569 == false)
         {
            o3569 = true;
            var o1216:String = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgVIPAttackedXmas":"dialogMessage.vipMessages.msgVIPAttacked");
            o4519.o8116.o20488.o2251(o19069,o1216);
         }
         var o14646:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.common.BloodPartical",o11381.o7800]) as o2130;
         if(o14646 != null)
         {
            o14646.o6691.position.x = o6691.position.x;
            o14646.o6691.position.y = o6691.position.y;
            o14646.o6691.rotation = o4670.o1487;
         }
      }
      
      public function o10691() : Number
      {
         return o11243 / o1589;
      }
      
      public function get o13917() : Boolean
      {
         return true;
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         if(o6310)
         {
            o6310.o5953();
         }
         o6310 = null;
         if(o1671)
         {
            o1671.o19115();
         }
         o1671 = null;
         if(o11110)
         {
            o11110.o19115();
         }
         o11110 = null;
         o14215 = false;
         o11145 = null;
         o13469 = null;
         o3841 = null;
         o4716 = null;
         o20348 = null;
         o3388 = null;
         o1051.o19115(o19812);
         o1051.o19115(o5510);
         if(o19811)
         {
            o4519.o8116.o11954.o11867(o19811);
         }
         super.o19115();
      }
      
      private function o8384(param1:Event = null) : void
      {
         if(!o5836 && o3205 != null && o11243 > 0)
         {
            o3205();
         }
      }
      
      private function o1965(param1:int, param2:Boolean = false) : void
      {
         if(o19991 == 4 && o11243 <= 0)
         {
            return;
         }
         if(o19991 != param1)
         {
            o19991 = param1;
            if(param2)
            {
               o14887();
            }
         }
      }
      
      private function o7865() : void
      {
         o15559(o16935);
      }
      
      private function o959() : void
      {
         if(o19991 != o1277)
         {
            o15559(o19232);
         }
      }
      
      private function o8047() : void
      {
         if(o19991 != o1277)
         {
            o14887();
         }
      }
      
      private function o14887() : void
      {
         switch(int(o19991))
         {
            case 0:
               break;
            case 1:
               o15559(o3216);
               o14215 = false;
               break;
            case 2:
               o15559(o19553);
               o14215 = true;
               break;
            case 3:
               o15559(o18662);
               o14215 = true;
               o7012 = false;
               break;
            case 4:
               o15559(o13557);
               o14215 = false;
         }
         o1277 = o19991;
      }
      
      private function o14649() : void
      {
         o15559(o16800);
      }
      
      private function o10397() : void
      {
         if(o19991 != o1277)
         {
            o15559(o10154);
         }
      }
      
      private function o15559(param1:o2300) : void
      {
         o16166.o10589(param1.o17583);
         if(param1.o7021 != null)
         {
            o16166.o3030(param1.o7021);
            o16166.o11(param1.o7021);
         }
         else
         {
            o16166.gotoAndPlay(0);
         }
         o3205 = param1.o9468;
         o16166.o12265 = param1.o13214;
      }
   }
}
