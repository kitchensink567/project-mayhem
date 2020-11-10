package
{
   import flash.display.Sprite;
   
   public class o20757 extends Sprite
   {
       
      
      public function o20757()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10685;
      }
   }
}

import flash.events.Event;

class o10685 extends o17517
{
    
   
   private var o20626:Boolean = false;
   
   private var o20900:Number;
   
   private var o10071:Number;
   
   private var o5961:Number;
   
   private var o20391:Number;
   
   private var o17832:Number;
   
   private const o11966:Number = 0.2;
   
   private var o11143:Number = 1;
   
   private var o15282:Number = 1;
   
   private const delta:Number = 0.03333333333333333;
   
   private var o8659:Array;
   
   private const o13049:Number = 3;
   
   private var o10092:Number = 1;
   
   private var o12360:Number = 0;
   
   private var o11670:int = 1;
   
   private var o16221:Number = 1;
   
   private var o15456:Number = 1;
   
   private var o17789:Number = 1;
   
   function o10685()
   {
      o8659 = [];
      super();
   }
   
   override public function get o1217() : int
   {
      return 0;
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.skills.CloseQuartersCombat");
      _loc1_.push("assets.skills.StimShot");
      _loc1_.push("assets.skills.avatar.KillingSpree");
      _loc1_.push("assets.eliteAvatar.pose.Rifle");
      _loc1_.push("assets.eliteAvatar.legs.Foward");
      _loc1_.push("assets.eliteAvatar.legs.Sideway");
      _loc1_.push("assets.eliteAvatar.legs.Backward");
      _loc1_.push("assets.eliteAvatar.legs.Idle");
      _loc1_.push("assets.eliteAvatar.Intro");
      _loc1_.push("assets.eliteAvatar.TimeOut");
      return _loc1_.concat(super.getCacheAssets());
   }
   
   override public function o16955(param1:int, param2:o3358, param3:int = 1) : void
   {
      this.o13136 = o13136;
      var _loc4_:o1832 = o4519.o8116.profileData.o5292.o923.o16413(0);
      o11243 = _loc4_.o13167;
      o14242 = _loc4_.o13167;
      o10483 = o4519.o8116.o4550(_loc4_.o10483);
      super.o16955(param1,param2,param3);
      body.o7191 = _loc4_.o7191;
      o6119 = _loc4_.o7191;
   }
   
   override public function o16544(param1:Boolean) : void
   {
      var _loc2_:o1832 = o4519.o8116.profileData.o5292.o923.o16413(0);
      o11243 = _loc2_.o13167;
      o14242 = _loc2_.o13167;
      o10483 = o4519.o8116.o4550(_loc2_.o10483);
      super.o16544(param1);
   }
   
