package
{
   import flash.display.Sprite;
   
   public class o2623 extends Sprite
   {
       
      
      public function o2623()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o14919;
      }
   }
}

class o14919 extends o18442
{
    
   
   function o14919()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.shadows.Shadow");
      _loc1_.push("assets.effects.enemyHit.shocker.Arc");
      _loc1_.push("assets.effects.enemyHit.Shocker");
      _loc1_.push("assets.skills.Concussion");
      _loc1_.push("assets.common.zombie.gibSplatter.Top");
      _loc1_.push("assets.zombieSpecialProperties.FierySkin");
      _loc1_.push("assets.zombieSpecialProperties.PoisonedLimbs");
      _loc1_.push("assets.zombieSpecialProperties.ChitinousHide");
      _loc1_.push("assets.zombieSpecialProperties.ExtraFast");
      _loc1_.push("assets.zombieSpecialProperties.Beserk");
      _loc1_.push("assets.zombieSpecialProperties.ExtraStrong");
      _loc1_.push("assets.zombieSpecialProperties.Regenerating");
      _loc1_.push("assets.zombieSpecialProperties.EnergyResilient");
      _loc1_.push("assets.zombieSpecialProperties.DarkMinion");
      _loc1_.push("assets.zombieSpecialProperties.AcidBloodOverlay");
      _loc1_.push("assets.zombieSpecialProperties.AcidBlood");
      _loc1_.push("assets.common.zombie.gib1");
      _loc1_.push("assets.common.zombie.gib2");
      _loc1_.push("assets.common.zombie.gib3");
      _loc1_.push("assets.common.zombie.gib4");
      _loc1_.push("assets.common.zombie.gib5");
      _loc1_.push("assets.common.zombie.gib6");
      _loc1_.push("assets.common.zombie.gib7");
      _loc1_.push("assets.common.zombie.gib8");
      _loc1_.push("assets.common.zombie.gib9");
      _loc1_.push("assets.common.zombie.gib10");
      _loc1_.push("assets.common.zombie.ice.Gib1");
      _loc1_.push("assets.common.zombie.ice.Gib2");
      _loc1_.push("assets.common.zombie.ice.Gib3");
      _loc1_.push("assets.common.zombie.ice.Gib4");
      _loc1_.push("assets.common.zombie.ice.Gib5");
      _loc1_.push("assets.common.zombie.ice.Gib6");
      _loc1_.push("assets.common.zombie.ice.Gib7");
      _loc1_.push("assets.common.zombie.ice.Gib8");
      _loc1_.push("assets.common.zombie.ice.Gib9");
      _loc1_.push("assets.common.zombie.ice.Gib10");
      _loc1_.push("assets.flame.burningPartical");
      _loc1_.push("assets.effects.Acid");
      _loc1_.push("assets.flame.burningPartical");
      _loc1_.push("assets.flame.frostPartical");
      _loc1_.push("assets.skills.bioCleanse.ZomEffect");
      return _loc1_;
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc6_:* = 0;
      var _loc5_:* = null;
      var _loc8_:Boolean = false;
      var _loc4_:Vector.<String> = new Vector.<String>();
      var _loc7_:o1587 = o4519.o8116.o4235.o4248(0);
      _loc6_ = param1;
      while(_loc6_ <= param2)
      {
         _loc5_ = _loc7_.o4036[_loc6_];
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o15540));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o15807));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o362));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o16077));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o853));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o12311));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o18675));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o15458));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc5_.o14586));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc7_.o12492));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc7_.o10021));
         _loc4_.push(o4519.o8116.o5830.o9009(_loc7_.o6568));
         _loc6_++;
      }
      try
      {
         _loc8_ = false;
         if(o4519.o8116.o476.o9392.o16643())
         {
            o15882 = o4519.o8116.o476.o9392.o7908();
            var _loc11_:int = 0;
            var _loc10_:* = o15882.o7929;
            for each(var _loc3_ in o15882.o7929)
            {
               _loc8_ = true;
               if(_loc3_ == "Shambler")
               {
                  _loc4_ = o16900(_loc4_,o15882.name);
               }
            }
         }
      }
      catch(o7367:Error)
      {
         if(_loc8_)
         {
            trace("Failed to load festival holiday assets");
         }
         else
         {
            trace("Failed to load shambler assets");
         }
      }
      return _loc4_;
   }
   
   public static function o16900(param1:Vector.<String>, param2:String) : Vector.<String>
   {
      var _loc4_:* = null;
      var _loc6_:* = null;
      var _loc3_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:* = param1;
      for each(var _loc5_ in param1)
      {
         if(_loc5_)
         {
            _loc4_ = /Walk|Hit3|Hit2|Hit1|Death|Attack|Burnt/;
            _loc6_ = _loc5_.match(_loc4_);
            if(_loc6_ && _loc6_.length > 0)
            {
               param1[_loc3_] = _loc5_.replace(".slowZombie",".slowZombie" + param2);
            }
         }
         _loc3_++;
      }
      return param1;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      var _loc6_:int = 0;
      o20384 = new o7600(param1);
      type = 0;
      grade = param2;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(0);
      var _loc7_:o14238 = _loc9_.o4036[grade];
      this.o16125 = _loc9_.o17834;
      o17664(grade);
      o20133 = _loc7_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc7_.o11243;
      o1589 = o11243;
      o4699 = 60;
      o3478 = o4519.o8116.o4550(_loc7_.o18823) * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc7_.o16109;
      o1877 = _loc7_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16390 = [null,_loc7_.o11598,_loc7_.o16351,_loc7_.o884,_loc7_.o1098,0,0];
      o64 = _loc9_.o10981;
      o6274 = o4519.o8116.o5830.o9009(_loc7_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc7_.o362);
      o4831 = [o4519.o8116.o5830.o9009(_loc7_.o853),o4519.o8116.o5830.o9009(_loc7_.o12311),o4519.o8116.o5830.o9009(_loc7_.o18675)];
      o502 = o4519.o8116.o5830.o9009(_loc7_.o15458);
      o15469 = o4519.o8116.o5830.o9009(_loc7_.o14586);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      if(o15882)
      {
         o6274 = o6336(o6274);
         o15091 = o6336(o15091);
         o502 = o6336(o502);
         o15469 = o6336(o15469);
         _loc6_ = 0;
         var _loc12_:int = 0;
         var _loc11_:* = o4831;
         for each(var _loc10_ in o4831)
         {
            o4831[_loc6_] = o6336(_loc10_);
         }
      }
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc7_.o1918;
      o4052 = _loc9_.o4052;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc8_,param3,param4);
      _loc5_.o7191 = _loc9_.o7191;
   }
   
   public function o6336(param1:String) : String
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      if(param1)
      {
         _loc2_ = /Walk|Hit3|Hit2|Hit1|Death|Attack|Burnt/;
         _loc3_ = param1.match(_loc2_);
         if(_loc3_ && _loc3_.length > 0)
         {
            param1 = param1.replace(".slowZombie",".slowZombie" + o15882.name);
         }
      }
      return param1;
   }
}
