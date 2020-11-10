package
{
   public class o6743 extends o7848
   {
      
      public static var o15986:Boolean = false;
      
      public static const o6365:uint = o8723.o9135;
       
      
      public var o18134:int;
      
      public var o4052:int;
      
      public var o10469:o7848 = null;
      
      public var o19505:o7848;
      
      public var o16809:o14331;
      
      private var o5659:o4332 = null;
      
      public var o13559:o7331 = null;
      
      protected const o16760:Number = 30;
      
      protected const o9338:Number = 1.5;
      
      protected const o16810:Number = o11381.o10850 + 1;
      
      protected const o751:Number = -1.5707963267948966;
      
      protected var o2918:Number = 0.5;
      
      protected var o14129:Array = null;
      
      protected var o6507:Array = null;
      
      public function o6743()
      {
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.christmas.SasCashBow");
         _loc1_.push("assets.christmas.GrenadeBow");
         _loc1_.push("assets.christmas.HealthAndTurretBow");
         _loc1_.push("assets.christmas.strongboxbow");
         return _loc1_;
      }
      
      public function o9714(param1:int) : void
      {
         var _loc2_:o10262 = o4519.o8116.o9869.o1968(1,0,false);
         var _loc4_:o17761 = new o17761(_loc2_.o2535);
         _loc4_.o16716(32);
         var _loc3_:o4039 = o4519.o8116.o20600.o15803(o6365,o8723.o32,o8723.o32,true);
         _loc3_.o10289 = _loc4_.id;
         _loc2_.o14230(_loc3_);
         super.o10783(param1,_loc2_,null,o4519.o8116.o11676);
         o19505 = this;
      }
      
      public function o12675(param1:int, param2:o12443, param3:Number = 1) : void
      {
         this.o4052 = param1;
         o16809 = o4519.o8116.o6895.o16809(param1,param2,param3);
         if(param1 == o1197.o17861)
         {
            o16809.o9449 = false;
         }
         o6691 = o4519.o8116.o11954.o10869();
         o15611(o16809);
         o6691.scaleX = 1.5;
         o6691.scaleY = 1.5;
         o6691.o16990 = o16810;
         o6691.rotation = o751;
         o1051.o4767(this,0.0333333333333333,o18285,30 * o2918);
         o6691.position = body.position;
         o16166.o11525(o6691);
         o4519.o8116.o11954.o9226(o6691);
         if(param2 != null && param2.o7743 > 0)
         {
            o16950(o16809);
         }
         body.o16280(this,o8273.o7087,o17025);
      }
      
      protected function o18285() : void
      {
         o2918 = o2918 - 0.0333333333333333;
         o6691.scaleX = 1 + (1.5 - 1) * o2918;
         o6691.scaleY = 1 + (1.5 - 1) * o2918;
         o6691.o16990 = o11381.o9135 + (o16810 - o11381.o9135) * o2918;
         o6691.rotation = -1.5707963267949 * o2918;
         if(o13559)
         {
            o5659.scaleX = 1 + (1.5 - 1) * o2918;
            o5659.scaleY = 1 + (1.5 - 1) * o2918;
            o5659.o16990 = o11381.o9135 + (o16810 - o11381.o9135) * o2918 + 1;
            o5659.rotation = -1.5707963267949 * o2918;
         }
      }
      
      protected function o17025(param1:o663) : void
      {
         var _loc5_:Boolean = false;
         var _loc10_:* = 0;
         var _loc9_:int = 0;
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:int = 0;
         var _loc7_:* = 0;
         if(param1.o11541 == o4519.o32.body)
         {
            _loc5_ = false;
            _loc10_ = 0;
            _loc9_ = o16809.value as int;
            if(o16809.type == o19053.o14325 && o16809.o17401 == 11 && o4519.o32.o11243 >= o4519.o32.o1589)
            {
               return;
            }
            if(o16809.type == o19053.o14325 && o16809.o17401 != 11 && o16809.o17401 != 12 && o16809.o17401 != 13)
            {
               _loc6_ = o4519.o8116.profileData.o7923.o3525;
               _loc4_ = o4519.o8116.profileData.o202;
               _loc3_ = o16809.value as int;
               _loc8_ = _loc4_.o8486(o16809.o17401);
               _loc2_ = _loc6_.o15479(o16809.o17401);
               if(_loc8_ >= _loc2_)
               {
                  o16809.value = 0;
                  _loc5_ = true;
                  _loc10_ = _loc3_;
               }
               else if(_loc8_ + _loc3_ > _loc2_)
               {
                  _loc5_ = true;
                  _loc7_ = _loc3_;
                  _loc3_ = _loc2_ - _loc8_;
                  o16809.value = _loc3_;
                  _loc10_ = int(_loc7_ - _loc3_);
               }
            }
            if(_loc5_)
            {
               o4519.o8116.o6895.o13665(o16809);
               o4588(o16809);
               if(_loc10_ > 0)
               {
                  o16809.value = _loc10_;
                  o4519.o8116.o6895.o5236(o16809);
               }
               o19115();
            }
            else
            {
               o4519.o8116.o6895.o13665(o16809);
               o4588(o16809);
               o19115();
            }
         }
      }
      
      protected function get o148() : Array
      {
         if(o14129 == null)
         {
            o14129 = [];
            o14129.push("assets.item.strongBoxSteel");
            o14129.push("assets.item.strongBoxTitanium");
            o14129.push("assets.item.strongBoxMolybdenum");
            o14129.push("assets.item.strongBoxIridium");
            o14129.push("assets.item.strongBoxNeodynium");
            o14129.push("assets.item.strongBoxPromethium");
            o14129.push("assets.item.strongBoxThulium");
            o14129.push("assets.item.strongBoxNantonium");
            o14129.push("assets.item.strongBoxBlack");
         }
         return o14129;
      }
      
      protected function get o691() : Array
      {
         if(o6507 == null)
         {
            o6507 = [];
            o6507.push("assets.item.grenadeCrate");
            o6507.push("assets.item.grenadeCrate");
            o6507.push("assets.item.grenadeCrate");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.turretBox");
            o6507.push("assets.item.MedCrate");
            o6507.push("assets.item.premiumBulletsCrate");
            o6507.push("assets.item.alloyDrop");
         }
         return o6507;
      }
      
      public function o15611(param1:o14331) : void
      {
         var _loc2_:* = 0;
         var _loc4_:* = null;
         this.o18134 = param1.type;
         if(!o4519.o8116.o476.o9392.o16643())
         {
         }
         var _loc5_:Boolean = true;
         var _loc3_:o20567 = o4519.o8116.o476.o9392.o7908();
         var _loc6_:* = param1.type;
         switch(_loc6_)
         {
            case o19053.o17861:
               o16166.o10589("assets.item.cashDrop");
               if(_loc3_ && _loc3_.o8896["cashAsset"])
               {
                  o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["cashAsset"]);
               }
               break;
            case o19053.o14325:
               _loc2_ = int(param1.o17401 - 1);
               _loc4_ = o691[param1.o17401 - 1];
               if(_loc2_ == 12)
               {
                  _loc2_ = _loc2_;
               }
               o16166.o10589(o691[param1.o17401 - 1]);
               if(_loc3_ && _loc3_.o8896["grenadeAsset"] && _loc3_.o8896["HealthAndTurretAsset"])
               {
                  if(param1.o17401 == 1 || param1.o17401 == 2 || param1.o17401 == 12)
                  {
                     o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["grenadeAsset"]);
                  }
                  else if(param1.o17401 >= 4 && param1.o17401 <= 10)
                  {
                     o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["HealthAndTurretAsset"]);
                  }
                  else if(param1.o17401 == 11)
                  {
                     o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["HealthAndTurretAsset"]);
                  }
               }
               break;
            case o19053.o14669:
               o16166.o10589(o148[param1.value - 1]);
               o16166.o12265 = false;
               if(_loc3_ && _loc3_.o8896["strongboxAsset"])
               {
                  o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["strongboxAsset"]);
               }
               break;
            default:
               o16166.o10589("assets.item.cashDrop");
               if(_loc3_ && _loc3_.o8896["cashAsset"])
               {
                  o13559 = o4519.o8116.o11676.o6798(_loc3_.o8896["cashAsset"]);
               }
         }
         if(_loc5_ && o13559)
         {
            o5659 = o4519.o8116.o11954.o10869();
            o5659.position = body.position;
            o5659.o16990 = o11381.o2819;
            o13559.o11525(o5659);
            o13559.gotoAndStop(0);
            o13559.o12265 = false;
            o4519.o8116.o11954.o9226(o5659);
         }
         o16166.gotoAndPlay(0);
      }
      
      protected function o4588(param1:o14331) : void
      {
         var _loc2_:* = param1.type;
         switch(_loc2_)
         {
            case o19053.o17861:
               o4519.o8116.o4812.o1162.o6059.play(1);
               break;
            case o19053.o14325:
               o4519.o8116.o4812.o1162.o17900.play(1);
               break;
            case o19053.o14669:
               o4519.o8116.o4812.o1162.o2005.play(1);
               break;
            default:
               o4519.o8116.o4812.ui.o6915.play(1);
         }
      }
      
      protected function o16950(param1:o14331) : void
      {
         var _loc2_:* = param1.type;
         switch(_loc2_)
         {
            case o19053.o17861:
               o4519.o8116.o4812.o4404.o3530.play(1);
               break;
            case o19053.o14325:
               if(param1.o17401 != 11)
               {
                  o4519.o8116.o4812.o4404.o10736.play(1);
               }
               break;
            case o19053.o14669:
               o4519.o8116.o4812.o4404.o6716.play(1);
               break;
            default:
               o4519.o8116.o4812.o4404.o10736.play(1);
         }
      }
      
      override public function o19115() : void
      {
         if(o13559 != null)
         {
            o13559.o19115();
         }
         if(o5659 != null)
         {
            o5659.o19115();
         }
         super.o19115();
      }
   }
}
