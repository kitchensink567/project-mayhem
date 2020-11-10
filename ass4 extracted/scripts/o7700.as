package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class o7700 extends o10384
   {
       
      
      public var o11243:int = 0;
      
      public var o1589:int = 0;
      
      private var o1276:Number = 0;
      
      private var o2912:Boolean = false;
      
      private var o8812:String;
      
      private var o885:String;
      
      private var o19909:String;
      
      private var o11618:Boolean = false;
      
      private var o14622:o4332;
      
      private var o19423:o7331;
      
      private var o19505:o7848;
      
      private var o8297:int = 0;
      
      private var o534:Boolean = false;
      
      public function o7700()
      {
         o8812 = "assets.enemies.eggTop";
         o885 = "assets.enemies.eggTop";
         o19909 = "assets.enemies.eggTop";
         super();
      }
      
      public function o16955(param1:int, param2:Boolean, param3:Number, param4:Number) : void
      {
         o2912 = param2;
         o1276 = param3;
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16396 = o17541.o13617("assets.enemies.eggBase");
         o6691.o16990 = o11381.o1041;
         o6691.rotation = Math.random() * 3.14159265358979 * 2 - 3.14159265358979;
         var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0);
         var _loc10_:o17761 = new o17761(_loc5_.o2535);
         _loc10_.o16716(60);
         o30 = 60;
         var _loc9_:* = o8723.o32 | o8723.o17798 | o8723.o42;
         var _loc8_:* = _loc9_;
         var _loc6_:o4039 = o4519.o8116.o20600.o15803(o8723.o18481,_loc9_,_loc8_,true);
         _loc6_.o10289 = _loc10_.id;
         _loc5_.o14230(_loc6_);
         _loc5_.o7191 = 10;
         o14622 = o4519.o8116.o11954.o10869();
         o14622.o16396 = o17541.o13617("assets.enemies.eggBase");
         o14622.position = _loc5_.position;
         o14622.rotation = o6691.rotation;
         o14622.o16990 = o11381.o3010;
         o4519.o8116.o11954.o9226(o14622);
         super.o10783(param1,_loc5_,o6691,o4519.o8116.o11676);
         o19423 = o4519.o8116.o11676.o6798(null);
         var _loc7_:int = Math.random() * 10;
         o19423.o11525(o14622);
         o19423.o10589("assets.enemies.eggBase");
         o19423.o11224(0,10);
         o19423.gotoAndPlay(_loc7_);
         o16166.o10589(o8812);
         o16166.o11224(0,10);
         o16166.gotoAndPlay(_loc7_);
         o1589 = 1;
         o11243 = 1;
         o11618 = false;
         if(param4 != 0)
         {
            param4 = (o4519.o8116.random.o10418(param1) * 1 + 0.5) * param4;
            o8297 = o1051.o9310(this,param4,o12013);
         }
         this.o16280(this,o17197.o9663,o8933);
      }
      
      private function o8933(param1:o15259) : void
      {
         o317(o1589);
      }
      
      private function o12013(param1:Event = null) : void
      {
         o317(o1589);
      }
      
      override public function o19115() : void
      {
         if(o14622)
         {
            o4519.o9721.o2075.o471(o14622);
            o14622 = null;
         }
         o19423.o19115();
         super.o19115();
      }
      
      override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
      {
         o317(param1,param5);
      }
      
      override public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         o317(param1.amount);
         o10492(param1.o9968);
         if(param1.o9968 == false)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.enemies.eggBurst"]) as o2130;
            if(_loc2_ != null)
            {
               _loc2_.o6691.position.x = body.position.x;
               _loc2_.o6691.position.y = body.position.y;
               _loc2_.o6691.rotation = param1.o1487 + 3.14159265358979;
            }
         }
      }
      
      private function o20970(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o2912)
         {
            return;
         }
         var _loc4_:Boolean = false;
         if(o4519.o8116.random.o10418(o5973) < o1276)
         {
            _loc4_ = true;
         }
         if(_loc4_)
         {
            _loc2_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
            _loc3_ = o4519.o8116.o2996.o2998(_loc2_,[new o18509(body.position.x,body.position.y),o1197.o9344,0]) as o6743;
         }
         else
         {
            dispatchData(new o8325(o8325.o11618,this));
         }
         o11618 = true;
         o16855();
      }
      
      private function o317(param1:Number, param2:Number = 0) : void
      {
         if(o534)
         {
            return;
         }
         o534 = true;
         param1 = 100;
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:int = 15;
         _loc4_.writeInt(_loc5_);
         _loc4_.writeFloat(param1);
         var _loc3_:* = this;
         dispatchData(new o2149(_loc3_,_loc4_,false,false,10));
      }
      
      override public function o20630(param1:int, param2:ByteArray) : void
      {
         var _loc5_:* = NaN;
         param2.position = 0;
         var _loc4_:int = param2.readInt();
         var _loc3_:Number = param2.readFloat();
         o11243 = o11243 - _loc3_;
         if(o11243 <= 0 && o11618 == false)
         {
            if(!o16166.o8289())
            {
               o16166.o11224(11,20);
               o16166.o12265 = false;
               o16166.gotoAndPlay(11);
               o16166.o19926(this,o1490.o16612,o6640);
            }
            if(!o19423.o8289())
            {
               o19423.gotoAndStop(11);
            }
            o19505 = this;
            if(o2912 == false)
            {
               if(o8297)
               {
                  o1051.o19115(o8297);
               }
               if(o11618 == false)
               {
                  o20970();
               }
            }
            else
            {
               o11618 = true;
            }
            _loc5_ = 5;
            if(o2912)
            {
               _loc5_ = 5;
               o4519.o8116.o2996.o2368([o17517,o10384],body.position.x,body.position.y,o4519.o8116.o4550(_loc5_),o8723.o42).defer(o7462);
            }
            else
            {
               _loc5_ = 2;
               o4519.o8116.o2996.o9685(o10384,body.position.x,body.position.y,o4519.o8116.o4550(_loc5_),o8723.o42).defer(o7462);
            }
            body.o19115();
            o16855();
         }
      }
      
      public function o6640(param1:Event = null) : void
      {
         o19115();
      }
      
      public function o7462(param1:Array) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc4_ in param1)
         {
            _loc3_ = o15460.o4078;
            _loc3_.x = _loc4_.body.position.x - body.position.x;
            _loc3_.y = _loc4_.body.position.y - body.position.y;
            o4519.o8116.o8361.o5725(o6270(_loc4_),o4016.o10062().initialise(o1589,4,o19505));
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
