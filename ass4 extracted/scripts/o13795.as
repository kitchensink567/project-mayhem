package
{
   import flash.display.Sprite;
   
   public class o13795 extends Sprite
   {
       
      
      public function o13795()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10422;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o10422 extends o5600
{
    
   
   private const o18345:Number = o4519.o8116.o4550(3.1);
   
   private const o5007:Array = [0,10,20,30];
   
   private const o5447:Array = [20,22,24,25];
   
   private const o20836:Array = [60,65,70,75];
   
   private const o6144:Array = [75,76,77,80];
   
   private var o3829:Number = 1.0;
   
   private var o2222:String;
   
   private var o1403:String;
   
   private var o16326:String;
   
   private var o8547:String;
   
   private var o15657:Number;
   
   private var stage:int;
   
   private var o15827:Boolean = false;
   
   private var o13992:Boolean = false;
   
   private const o530:Array = [new o18509(25,0),new o18509(0,50),new o18509(0,-50)];
   
   private var o177:Array;
   
   private var o9856:Boolean = false;
   
   private const o19676:o18509 = new o18509(176,-18);
   
   private const o5883:o18509 = new o18509(176,18);
   
   function o10422()
   {
      o177 = [];
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(14);
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
      type = 14;
      o17050 = true;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(14);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o18043(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 115;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o16024 = _loc6_.o16024;
      o15657 = o16024 * 0.25;
      o15530 = _loc6_.o3704 * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o3829 = o3829 * (1 + o5007[stage] / 100);
      o475 = _loc8_.o475;
      o2222 = o4519.o8116.o5830.o9009(_loc6_.o15540);
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc6_.o362);
      o502 = o4519.o8116.o5830.o9009(_loc6_.o15458);
      o1403 = o4519.o8116.o5830.o9009(_loc6_.o853);
      o16326 = o4519.o8116.o5830.o9009(_loc6_.o12311);
      o8547 = o4519.o8116.o5830.o9009(_loc6_.o18675);
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
   
   override protected function o11245(param1:Number) : void
   {
      o15657 = o16024 * 0.25;
   }
   
   override public function o5725(param1:o4016) : void
   {
      super.o5725(param1);
      o13999();
   }
   
   private function o13999() : void
   {
      var _loc1_:* = null;
      if(!o15827 && !o10391() && o11243 / o1589 <= o5447[stage] / 100)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(4);
         dispatchData(new o2149(this,_loc1_,false));
      }
   }
   
   private function o3660() : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      o15827 = true;
      o13992 = true;
      o20098(o3478 * (1 + o20836[stage] / 100));
      o16390[1] = o6144[stage];
      o16390[4] = o6144[stage];
      o16390[2] = o6144[stage];
      o16390[3] = o6144[stage];
      o16166.o10589(o16326);
      o16166.o10589(o6274,false);
      o13055();
      o19210();
      o5666();
      o16166.o19926(this,o1490.o16612,o3096);
   }
   
   private function o3096(param1:Event) : void
   {
      o13992 = false;
      o1941();
   }
   
   private function o19210() : void
   {
      var _loc1_:int = 0;
      var _loc2_:* = null;
      _loc1_ = 0;
      while(_loc1_ < o177.length)
      {
         o177[_loc1_].o19115();
         _loc1_++;
      }
      o177 = [];
      _loc1_ = 0;
      while(_loc1_ < o530.length)
      {
         _loc2_ = new o9686();
         _loc2_.init(o8547,o530[_loc1_].x,o530[_loc1_].y,o11381.o10850 + 1,0.6,this,this.o6691);
         o177.push(_loc2_);
         _loc1_++;
      }
   }
   
   private function o10391() : Boolean
   {
      return o13992 || o9856 || o6955 || o16243;
   }
   
   override protected function o14100() : void
   {
      if(o11430 > 0)
      {
         o11430 = o11430 - 0.1;
      }
      if(o11430 <= 0 && !o10391())
      {
         o1785();
         o11430 = o15530;
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
      switch(int(param1) - 2)
      {
         case 0:
            o3959();
            return;
         default:
            super.o14580(param1,param2);
            return;
         case 2:
            o3660();
            return;
      }
   }
   
   private function o3959() : void
   {
      if(o6955 || o5836)
      {
         return;
      }
      o9856 = true;
      o11430 = o15530;
      o5850();
      o16166.o10589(o2222);
      o16166.o10589(o6274,false);
      o5666();
      o16166.o13786(o11603);
      o16166.o19926(this,o1490.o16612,o16363);
   }
   
   private function o11603(param1:String) : void
   {
      if(param1 != "hit")
      {
         return;
      }
      o16166.o12657(o1490.o6463,o11603);
      o13539();
      o4519.o13206.o16821(10,0.5);
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.o7277(o6691.rotation + o19676.rotation,o19676.o3215);
      var _loc3_:o3107 = new o3107();
      _loc3_.o16955(o1403,o475,this.x + _loc2_.x,this.y + _loc2_.y,o18345 * o3829);
      _loc3_.o8012 = o16024;
      _loc3_.o14797 = o15657;
      _loc3_.o1432 = this;
      _loc2_.o7277(o6691.rotation + o5883.rotation,o5883.o3215);
      _loc3_ = new o3107();
      _loc3_.o16955(o1403,o475,this.x + _loc2_.x,this.y + _loc2_.y,o18345 * o3829);
      _loc3_.o8012 = o16024;
      _loc3_.o14797 = o15657;
      _loc3_.o1432 = this;
   }
   
   private function o16363(param1:Event) : void
   {
      o9856 = false;
      o1941();
      o13999();
   }
   
   override public function o19115() : void
   {
      var _loc1_:int = 0;
      if(o8289())
      {
         return;
      }
      _loc1_ = 0;
      while(_loc1_ < o177.length)
      {
         o177[_loc1_].o19115();
         _loc1_++;
      }
      super.o19115();
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o1423.play(1.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o13246.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o12204.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o5850() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o848.play(0.8,0,0,false,_loc1_.o10088());
   }
   
   private function o13539() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o20420.play(1,0,0,false,_loc1_.o10088());
   }
   
   private function o13055() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o18262.play(1,0,0,false,_loc1_.o10088());
   }
}
