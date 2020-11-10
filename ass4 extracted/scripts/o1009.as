package
{
   import flash.display.Sprite;
   
   public class o1009 extends Sprite
   {
       
      
      public function o1009()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18944;
      }
   }
}

import flash.utils.Dictionary;

class o18944 extends o17517
{
    
   
   private var o15523:Number = 0;
   
   private var o17608:Number = 0;
   
   private var o12807:Number = 1;
   
   private var o2638:Number = 0;
   
   private var o10766:int = 0;
   
   private var o12250:Dictionary;
   
   function o18944()
   {
      o12250 = new Dictionary();
      super();
   }
   
   override public function get o1217() : int
   {
      return 2;
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.skills.DieAnotherDay");
      _loc1_.push("assets.skills.HoldTheLine");
      _loc1_.push("assets.skills.aerialBombardment.Bomb");
      _loc1_.push("assets.skills.aerialBombardment.Target");
      _loc1_.push("assets.skills.BruteForce");
      _loc1_.push("assets.effects.explosion.Bigger");
      _loc1_.push("assets.avatar.pose.rifle.leftArm.Heavy");
      _loc1_.push("assets.avatar.pose.pistol.leftArm.Heavy");
      _loc1_.push("assets.avatar.pose.death.Heavy");
      return _loc1_.concat(super.getCacheAssets());
   }
   
   override public function o16955(param1:int, param2:o3358, param3:int = 1) : void
   {
      o5973 = param1;
      o7616 = param2;
      level = param3;
      this.o13136 = o13136;
      var o1997:o1832 = o4519.o8116.profileData.o5292.o923.o16413(2);
      o11243 = o1997.o13167;
      o14242 = o1997.o13167;
      o10483 = o4519.o8116.o4550(o1997.o10483);
      super.o16955(o5973,o7616,level);
      body.o7191 = o1997.o7191;
      o6119 = o1997.o7191;
      o14560 = o4519.o8116.o11954.o10869();
      o14560.position = body.o2697;
      o14560.o16990 = o15465.o16990 + 0.001;
      o14560.o16396 = o17541.o13617("assets.avatar.pose.rifle.leftArm.Heavy");
      o4519.o8116.o11954.o9226(o14560);
      o1051.o9310(this,0.1,function():void
      {
         o4519.o8116.o11954.align(o14560,o15465);
      });
      o12966 = o4519.o8116.o11954.o10869();
      o12966.position = body.o2697;
      o12966.o16990 = o15465.o16990 + 0.001;
      o16748 = o4519.o8116.o11676.o6798("assets.avatar.pose.death.Heavy");
      o16748.o11525(o12966);
   }
   
