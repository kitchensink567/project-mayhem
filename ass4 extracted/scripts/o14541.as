package
{
   import flash.display.Sprite;
   
   public class o14541 extends Sprite
   {
       
      
      public function o14541()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19359;
      }
   }
}

import flash.events.Event;

class o19359 extends o18442
{
   
   public static const o8696:uint = o8723.o7778;
   
   private static const o12808:Number = 20;
    
   
   private var o7493:Number;
   
   private var o16832:Number = 0;
   
   private var o9890:o4039;
   
   private var o17950:Number = 1;
   
   function o19359()
   {
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(2);
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
      grade = param2;
      type = 2;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(2);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o17664(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 150;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.1 + o4519.o8116.random.o10418(param1) * 2 * 0.1);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o16024 = _loc6_.o16024;
      o15530 = _loc6_.o3704;
      o17198 = o4519.o8116.o4550(_loc6_.o17198);
      o475 = _loc8_.o475;
      o3847 = o4519.o8116.o4550(_loc6_.o3847);
      o3581 = o4519.o8116.o5830.o9009(_loc6_.o15540);
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc6_.o362);
      o4831 = [o4519.o8116.o5830.o9009(_loc6_.o853),o4519.o8116.o5830.o9009(_loc6_.o12311),o4519.o8116.o5830.o9009(_loc6_.o18675)];
      o502 = o4519.o8116.o5830.o9009(_loc6_.o15458);
      o11196 = o4519.o8116.o5830.o9009(_loc8_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc8_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc8_.o6568);
      o15469 = o4519.o8116.o5830.o9009(_loc6_.o14586);
      o8193 = _loc8_.o8193;
      o9747 = _loc8_.o5949;
      o1918 = _loc6_.o1918;
      o4052 = _loc8_.o4052;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc7_,param3,param4);
      _loc5_.o7191 = _loc8_.o7191;
      o7493 = o16024 * 2.66;
   }
   
   override protected function o11245(param1:Number) : void
   {
      super.o11245(param1);
      o7493 = o16024 * 2.66;
   }
   
   private function o17484() : o7848
   {
      if(target)
      {
         var x:Number = body.position.x - target.body.position.x;
         var y:Number = body.position.y - target.body.position.y;
         if(x * x + y * y <= o17198 * o17198)
         {
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
      }
      return null;
   }
   
   override protected function o1785() : void
   {
      var _loc1_:o7848 = o17484();
      if(_loc1_)
      {
         o11510(_loc1_);
      }
      else
      {
         o11430 = 0.2;
      }
   }
   
   protected function o11510(param1:o7848) : void
   {
      o16166.o10589(o3581);
      o16166.o10589(o6274,false);
      o5666();
      o16166.o19926(this,o1490.o16612,o5702);
      o20032();
      var _loc3_:o18509 = o15460.o4078;
      _loc3_.x = param1.body.o2697.x - body.o2697.x;
      _loc3_.y = param1.body.o2697.y - body.o2697.y;
      _loc3_.o14528();
      o6691.rotation = _loc3_.rotation;
      var _loc2_:o10416 = o4519.o8116.o2996.o2998(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.Spit"],[o17198 / o3847,o16024,o7493,o19505]) as o10416;
      _loc2_.body.o8564(body.o2697.x + _loc3_.x * 20,body.o2697.y + _loc3_.y * 20);
      _loc2_.o6691.rotation = _loc3_.rotation;
      _loc2_.body.o6141(_loc3_.x * o3847,_loc3_.y * o3847);
      _loc2_.o3 = o475;
   }
   
   private function o5702(param1:Event) : void
   {
      o1941();
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o17312.play(0.65,0,0,false,_loc1_.o10088(),0,9);
   }
   
   private function o20032() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o6890.play(o17950,0,0,false,_loc1_.o10088(),0,7);
   }
}
