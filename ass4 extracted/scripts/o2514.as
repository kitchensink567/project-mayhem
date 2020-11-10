package
{
   import flash.display.Sprite;
   
   public class o2514 extends Sprite
   {
       
      
      public function o2514()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5955;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o5955 extends o5600
{
   
   public static const o8696:uint = o8723.o7778;
   
   private static const o6888:Number = 20;
   
   private static const o12501:Number = 80;
    
   
   private var o20554:Number;
   
   private var o18922:Vector.<o17517>;
   
   private var o4761:Number = 0;
   
   private var o9890:o4039;
   
   private var o14982:Number = 1;
   
   private var o12662:Array;
   
   private var stage:int = 0;
   
   private var o16866:o18509;
   
   private var o14119:int = 0;
   
   private var o1906:o18509;
   
   private var o2695:Number = 0;
   
   private var o14365:int = 0;
   
   private const o274:int = 10;
   
   private const o2978:int = 3;
   
   function o5955()
   {
      o18922 = new Vector.<o17517>();
      o12662 = [[3],[3,4],[2,3,4],[2,3,4,5]];
      o16866 = new o18509();
      o1906 = new o18509();
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(13);
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
      _loc3_.push("assets.enemies.boss2Zombie.ProjectileParticalLoop");
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      o20384 = new o7600(param1);
      type = 13;
      o17050 = true;
      grade = int(param2 / 10);
      stage = param2 % 10;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(13);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o18043(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 100;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o16024 = _loc6_.o16024;
      o15530 = _loc6_.o3704 * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o17198 = o4519.o8116.o4550(_loc6_.o17198);
      o475 = _loc8_.o475;
      o3847 = o4519.o8116.o4550(_loc6_.o3847);
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
      o9491.push(o16109 / 2);
      o12401.push(1);
      o9491.push(o16109 / 2);
      o12401.push(2);
      o13839 = o16109 * 0.2;
      o7808 = 2;
      o6781 = 2;
      super.o19011(param1,_loc5_,_loc7_,param3,param4);
      o11430 = o15530 * (0.6 * o20384.random() + 0.4);
      _loc5_.o7191 = _loc8_.o7191;
      _loc7_.o16990 = o11381.o10850;
      o20554 = o16024;
      if(o20104() && o16277)
      {
         o5610 = o14576.o17589;
      }
   }
   
   override protected function o11245(param1:Number) : void
   {
      super.o11245(param1);
      o20554 = o16024;
   }
   
   private function o17484() : o7848
   {
      if(target)
      {
         var o12775:o18509 = o15460.o16789;
         o12775.x = target.body.position.x - body.position.x;
         o12775.y = target.body.position.y - body.position.y;
         var o11709:Number = Math.abs(o12775.rotation - o6691.rotation) % (2 * 3.14159265358979);
         if(o11709 > 3.14159265358979)
         {
            o11709 = 2 * 3.14159265358979 - o11709;
         }
         if(o11709 > 3.14159265358979 / 8)
         {
            return null;
         }
         var o10918:Boolean = false;
         o4519.o8116.o2996.o4816(body.position.x,body.position.y,target.body.position.x,target.body.position.y,o8723.o42,1 | o8723.o19175,null,1,1).defer(function(param1:*):void
         {
            if(param1.entity != 1 && param1.entity != null)
            {
               o10918 = true;
            }
         });
         if(o10918)
         {
            return target;
         }
      }
      return null;
   }
   
   override protected function o1785() : void
   {
      var _loc1_:* = null;
      var _loc2_:o7848 = o17484();
      if(_loc2_)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(2);
         _loc1_.writeFloat(_loc2_.body.position.x);
         _loc1_.writeFloat(_loc2_.body.position.y);
         dispatchData(new o2149(this,_loc1_,true));
      }
      else
      {
         o11430 = 0.2;
      }
   }
   
   override protected function o14580(param1:int, param2:ByteArray) : void
   {
      if(!(int(param1) - 2))
      {
         o6528(param2.readFloat(),param2.readFloat());
         return;
      }
      super.o14580(param1,param2);
   }
   
   protected function o6528(param1:Number, param2:Number) : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      o11430 = o15530;
      o16866.x = param1;
      o16866.y = param2;
      var _loc3_:o18509 = o15460.o16789;
      _loc3_.x = param1 - body.position.x;
      _loc3_.y = param2 - body.position.y;
      o6691.rotation = _loc3_.rotation;
      o16166.o10589(o3581);
      o16166.o10589(o6274,false);
      o5666();
      o11803();
      o14119 = 0;
      o16166.o13786(o14972);
      o16166.o19926(this,o1490.o16612,o7556);
   }
   
   public function o14972(param1:String) : void
   {
      if(param1 == null)
      {
         return;
      }
      if(o11243 < 0)
      {
         return;
      }
      var _loc5_:int = param1.substr(4);
      if(o14119 >= o12662[stage].length)
      {
         return;
      }
      if(o12662[stage].indexOf(_loc5_) == -1)
      {
         return;
      }
      o14119 = Number(o14119) + 1;
      var _loc4_:o18509 = o15460.o4078;
      _loc4_.x = o16866.x - body.o2697.x;
      _loc4_.y = o16866.y - body.o2697.y;
      _loc4_.o14528();
      var _loc3_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.FlameBall"],[o16024,o20554,o19505]) as o10416;
      var _loc2_:o18509 = o15460.o16789;
      _loc2_.x = _loc4_.y;
      _loc2_.y = -_loc4_.x;
      _loc2_.o17903((_loc5_ - 1) * 20 - 40);
      _loc3_.body.o8564(body.o2697.x + _loc2_.x,body.o2697.y + _loc2_.y);
      _loc3_.o3 = o475;
      _loc3_.o6691.rotation = _loc4_.rotation;
      _loc3_.body.o6141(_loc4_.x * o3847,_loc4_.y * o3847);
   }
   
   public function o7556(param1:Event = null) : void
   {
      o16166.o12657(o1490.o6463,o14972);
      o16166.o12657(o1490.o16612,o7556);
      o1941();
   }
   
   override protected function o1342(param1:Boolean, param2:o4016) : void
   {
      o1051.o9310(null,0.3,o15301);
      super.o1342(param1,param2);
   }
   
   private function o15301() : void
   {
      var _loc1_:o18509 = o15460.o4078;
      _loc1_.x = -55;
      _loc1_.y = 0;
      _loc1_.rotate(o6691.rotation);
      o1906.x = body.position.x + _loc1_.x;
      o1906.y = body.position.y + _loc1_.y;
      o7387();
   }
   
   private function o7387() : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = null;
      var _loc1_:* = null;
      _loc3_ = 0;
      while(_loc3_ < 10)
      {
         _loc2_ = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.FlameBall"],[o16024,o20554,o19505]) as o10416;
         _loc1_ = o15460.o4078;
         _loc1_.x = 10;
         _loc1_.y = 0;
         _loc1_.rotate(3.14159265358979 * 2 * _loc3_ / 10 + o2695);
         _loc2_.body.o8564(o1906.x + _loc1_.x,o1906.y + _loc1_.y);
         _loc2_.o3 = o475;
         _loc2_.o6691.rotation = _loc1_.rotation;
         _loc1_.o14528();
         _loc2_.body.o6141(_loc1_.x * o3847,_loc1_.y * o3847);
         _loc3_++;
      }
      o2695 = o2695 + 0.138230076757951;
      o14365 = Number(o14365) + 1;
      if(o14365 < 3)
      {
         o1051.o9310(null,0.025,o7387);
      }
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o15770.play(1.5,0,0,false,_loc1_.o10088());
   }
   
   private function o11803() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o5535.play(o14982,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o20058.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o4138.play(1,0,0,false,_loc1_.o10088());
   }
}
