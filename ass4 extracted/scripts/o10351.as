package
{
   import flash.display.Sprite;
   
   public class o10351 extends Sprite
   {
       
      
      public function o10351()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4855;
      }
   }
}

import flash.events.Event;

class o4855 extends o17517
{
   
   public static const o9442:int = 200;
    
   
   protected var o17839:Number = 100;
   
   private var o5947:Number;
   
   private var o739:Number;
   
   private var o5700:Number;
   
   private var o20877:Number;
   
   private var o887:Number;
   
   private var o12749:Number;
   
   private var o19885:int;
   
   private var o11522:Number;
   
   private var o11819:Number;
   
   private var o9601:Vector.<o17517>;
   
   private var o19959:Vector.<o17517>;
   
   private var o14160:o4039;
   
   private var o614:o4039;
   
   private var o16250:Number;
   
   private var o13803:Number;
   
   private var o838:Number;
   
   private var o18914:Number;
   
   private var o5027:Number;
   
   private var o1614:int = -1;
   
   function o4855()
   {
      o9601 = new Vector.<o17517>();
      o19959 = new Vector.<o17517>();
      super();
   }
   
   override public function get o1217() : int
   {
      return 1;
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("asset.support.Medkit");
      _loc1_.push("assets.skills.MedicalAura");
      _loc1_.push("assets.skills.medicalAura.Avatar");
      _loc1_.push("assets.skills.BadBlood");
      _loc1_.push("assets.skills.FinalFarewell");
      _loc1_.push("assets.skills.StimShot");
      _loc1_.push("assets.avatar.pose.pistol.leftArm.Medic");
      _loc1_.push("assets.avatar.pose.rifle.leftArm.Medic");
      _loc1_.push("assets.avatar.pose.death.Medic");
      return _loc1_.concat(super.getCacheAssets());
   }
   
   override public function o16955(param1:int, param2:o3358, param3:int = 1) : void
   {
      o5973 = param1;
      o7616 = param2;
      level = param3;
      this.o13136 = o13136;
      var o1997:o1832 = o4519.o8116.profileData.o5292.o923.o16413(1);
      o11243 = o1997.o13167;
      o14242 = o1997.o13167;
      o10483 = o4519.o8116.o4550(o1997.o10483);
      super.o16955(o5973,o7616,level);
      body.o7191 = o1997.o7191;
      o6119 = o1997.o7191;
      o1614 = -1;
      o14560 = o4519.o8116.o11954.o10869();
      o14560.position = body.o2697;
      o14560.o16990 = o15465.o16990 + 0.001;
      o14560.o16396 = o17541.o13617("assets.avatar.pose.rifle.leftArm.Medic");
      o4519.o8116.o11954.o9226(o14560);
      o1051.o9310(this,0.1,function():void
      {
         o4519.o8116.o11954.align(o14560,o15465);
      });
      o12966 = o4519.o8116.o11954.o10869();
      o12966.position = body.o2697;
      o12966.o16990 = o15465.o16990 + 0.001;
      o16748 = o4519.o8116.o11676.o6798("assets.avatar.pose.death.Medic");
      o16748.o11525(o12966);
      o16280(this,o2777.o3964,o16777);
      o16280(this,o2777.o16969,o2270);
   }
   
   override public function o16544(param1:Boolean) : void
   {
      var _loc2_:o1832 = o4519.o8116.profileData.o5292.o923.o16413(1);
      o11243 = _loc2_.o13167;
      o14242 = _loc2_.o13167;
      o10483 = o4519.o8116.o4550(_loc2_.o10483);
      super.o16544(param1);
   }
   
   override public function o1149(param1:Boolean) : void
   {
      if(o14560 == null)
      {
         return;
      }
      if(param1)
      {
         o14560.o16396 = o17541.o13617("assets.avatar.pose.pistol.leftArm.Medic");
      }
      else
      {
         o14560.o16396 = o17541.o13617("assets.avatar.pose.rifle.leftArm.Medic");
      }
   }
   
