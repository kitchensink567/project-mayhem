package
{
   import flash.display.Sprite;
   
   public class o1764 extends Sprite
   {
       
      
      public function o1764()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13224;
      }
   }
}

class o13224 extends o18442
{
    
   
   function o13224()
   {
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(3);
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
      type = 3;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(3);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o17664(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 210;
      o3478 = o4519.o8116.o4550(_loc6_.o18823) * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o3843 = o3478;
      o11171 = _loc8_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc6_.o16109;
      o1877 = _loc6_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc8_.o1690);
      o5617 = _loc8_.o5617;
      o16390 = [null,_loc6_.o11598,_loc6_.o16351,_loc6_.o884,_loc6_.o1098,0,0];
      o64 = _loc8_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc6_.o362);
      o4831 = [o4519.o8116.o5830.o9009(_loc6_.o853),o4519.o8116.o5830.o9009(_loc6_.o12311),o4519.o8116.o5830.o9009(_loc6_.o18675)];
      o502 = o4519.o8116.o5830.o9009(_loc6_.o15458);
      o15469 = o4519.o8116.o5830.o9009(_loc6_.o14586);
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
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o12527.play(0.75,0,0,false,_loc1_.o10088(),0,9);
   }
}