   override public function o16544(param1:Boolean) : void
   {
      var _loc2_:o1832 = o4519.o8116.profileData.o5292.o923.o16413(2);
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
         o14560.o16396 = o17541.o13617("assets.avatar.pose.pistol.leftArm.Heavy");
      }
      else
      {
         o14560.o16396 = o17541.o13617("assets.avatar.pose.rifle.leftArm.Heavy");
      }
   }
   
   override protected function o15528(param1:o1492, param2:Vector.<o20074>) : void
   {
      o1160 = param1;
      o7800 = param2;
      switch(int(o1160.o10374) - 20)
      {
         case 0:
            var o4312:Number = o12010(17,o7800).o18177;
            var o5725:o20074 = o12010(12,o7800);
            var o8417:o20074 = o12010(32,o7800);
            o14886(o5725);
            o14886(o8417);
            var o11565:Function = function():void
            {
               var o10316:Number = 0;
               var o18269:Number = 0;
               var o18244:Number = o5725.apply(1) - 1;
               var o7316:Number = o8417.apply(1) - 1;
               o16867(20);
               o7336(20,false);
               var o16879:int = o1051.o4767(o19505,0.0333333333333333,function():void
               {
                  if(o7204)
                  {
                     o9797(3,o10316);
                     o5880(3,o18244 * 0.5);
                     o10316 = o18244 * 0.5;
                     o9797(4,o18269);
                     o5880(4,o7316 * 0.5);
                     o18269 = o7316 * 0.5;
                     o7336(20,true);
                  }
                  else
                  {
                     o9797(3,o10316);
                     o5880(3,o18244);
                     o10316 = o18244;
                     o9797(4,o18269);
                     o5880(4,o7316);
                     o18269 = o7316;
                     o7336(20,false);
                  }
               });
               o1051.o9310(o19505,o4312,function():void
               {
                  o9797(3,o10316);
                  o9797(4,o18269);
                  o1051.o19115(o16879);
                  o19960(20);
               });
            };
            o5526([[20,{
               "trigger":o11565,
               "key":"e",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
         default:
         default:
            super.o15528(o1160,o7800);
            return;
         case 3:
            o4312 = o12010(17,o7800).o18177;
            var o140:Function = o169(5,-(o9454 * 0.9),o4312);
            var o5028:Function = function():void
            {
               o16867(23);
               o140();
               o1051.o9310(o19505,o4312,function():void
               {
                  o19960(23);
               });
            };
            o5526([[23,{
               "trigger":o5028,
               "key":"e",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
         case 4:
            var o13751:o20074 = o12010(25,o7800);
            o2638 = o12010(12,o7800).o18177;
            if(o10308 == false)
            {
               body.o7191 = o13751.apply(body.o7191);
               body.o16280(this,o8273.o7087,o2186);
               body.o16280(this,o8273.o20083,o17051);
               o1051.o4767(this,2,o2540);
            }
            return;
         case 5:
            o3116 = o12010(13,o7800).o18177;
            o10423 = o12010(17,o7800).o18177;
            return;
         case 6:
            o15523 = o4519.o8116.o4550(o12010(15,o7800).o18177);
            o17608 = o12010(22,o7800).o18177;
            o12807 = o12010(26,o7800).o18177;
            o5526([[26,{
               "trigger":o3568,
               "key":"q",
               "energy":new o15787(o12010(38,o7800).o18177)
            }]]);
            return;
      }
   }
   
   private function o3568() : void
   {
      if(this != o4519.o32)
      {
         return;
      }
      var _loc1_:o12483 = new o12483();
      _loc1_.init(o19505,o15523,o17608,o12807);
   }
   
   private function o2186(param1:o663) : void
   {
      if(this.o7694 || this.o8289())
      {
         return;
      }
      var _loc2_:o18442 = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
      if(_loc2_ != null && _loc2_.o8289() == false)
      {
         if(o12250[_loc2_] == null)
         {
            o12250[_loc2_] = new o18933(o2638,this,_loc2_);
            _loc2_.o16280(this,o14571.o19115,o13565);
         }
      }
   }
   
   private function o17051(param1:o18091) : void
   {
      var _loc2_:o18442 = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
      if(_loc2_ != null)
      {
         if(o12250[_loc2_] != null)
         {
            o12250[_loc2_].end();
            delete o12250[_loc2_];
         }
      }
   }
   
   private function o13565(param1:o7734) : void
   {
      var _loc2_:o18442 = param1.o11493 as o18442;
      if(_loc2_ != null)
      {
         if(o12250[_loc2_] != null)
         {
            o12250[_loc2_].end();
            delete o12250[_loc2_];
         }
      }
   }
   
   private function o2540() : void
   {
      var _loc2_:int = 0;
      var _loc1_:Array = [];
      var _loc5_:int = 0;
      var _loc4_:* = o12250;
      for(var _loc3_ in o12250)
      {
         if(_loc3_.o8289())
         {
            if(o12250[_loc3_] != null)
            {
               o12250[_loc3_].end();
            }
            _loc1_.push(_loc3_);
         }
      }
      _loc2_ = 0;
      while(_loc2_ < _loc1_.length)
      {
         delete o12250[_loc1_[_loc2_]];
         _loc2_++;
      }
   }
}

class o18933
{
    
   
   private var o5725:Number;
   
   private var o1432:o17517;
   
   private var o18481:o18442;
   
   private var o9325:int = -1;
   
   function o18933(param1:Number, param2:o17517, param3:o18442)
   {
      super();
      o5725 = param1;
      o1432 = param2;
      o18481 = param3;
      o9325 = o1051.o4767(o1432,0.5,o7664,0,true);
   }
   
   private function o7664() : void
   {
      var _loc1_:* = null;
      if(o1432.o7616.o10720.x == 0 && o1432.o7616.o10720.y == 0)
      {
         return;
      }
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = o18481.body.position.x - o1432.body.position.x;
      _loc2_.y = o18481.body.position.y - o1432.body.position.y;
      if(_loc2_.o10018(o1432.o7616.o10720) >= 0)
      {
         o4519.o8116.o8361.o5725(o18481,o4016.o10062().initialise(o5725 / 2,1,o1432,null,o1432.o7616.o10720.rotation,0,0,0,false,false,24));
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.BruteForce"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = o1432.body.position.x;
            _loc1_.o6691.position.y = o1432.body.position.y;
            _loc1_.o6691.rotation = _loc2_.rotation;
            _loc1_.o6691.o16990 = o11381.o7800;
         }
      }
   }
   
   public function end() : void
   {
      o1051.o19115(o9325);
   }
}