   public function o12690(param1:Number) : o10416
   {
      var _loc3_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.Medkit"],[param1,o19505]) as o10416;
      var _loc4_:o18509 = o15460.o4078;
      _loc4_.x = 30;
      _loc4_.y = 0;
      _loc4_.rotate(o7616.o2179.rotation);
      _loc3_.body.o8564(body.o2697.x + _loc4_.x,body.o2697.y + _loc4_.y);
      var _loc5_:o18509 = o15460.o4078;
      _loc5_.x = o7616.o2179.x * 5.3;
      _loc5_.y = o7616.o2179.y * 5.3;
      var _loc2_:Number = 550;
      if(_loc5_.x > _loc2_)
      {
         _loc5_.x = _loc2_;
      }
      else if(_loc5_.x < -_loc2_)
      {
         _loc5_.x = -_loc2_;
      }
      if(_loc5_.y > _loc2_)
      {
         _loc5_.y = _loc2_;
      }
      else if(_loc5_.y < -_loc2_)
      {
         _loc5_.y = -_loc2_;
      }
      _loc3_.body.o6141(_loc5_.x,_loc5_.y);
      return _loc3_;
   }
   
   override protected function o15528(param1:o1492, param2:Vector.<o20074>) : void
   {
      o1160 = param1;
      o7800 = param2;
      switch(int(o1160.o10374) - 13)
      {
         case 0:
            o17839 = o12010(5,o7800).o18177;
            var o20255:Function = function():*
            {
               var /*UnknownSlot*/:* = function():void
               {
                  o12690(o17839);
               };
               return function():void
               {
                  o12690(o17839);
               };
            }();
            var o17223:Number = o12010(38,o7800).o18177;
            o5526([[13,{
               "trigger":o20255,
               "key":"e",
               "energy":new o15787(o17223)
            }]]);
            return;
         case 1:
            var o30:Number = o12010(15,o7800).o18177;
            o5700 = o12010(41,o7800).o18177;
            o20877 = o12010(43,o7800).o18177;
            if(o10308 == false)
            {
               var o10289:o17761 = new o17761(body.o2535);
               o10289.o16716(o4519.o8116.o4550(o30));
               o14160 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
               o14160.o10289 = o10289.id;
               body.o14230(o14160);
               o14160.o16280(this,o2841.o1516,o17840);
               o14160.o16280(this,o2841.o15204,o12052);
               o16867(34);
            }
            var _loc4_:* = 4;
            var _loc5_:* = o16390[_loc4_] + o5700;
            o16390[_loc4_] = _loc5_;
            _loc5_ = 2;
            _loc4_ = o16390[_loc5_] + o20877;
            o16390[_loc5_] = _loc4_;
            if(o10308 == false)
            {
               body.o7191 = 80;
            }
            return;
         case 2:
            o5947 = o12010(16,o7800).o18177;
            o739 = o12010(44,o7800).o18177;
            if(o10308 == false)
            {
               o10289 = new o17761(body.o2535);
               o10289.o16716(this.o16022 * 2);
               o614 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32,o8723.o32,true);
               o614.o10289 = o10289.id;
               body.o14230(o614);
               o614.o16280(this,o2841.o1516,o8853);
               o614.o16280(this,o2841.o15204,o18233);
               body.o7191 = 80;
            }
            return;
         case 3:
            o16250 = o12010(15,o7800).o18177;
            o13803 = o12010(17,o7800).o18177;
            var o10822:Number = o12010(38,o7800).o18177;
            o5526([[16,{
               "trigger":o15893,
               "key":"q",
               "energy":new o15787(o10822)
            }]]);
            return;
         case 4:
            o887 = o12010(19,o7800).o18177;
            if(o10308 == false)
            {
               o16280(this,o2777.o268,o3597);
            }
            return;
         case 5:
            o12749 = o12010(38,o7800).o18177;
            o19885 = o12010(21,o7800).o18177;
            o11522 = o12010(20,o7800).o18177;
            o11819 = o12010(15,o7800).o18177;
            if(o12749 < 0)
            {
               o12749 = 0;
            }
            if(o10308 == false)
            {
               o16280(this,o2777.o3964,o16907);
            }
            return;
         case 6:
            o838 = o12010(15,o7800).o18177;
            o18914 = o12010(22,o7800).o18177;
            o5027 = o12010(17,o7800).o18177;
            var o11556:Number = o12010(38,o7800).o18177;
            o5526([[19,{
               "trigger":o3340,
               "key":"q",
               "energy":new o15787(o11556)
            }]]);
            return;
      }
   }
   
   override public function o19115() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o9601.length)
      {
         o9601[_loc1_].o20306(o5973);
         _loc1_++;
      }
      _loc1_ = 0;
      while(_loc1_ < o19959.length)
      {
         o19959[_loc1_].o19622(o5973);
         _loc1_++;
      }
      super.o19115();
   }
   
   private function o16777(param1:Event) : void
   {
      var _loc2_:int = 0;
      if(o13136[14] != null)
      {
         _loc2_ = 0;
         while(_loc2_ < o9601.length)
         {
            o9601[_loc2_].o20306(o5973);
            _loc2_++;
         }
      }
      o19960(34);
      o19960(14);
      _loc2_ = 0;
      while(_loc2_ < o19959.length)
      {
         o19959[_loc2_].o19622(o5973);
         _loc2_++;
      }
   }
   
   private function o2270(param1:Event) : void
   {
      var _loc2_:int = 0;
      if(o13136[14] != null)
      {
         o16867(34);
         _loc2_ = 0;
         while(_loc2_ < o9601.length)
         {
            o9601[_loc2_].o1616(o5973,o5700,o20877);
            _loc2_++;
         }
      }
      _loc2_ = 0;
      while(_loc2_ < o19959.length)
      {
         o19959[_loc2_].o11414(o5973,o5947,o739);
         _loc2_++;
      }
   }
   
   private function o17840(param1:o4217) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      if(_loc2_ != null)
      {
         o9601.push(_loc2_);
         if(this.o7694 == false && !this.o8289() && _loc2_.o7694 == false)
         {
            _loc2_.o1616(o5973,o5700,o20877);
         }
      }
   }
   
   private function o12052(param1:o20312) : void
   {
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      var _loc2_:int = o9601.indexOf(_loc3_);
      if(_loc2_ != -1)
      {
         o9601.splice(_loc2_,1);
      }
      _loc3_.o20306(o5973);
   }
   
   private function o8853(param1:o4217) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      if(_loc2_ != null)
      {
         o19959.push(_loc2_);
         if(!this.o7694 && !this.o8289())
         {
            _loc2_.o11414(o5973,o5947,o739);
         }
      }
   }
   
   private function o18233(param1:o20312) : void
   {
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541.body) as o17517;
      var _loc2_:int = o19959.indexOf(_loc3_);
      if(_loc2_ != -1)
      {
         o19959.splice(_loc2_,1);
      }
      _loc3_.o19622(o5973);
   }
   
   private function o15893() : void
   {
      var _loc3_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.Clense"],[o4519.o8116.o4550(o16250),o13803,this]) as o10416;
      var _loc1_:o18509 = o15460.o4078;
      _loc1_.x = 30;
      _loc1_.y = 0;
      _loc1_.rotate(o7616.o2179.rotation);
      _loc3_.body.o8564(body.o2697.x + _loc1_.x,body.o2697.y + _loc1_.y);
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = o7616.o2179.x * 5.3;
      _loc2_.y = o7616.o2179.y * 5.3;
      _loc3_.body.o6141(_loc2_.x,_loc2_.y);
   }
   
   private function o3340() : void
   {
      var _loc3_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.Antidote"],[o19505,o4519.o8116.o4550(o838),o18914,o5027]) as o10416;
      var _loc1_:o18509 = o15460.o4078;
      _loc1_.x = 30;
      _loc1_.y = 0;
      _loc1_.rotate(o7616.o2179.rotation);
      _loc3_.body.o8564(body.o2697.x + _loc1_.x,body.o2697.y + _loc1_.y);
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = o7616.o2179.x * 5.3;
      _loc2_.y = o7616.o2179.y * 5.3;
      _loc3_.body.o6141(_loc2_.x,_loc2_.y);
   }
   
   private function o3597(param1:o19312) : void
   {
      var _loc2_:* = null;
      if(param1.o6431 == null || param1.o9968 || !param1.o2344)
      {
         return;
      }
      var _loc4_:o18509 = o15460.o16789;
      _loc4_.x = param1.o6431.body.o2697.x - body.o2697.x;
      _loc4_.y = param1.o6431.body.o2697.y - body.o2697.y;
      var _loc3_:o18442 = param1.o6431 as o18442;
      if(_loc3_ != null)
      {
         o4519.o8116.o8361.o5725(_loc3_,o4016.o10062().initialise(o887,4,o19505,null,_loc4_.rotation,0,0,0,false,false,17));
         if(_loc3_.o8289() == false)
         {
            _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.BadBlood",o11381.o7800]) as o2130;
            if(_loc2_ != null)
            {
               o4519.o8116.o11954.o2429(_loc2_.o6691,_loc3_.o6691);
               _loc2_.o6691.rotation = 0;
            }
         }
      }
   }
   
   private function o16907(param1:Event) : void
   {
      var _loc4_:* = null;
      var _loc5_:* = null;
      var _loc3_:int = 0;
      var _loc2_:* = null;
      var _loc6_:Number = NaN;
      if(o1614 == -1)
      {
         if(o12749 > energy)
         {
            return;
         }
         energy = energy - o12749;
         _loc4_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.FinalFarewell",o11381.o7800]) as o2130;
         if(_loc4_ != null)
         {
            o4519.o8116.o11954.o2429(_loc4_.o6691,o6691);
            _loc4_.o6691.rotation = 0;
         }
         _loc5_ = new o257(o6691.position.x,o6691.position.y);
         o4519.o8116.o4812.o1162.o6632.play(1,0,0,false,_loc5_.o10088());
         _loc3_ = 0;
         while(_loc3_ < o19885)
         {
            _loc2_ = o12690(o17839);
            _loc6_ = 1200;
            _loc2_.body.o6141(o4519.o8116.random.o10418(o5973 + _loc3_) * _loc6_ * 2 - _loc6_,o4519.o8116.random.o10418(o5973 - _loc3_) * _loc6_ * 2 - _loc6_);
            _loc3_++;
         }
         o4519.o8116.o2996.o9685(o17517,body.o2697.x,body.o2697.y,o4519.o8116.o4550(o11819),o8723.o10217,0).defer(o16899);
         o1614 = o1051.o9310(this,5,o11999);
      }
   }
   
   private function o11999() : void
   {
      o1614 = -1;
   }
   
   private function o16899(param1:Array) : void
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      var _loc6_:int = 0;
      var _loc5_:* = param1;
      for each(var _loc4_ in param1)
      {
         if(_loc4_ != o19505)
         {
            _loc2_ = new o18848();
            _loc2_.amount = _loc4_.o1589 * o11522;
            o4519.o8116.o8361.o3742(_loc4_,_loc2_);
            _loc3_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.StimShot",o11381.o7800]) as o2130;
            if(_loc3_ != null)
            {
               o4519.o8116.o11954.o2429(_loc3_.o6691,_loc4_.o6691);
               _loc3_.o6691.rotation = 0;
            }
            _loc4_.o13635();
         }
      }
   }
}
