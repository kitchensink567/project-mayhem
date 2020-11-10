package
{
   import flash.display.Sprite;
   
   public class o8363 extends Sprite
   {
       
      
      public function o8363()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8616;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o8616 extends o5600
{
   
   public static const o3457:uint = o8723.o7778;
    
   
   private const o16509:Array = [3,5,3,5];
   
   private const o3066:Array = [[0,0,1,1],[2,2,3,3]];
   
   private const o5239:Array = [8,12,8,12];
   
   private var o3210:String;
   
   private var o16392:Number = 0.1;
   
   private var o15814:Number;
   
   private var o20227:Number;
   
   private var o17486:Boolean = false;
   
   private var o8014:Class;
   
   private var stage:int = 0;
   
   private var o9771:o18509;
   
   private var o11405:o18509;
   
   private var o20490:Number = 0;
   
   private var o868:o4332;
   
   private var o19326:o7331;
   
   private var o18217:int = 1;
   
   private const o20807:int = 250;
   
   function o8616()
   {
      o9771 = new o18509();
      o11405 = new o18509();
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(10);
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
      type = 10;
      o17050 = true;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(10);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o18043(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 75;
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
      o3581 = o4519.o8116.o5830.o9009(_loc6_.o15540);
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o12862 = [o4519.o8116.o5830.o9009(_loc6_.o362),o4519.o8116.o5830.o9009(_loc6_.o16077)];
      o502 = o4519.o8116.o5830.o9009(_loc6_.o15458);
      o3210 = o4519.o8116.o5830.o9009(_loc6_.o853);
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
      if(grade == 0)
      {
         o15814 = 5;
      }
      else if(grade == 1)
      {
         o15814 = 9;
      }
      o20227 = o16024 / 5 * o16392;
      o8014 = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.SpewWorm"];
      if(o20104() && o16277)
      {
         o5610 = o14576.o11754;
      }
      if(!o4519.o13206.multiplayer && o4519.o32.level == 1)
      {
         o17486 = true;
      }
   }
   
   override protected function o11245(param1:Number) : void
   {
      super.o11245(param1);
      o20227 = o16024 / 5 * o16392;
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
         o9358();
         return;
      }
      super.o14580(param1,param2);
   }
   
   protected function o9358() : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      o11430 = o15530;
      o16166.o10589(o3581);
      o16166.o10589(o6274,false);
      o5666();
      o9771.x = body.o2697.x;
      o9771.y = body.o2697.y;
      o20490 = o6691.rotation;
      o868 = o4519.o8116.o11954.o10869();
      o868.o16396 = o17541.o13617(o3210);
      o868.position = new o2415();
      o4519.o8116.o11954.o9226(o868);
      o868.o16990 = o11381.o3974;
      o868.rotation = o20490;
      o868.position.x = o9771.x;
      o868.position.y = o9771.y;
      o19326 = o4519.o8116.o11676.o6798(o3210);
      o19326.o12265 = false;
      o19326.play();
      o19326.o11525(o868);
      o7924();
      o19326.o19926(this,o1490.o16612,o9981);
   }
   
   private function o9981(param1:Event) : void
   {
      o4519.o8116.o11954.o11867(o868);
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = 130;
      _loc2_.y = 0;
      _loc2_.rotate(o20490);
      o11405.x = o9771.x + _loc2_.x;
      o11405.y = o9771.y + _loc2_.y;
      if(o17486)
      {
         o11418(1,o11405);
      }
      else
      {
         o11418(o16509[stage],o11405);
      }
      o19326.o19115();
      o10594();
      o1941();
   }
   
   private function o10594() : void
   {
      var _loc1_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.RegurgPool"];
      var _loc2_:* = o4519.o8116.o2996.o2998(_loc1_,[this,o16024,o15814,o475]) as o7848;
      _loc2_.body.o13392(o11405);
      _loc2_.o6691.rotation = o20490;
   }
   
   private function o11418(param1:int, param2:o18509 = null, param3:Boolean = false) : void
   {
      var _loc5_:int = 0;
      var _loc6_:* = null;
      var _loc4_:* = null;
      if(o18217 <= 250)
      {
         _loc5_ = 0;
         while(_loc5_ < param1)
         {
            if(param3)
            {
               _loc6_ = o15460.o4078;
               _loc6_.x = o20384.o3471(10,o17074 / 2);
               _loc6_.y = 0;
               _loc6_.rotate(3.14159265358979 * 2 * o20384.random());
               _loc4_ = new o18509(body.position.x + _loc6_.x,body.position.y + _loc6_.y);
               o6325(_loc4_);
            }
            else
            {
               _loc6_ = o15460.o4078;
               _loc6_.x = o20384.o3471(10,65);
               _loc6_.y = 0;
               _loc6_.rotate(3.14159265358979 * 2 * o20384.random());
               _loc4_ = new o18509(param2.x + _loc6_.x,param2.y + _loc6_.y);
               o4519.o8116.o2996.o4816(this.body.position.x,this.body.position.y,_loc4_.x,_loc4_.y,o8723.o2823,o8723.o3969 | o8723.o18180 | o8723.o19523).defer(o10514);
            }
            _loc5_++;
         }
      }
   }
   
   private function o6325(param1:o18509) : void
   {
      var _loc4_:* = null;
      o18217 = Number(o18217) + 1;
      var _loc3_:o18442 = o4519.o8116.o2996.o2998(o8014,[o3066[grade][stage],param1,0],o5973 + o18217) as o18442;
      if(o6037)
      {
         var _loc6_:int = 0;
         var _loc5_:* = o6037;
         for each(var _loc2_ in o6037)
         {
            if(_loc2_ is o14128)
            {
               _loc4_ = _loc2_ as o14128;
               _loc3_ = _loc4_.o6249(_loc3_,o3047.o14789,o3047.o12413,o3047.o4547);
            }
         }
      }
      _loc3_.o6691.rotation = o18217 % 36 / 36 * 2 * 3.14159265358979;
      _loc3_.o5454(0.1);
      _loc3_.o17012(o19831);
      o3047.o2154.dispatchData(new o6961(_loc3_));
   }
   
   private function o10514(param1:*) : void
   {
      var _loc2_:o18509 = new o18509(param1.x,param1.y);
      if(param1.x == 0 && param1.y == 0)
      {
         _loc2_.x = param1.endX;
         _loc2_.y = param1.endY;
      }
      o6325(_loc2_);
   }
   
   override protected function o1342(param1:Boolean, param2:o4016) : void
   {
      if(param1 || o502 == null)
      {
         if(o17486)
         {
            o11418(3,null,true);
         }
         else
         {
            o11418(o5239[stage],null,true);
         }
      }
      super.o1342(param1,param2);
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      if(o868)
      {
         o868.o19115();
      }
      if(o19326)
      {
         o19326.o19115();
      }
      super.o19115();
   }
   
   override protected function o10797(param1:Event) : void
   {
      if(o17486)
      {
         o11418(3,null,true);
      }
      else
      {
         o11418(o5239[stage],null,true);
      }
      super.o10797(param1);
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o3072.play(1.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o19675.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o9822.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o7924() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o20952.play(1,0,0,false,_loc1_.o10088());
   }
}