   override protected function o15528(param1:o1492, param2:Vector.<o20074>) : void
   {
      o1160 = param1;
      o7800 = param2;
      switch(int(o1160.o10374) - 27)
      {
         case 0:
            var o4312:o20074 = o12010(17,o7800);
            var o10720:o20074 = o12010(2,o7800);
            var o19973:o20074 = o12010(40,o7800);
            var o5705:o20074 = o12010(39,o7800);
            this.o14886(o4312);
            this.o14886(o10720);
            this.o14886(o19973);
            this.o14886(o5705);
            var o140:Function = o17407(o4312.o18177,[[0,o10720.apply(o10483) - o10483],[1,-o19973.apply(o18931)],[2,1 - o5705.apply(1)]]);
            if(o10308 == false)
            {
               var o13400:Function = function():void
               {
                  o16867(27);
                  o140();
                  trace("Adrenaline activated");
                  o1051.o9310(o19505,o4312.o18177,function():void
                  {
                     o19960(27);
                  });
               };
            }
            o5526([[27,{
               "trigger":o13400,
               "key":"q",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
         default:
            super.o15528(o1160,o7800);
            return;
         case 2:
         default:
            var distance:o20074 = o12010(15,o7800);
            var o18721:o20074 = o12010(27,o7800);
            var o5725:o20074 = o12010(22,o7800);
            this.o14886(distance);
            this.o14886(o18721);
            this.o14886(o5725);
            if(o10308 == false)
            {
               var o17028:Function = function():void
               {
                  if(o19505 == o4519.o32)
                  {
                     o4519.o8116.o2996.o2368([o18442,o10384,o5640],body.o2697.x,body.o2697.y,o4519.o8116.o4550(distance.o18177),o8723.o17798,0).defer(function(param1:Array):void
                     {
                        var _loc3_:* = null;
                        var _loc5_:int = 0;
                        var _loc4_:* = param1;
                        for each(var _loc2_ in param1)
                        {
                           _loc3_ = o15460.o4078;
                           _loc3_.x = _loc2_.body.o2697.x - body.o2697.x;
                           _loc3_.y = _loc2_.body.o2697.y - body.o2697.y;
                           if(Math.abs(_loc3_.o19203(o7616.o2179)) <= o18721.o18177 * (3.14159265358979 / 180))
                           {
                              o4519.o8116.o8361.o5725(o6270(_loc2_),o4016.o10062().initialise(o5725.o18177 * o3817,1,o19505,null,o19505.o15465.rotation,0.5,0,0,false,false,29));
                           }
                        }
                     });
                  }
                  if(o2768)
                  {
                     o2768.o14321();
                  }
                  o9455.o10589("assets.skills.CloseQuartersCombat");
                  o9455.gotoAndPlay(0);
                  o2752.o9824 = false;
                  o2752.o6976();
                  o19929 = true;
                  o6840 = false;
                  o9455.o19926(o19505,o1490.o16612,function():void
                  {
                     o7681();
                     o2752.o9824 = true;
                     o19929 = false;
                     o6840 = true;
                  });
               };
            }
            o5526([[29,{
               "trigger":o17028,
               "key":"e",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
         case 4:
            var o20266:o20074 = o12010(29,o7800);
            var o10065:o20074 = o12010(20,o7800);
            var o10628:o20074 = o12010(17,o7800);
            var o11846:o20074 = o12010(38,o7800);
            this.o14886(o20266);
            this.o14886(o10065);
            this.o14886(o10628);
            this.o14886(o11846);
            o20900 = o20266.o18177;
            o20391 = o10628.o18177;
            o10071 = o10065.o18177;
            o5961 = o11846.o18177;
            o17832 = o1160.o18500;
            if(o10308 == false)
            {
               o16280(o19505,o2777.o268,o16215);
               o16280(o19505,o2777.o20845,o16215);
            }
            return;
         case 5:
            o10092 = o12010(17,o7800).o18177;
            var o19887:o20074 = o12010(12,o7800);
            var o8417:o20074 = o12010(32,o7800);
            this.o14886(o19887);
            this.o14886(o8417);
            o11143 = o19887.apply(1) - 1;
            o15282 = o8417.apply(1) - 1;
            if(o10308 == false)
            {
               this.o16280(o19505,o2777.o7661,o7661);
               o1051.o4767(this,delta,o8827);
            }
            return;
         case 6:
            o11670 = o12010(34,o7800).o18177;
            o16221 = o12010(17,o7800).o18177;
            o15456 = o12010(35,o7800).o18177;
            o17789 = o12010(36,o7800).o18177;
            var o3967:Function = o8382;
            if(o10308 == true)
            {
               o3967 = null;
            }
            o5526([[33,{
               "trigger":o3967,
               "key":"e",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
      }
   }
   
   private function o7661(param1:o7734) : void
   {
      var _loc2_:* = null;
      if(param1.o11493 as o17517 == o4519.o32 && o20119 == false)
      {
         o8659.push(3);
         if(o8659.length >= 20)
         {
            o20119 = true;
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.avatar.KillingSpree",o11381.o7800]) as o2130;
            if(_loc2_ != null)
            {
               o4519.o8116.o11954.o2429(_loc2_.o6691,o6691);
            }
            this.o14040(3,o11143);
            this.o14040(4,o15282);
            o8659 = [];
            o12360 = o10092;
         }
      }
      else
      {
         o12360 = o10092;
      }
   }
   
   private function o8827() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o8659.length)
      {
         var _loc2_:* = _loc1_;
         var _loc3_:* = o8659[_loc2_] - 0.0333333333333333;
         o8659[_loc2_] = _loc3_;
         if(o8659[_loc1_] <= 0)
         {
            o8659.splice(_loc1_,1);
            _loc1_--;
         }
         _loc1_++;
      }
      if(o20119 == true)
      {
         o12360 = o12360 - 0.0333333333333333;
         if(o12360 <= 0)
         {
            o20119 = false;
            this.o14040(3,-o11143);
            this.o14040(4,-o15282);
         }
      }
   }
   
   private function o8382() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o11670)
      {
         o13814 = Number(o13814) + 1;
         new o20164(this,Number(o13814),o16221,o15456,o17789);
         _loc1_++;
      }
   }
   
   private function o16215(param1:Event) : void
   {
      var _loc3_:* = null;
      var _loc2_:* = null;
      if(!o20626 && !o7694 && o11243 <= o1589 * o20900 && energy >= o5961)
      {
         this.o1647 = true;
         o20626 = true;
         energy = energy - o5961;
         o1051.o4767(this,0.2,o12844,o20391 / 0.2,true);
         o1051.o9310(o19505,o17832,o846);
         _loc3_ = new o257(o6691.position.x,o6691.position.y);
         o4519.o8116.o4812.o1162.o11380.play(1,0,0,false,_loc3_.o10088());
         _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.StimShot",o11381.o7800]) as o2130;
         if(_loc2_ != null)
         {
            o4519.o8116.o11954.o2429(_loc2_.o6691,o6691);
         }
      }
   }
   
   private function o12844() : void
   {
      var _loc1_:* = null;
      if(!o7694)
      {
         _loc1_ = new o18848();
         _loc1_.amount = o1589 * o10071 * 0.2;
         o4519.o8116.o8361.o3742(this,_loc1_);
      }
   }
   
   private function o846() : void
   {
      o20626 = false;
   }
}
