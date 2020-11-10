package
{
   import flash.display.Sprite;
   
   public class o1481 extends Sprite
   {
       
      
      public function o1481()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o16904;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o16904 extends o5600
{
   
   private static const o8341:Array = [12,15,18,21];
    
   
   private var o1324:int = 1;
   
   private var o6870:int;
   
   private var stage:int;
   
   function o16904()
   {
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(11);
      _loc5_ = param1;
      while(_loc5_ <= param2)
      {
         _loc4_ = _loc6_.o4036[_loc5_];
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15540));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15807));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o362));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o16077));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15458));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o853));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o12311));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o18675));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o14586));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o12492));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o10021));
         _loc3_.push(o4519.o8116.o5830.o9009(_loc6_.o6568));
         _loc5_++;
      }
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      o20384 = new o7600(param1);
      grade = int(param2 / 10);
      stage = param2 % 10;
      type = 11;
      o17050 = true;
      o6870 = 3;
      o1324 = o8341[stage];
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(11);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o18043(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 165;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o16024 = _loc6_.o16024;
      o17198 = o4519.o8116.o4550(_loc6_.o17198);
      o3847 = o4519.o8116.o4550(_loc6_.o3847);
      o15530 = _loc6_.o3704 * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o3581 = o4519.o8116.o5830.o9009(_loc6_.o15540);
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc6_.o362);
      o502 = o4519.o8116.o5830.o9009(_loc6_.o15458);
      o11196 = o4519.o8116.o5830.o9009(_loc8_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc8_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc8_.o6568);
      o8193 = _loc8_.o8193;
      o9747 = _loc8_.o5949;
      o1918 = _loc6_.o1918;
      o4052 = _loc8_.o4052;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc7_,param3,param4);
      _loc5_.o7191 = _loc8_.o7191;
      _loc7_.o16990 = o11381.o10850;
      if(o20104())
      {
         o3511();
      }
      if(o20104() && o16277)
      {
         o5610 = o14576.o19970;
      }
   }
   
   override protected function o1785() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      dispatchData(new o2149(this,_loc1_,true));
   }
   
   override protected function o14580(param1:int, param2:ByteArray) : void
   {
      if(!(int(param1) - 2))
      {
         o10724();
         return;
      }
      super.o14580(param1,param2);
   }
   
   protected function o10724() : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      o11430 = o15530;
      o16166.o10589(o3581);
      o16166.o10589(o6274,false);
      o5666();
      o6605();
      o16166.o13786(o5172);
      o16166.o19926(this,o1490.o16612,o10310);
   }
   
   private function o10310(param1:Event) : void
   {
      o1941();
   }
   
   private function o5172(param1:String) : void
   {
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc3_:* = null;
      var _loc2_:* = null;
      if(param1 != "fire")
      {
         return;
      }
      o16166.o12657(o1490.o6463,o5172);
      o1967();
      _loc4_ = 0;
      while(_loc4_ < o1324)
      {
         _loc5_ = _loc4_ % 3;
         _loc3_ = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.RepatitisProjectile"],[_loc5_,o16024,this]) as o10416;
         _loc2_ = o15460.o4078;
         _loc2_.x = 20;
         _loc2_.y = 0;
         _loc2_.rotate(3.14159265358979 * 2 * _loc4_ / o1324);
         _loc3_.body.o8564(body.o2697.x + _loc2_.x,body.o2697.y + _loc2_.y);
         _loc2_.o14528();
         _loc3_.o6691.rotation = _loc2_.rotation;
         _loc3_.body.o6141(_loc2_.x * o3847,_loc2_.y * o3847);
         _loc4_++;
      }
   }
   
   override protected function o10797(param1:Event) : void
   {
      o1930(o6870);
      super.o10797(param1);
   }
   
   private function o1930(param1:int) : void
   {
      var _loc3_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:* = null;
      var _loc2_:* = null;
      var _loc6_:* = null;
      var _loc7_:Vector.<int> = Vector.<int>([0,1,2]);
      _loc3_ = 0;
      while(_loc3_ < param1)
      {
         _loc5_ = _loc7_.splice(0,1)[0];
         _loc4_ = o15460.o4078;
         _loc4_.x = 40;
         _loc4_.y = 0;
         _loc4_.rotate(o6691.rotation + _loc3_ * (2 * 3.14159265358979 / param1));
         _loc2_ = new o18509(body.o2697.x + _loc4_.x,body.o2697.y + _loc4_.y);
         _loc6_ = o4519.o8116.o2996.o2998(o19671.o13465(),[grade * 10 + _loc5_,_loc2_,0],o5973 + _loc3_ + 1) as o18442;
         _loc6_.o6691.rotation = _loc4_.rotation;
         _loc6_.o12555 = this.o12555;
         _loc6_.o17012(o19831);
         o3047.o2154.dispatchData(new o6961(_loc6_));
         _loc3_++;
      }
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o12943.play(1.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o19724.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o15141.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o6605() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o16436.play(0.65,0,0,false,_loc1_.o10088());
   }
   
   private function o1967() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o15875.play(0.75,0,0,false,_loc1_.o10088());
   }
}
