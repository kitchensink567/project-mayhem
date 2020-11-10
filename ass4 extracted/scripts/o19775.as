package
{
   import flash.display.Sprite;
   
   public class o19775 extends Sprite
   {
       
      
      public function o19775()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8356;
      }
   }
}

import flash.events.Event;

class o8356 extends o18442
{
    
   
   public var o13779:Boolean = false;
   
   public var o4969:String;
   
   public var o867:String;
   
   private var o13412:Array;
   
   private var o5647:Number = 0.5;
   
   private var o9933:Number = 0;
   
   public var o13584:int = -1;
   
   private var o18246:int = 10;
   
   private var o2408:int = 20;
   
   private var o15338:Boolean = false;
   
   function o8356()
   {
      o4969 = "";
      o867 = "";
      o13412 = [1,1,1.1,1.1,1.2,1.2,1.3,1.3,1.4,1.4];
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(16);
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
      _loc3_.push("assets.common.zombie.tech.gib1");
      _loc3_.push("assets.common.zombie.tech.gib2");
      _loc3_.push("assets.common.zombie.tech.gib3");
      _loc3_.push("assets.common.zombie.tech.gib4");
      _loc3_.push("assets.common.zombie.tech.gib5");
      _loc3_.push("assets.common.zombie.tech.gib6");
      _loc3_.push("assets.common.zombie.tech.gib7");
      _loc3_.push("assets.common.zombie.tech.gib8");
      _loc3_.push("assets.common.zombie.tech.gib9");
      _loc3_.push("assets.common.zombie.tech.gib10");
      _loc3_.push("assets.common.zombie.tech.gib11");
      _loc3_.push("assets.common.zombie.tech.gib12");
      _loc3_.push("assets.common.zombie.tech.gib13");
      _loc3_.push("assets.enemies.boss3Zombie.Gib01");
      _loc3_.push("assets.enemies.boss3Zombie.Gib02");
      _loc3_.push("assets.enemies.boss3Zombie.Gib03");
      _loc3_.push("assets.enemies.boss3Zombie.Gib04");
      _loc3_.push("assets.enemies.boss3Zombie.Gib05");
      _loc3_.push("assets.enemies.boss3Zombie.Gib06");
      _loc3_.push("assets.enemies.boss3Zombie.Gib07");
      _loc3_.push("assets.enemies.boss3Zombie.Gib08");
      _loc3_.push("assets.enemies.boss3Zombie.Gib09");
      _loc3_.push("assets.enemies.boss3Zombie.Gib10");
      _loc3_.push("assets.enemies.boss3Zombie.Gib11");
      _loc3_.push("assets.enemies.boss3Zombie.Gib12");
      _loc3_.push("assets.enemies.boss3Zombie.Gib13");
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      o20384 = new o7600(param1);
      grade = param2;
      type = 16;
      o17050 = true;
      o8139 = false;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(16);
      var _loc6_:o14238 = _loc9_.o4036[grade];
      var _loc8_:o14238 = _loc9_.o4036[grade];
      this.o16125 = _loc9_.o17834;
      o18043(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243 * o13412[grade];
      o1589 = o11243;
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o11243 = o11243 + o11243 * 5;
         o753 = 0.03;
      }
      o4699 = 175;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05) * o13412[grade];
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109 * o13412[grade];
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc9_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc8_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc8_.o362);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      o4969 = o4519.o8116.o5830.o9009(_loc8_.o853);
      o867 = o4519.o8116.o5830.o9009(_loc8_.o12311);
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc6_.o1918;
      o4052 = _loc9_.o4052;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      if(grade >= 1)
      {
         o17127 = true;
      }
      super.o19011(param1,_loc5_,_loc7_,param3,param4,0);
      o13712 = true;
      _loc5_.o7191 = _loc9_.o7191;
      _loc7_.o16990 = o11381.o10850;
      _loc5_.o20458(fixture.id,o8723.o3969);
      _loc5_.o11496(fixture.id,o8723.o10217 ^ o8723.o2823);
      o5666();
      _loc7_.rotation = 0;
      _loc5_.o16687(0);
      o16166.o10589(o4969);
   }
   
   override public function o4526() : void
   {
      o15119();
      o16166.o10589(o867);
      o16166.o16280(this,o1490.o16612,o18499);
      o13584 = o1051.o4767(this,0.1,o4833);
   }
   
   private function o4833() : void
   {
      if(o16166.o16350 == o6274 && o5406 == false)
      {
         o2118();
      }
      else
      {
         o15113();
      }
      if(o6955 || !o15338)
      {
         o15113();
      }
   }
   
   public function o18499(param1:Event = null) : void
   {
      o16166.o12657(o1490.o16612,o18499);
      o16166.o10589(o6274);
      o16166.gotoAndPlay(0);
      o13779 = true;
      o1941();
      body.o9946(1);
      body.o20458(fixture.id,o8723.o18481);
   }
   
   override public function o13917() : Boolean
   {
      return o13779;
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(o13779)
      {
         super.o5725(param1);
      }
   }
   
   override protected function o5423() : void
   {
      super.o5423();
      o16166.frameRate = 0.05;
      o4947 = Number(o4947) + 1;
      o2856 = Number(o2856) + 1;
   }
   
   override protected function o1792(param1:Event) : void
   {
      super.o1792(param1);
      o16166.frameRate = 0.0333333333333333;
      o4947 = Number(o4947) - 1;
      o2856 = Number(o2856) - 1;
   }
   
   override public function get o2840() : int
   {
      if(false == o13779)
      {
         return 2;
      }
      return super.o2840;
   }
   
   override protected function o1342(param1:Boolean, param2:o4016) : void
   {
      if(o6955)
      {
         o15113();
         return;
      }
      o6955 = true;
      o6689();
      o15113();
      o1051.o19115(o13584);
      if(body)
      {
         body.o19115();
      }
      o20767 = 1;
      o4947 = 1;
      o2856 = 1;
      o10672 = 0;
      o4519.o13206.dispatchData(new o19919(o19505,param2));
   }
   
   private function o6689() : void
   {
      body.o6141(0,0);
      o16166.o10589(o4969);
      o16166.gotoAndStop(0);
      this.o5666();
      body.o9946(0);
      o1051.o9310(this,0.3,o18917);
      o1051.o9310(this,0.7,o1704);
      o1051.o9310(this,1,o6107);
      o1051.o9310(this,2,o20431);
   }
   
   private function o18917() : void
   {
      var _loc3_:* = 0;
      o12156(o18246,_loc3_,1);
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = 30 + o20384.random() * 20;
      _loc2_.y = 0;
      _loc2_.rotate(_loc3_);
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x + _loc2_.x;
         _loc1_.o6691.position.y = body.o2697.y + _loc2_.y;
         _loc1_.o6691.rotation = _loc3_;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
   }
   
   private function o1704() : void
   {
      var _loc3_:* = 2.35619449019235;
      o12156(o18246,_loc3_,1);
      o14055();
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = 30 + o20384.random() * 20;
      _loc2_.y = 0;
      _loc2_.rotate(_loc3_);
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x + _loc2_.x;
         _loc1_.o6691.position.y = body.o2697.y + _loc2_.y;
         _loc1_.o6691.rotation = _loc3_;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
   }
   
   private function o6107() : void
   {
      var _loc3_:* = 4.71238898038469;
      o12156(o18246,_loc3_,1);
      o14055();
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = 30 + o20384.random() * 20;
      _loc2_.y = 0;
      _loc2_.rotate(_loc3_);
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x + _loc2_.x;
         _loc1_.o6691.position.y = body.o2697.y + _loc2_.y;
         _loc1_.o6691.rotation = _loc3_;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
   }
   
   private function o20431() : void
   {
      o12156(o2408,0,3,true);
      o14055();
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x;
         _loc1_.o6691.position.y = body.o2697.y;
         _loc1_.o6691.rotation = 0;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
      o15113();
      o19115();
   }
   
   private function o12156(param1:int, param2:Number, param3:int, param4:Boolean = false) : void
   {
      var _loc5_:int = 0;
      var _loc8_:* = null;
      var _loc7_:* = null;
      var _loc6_:Number = NaN;
      _loc5_ = 0;
      while(_loc5_ < param1)
      {
         _loc8_ = o4519.o8116.o2996.o2998(o9047,[param3]) as o9047;
         _loc8_.body.o8564(body.o2697.x,body.o2697.y);
         _loc7_ = new o18509(1,0);
         _loc6_ = o20384.random() * (3.14159265358979 * 0.4) - 3.14159265358979 * 0.2;
         if(param4)
         {
            _loc7_.rotate(_loc5_ * (3.14159265358979 * 2) / param1 + _loc6_);
         }
         else
         {
            _loc7_.rotate(param2 + _loc6_);
         }
         _loc8_.o6141(_loc7_);
         _loc8_.o6691.rotation = o20384.random() * 20 - 10;
         _loc5_++;
      }
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o10632.play(1,0,0,false,_loc1_.o10088(),0,9);
   }
   
   override protected function o16855() : void
   {
      o15113();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o14517.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o2894.play(0.75,0,0,false,_loc1_.o10088());
   }
   
   private function o14055() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o13157.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o10492(param1:Boolean = false) : void
   {
      var _loc2_:Number = NaN;
      if(o8289())
      {
         return;
      }
      var _loc3_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         _loc2_ = Math.random();
         if(_loc2_ > o5647)
         {
            _loc2_ = o5647;
         }
         o4519.o8116.o4812.o14142.o1242.play(_loc2_,0,0,false,_loc3_.o10088());
      }
   }
   
   private function o2118() : void
   {
      var _loc1_:* = null;
      if(o6955)
      {
         o15113();
         return;
      }
      if(!o15338)
      {
         o15113();
         _loc1_ = new Date();
         o9933 = _loc1_.valueOf();
         o4519.o8116.o4812.o14142.o5834.play(0.3,2147483647,0,false,null,0,0,o9933);
         o15338 = true;
      }
   }
   
   private function o15113() : void
   {
      o15338 = false;
      o4519.o8116.o6169.o1529(o9933);
   }
   
   override public function o19115() : void
   {
      o15113();
      super.o19115();
   }
}
