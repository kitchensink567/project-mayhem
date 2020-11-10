package
{
   import flash.display.Sprite;
   
   public class o16609 extends Sprite
   {
       
      
      public function o16609()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12858;
      }
   }
}

class o12858 extends o18442
{
    
   
   function o12858()
   {
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc5_:o1587 = o4519.o8116.o4235.o4248(9);
      var _loc4_:o14238 = _loc5_.o4036[0];
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15540));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15807));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o362));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o16077));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o15458));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o853));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o12311));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o18675));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc4_.o14586));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc5_.o12492));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc5_.o10021));
      _loc3_.push(o4519.o8116.o5830.o9009(_loc5_.o6568));
      return _loc3_;
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      o20384 = new o7600(param1);
      grade = param2;
      type = 9;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(9);
      var _loc7_:o14238 = _loc9_.o4036[grade];
      var _loc6_:o14238 = _loc9_.o4036[0];
      this.o16125 = _loc9_.o17834;
      o17664(grade);
      o20133 = _loc7_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc7_.o11243;
      o1589 = o11243;
      o4699 = 275;
      o3478 = o4519.o8116.o4550(_loc7_.o18823) * (1 - 0.1 + o20384.random() * 2 * 0.1);
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc7_.o16109;
      o1877 = _loc7_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16390 = [null,_loc7_.o11598,_loc7_.o16351,_loc7_.o884,_loc7_.o1098,0,0];
      o64 = _loc9_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc6_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc6_.o362);
      o885 = o4519.o8116.o5830.o9009(_loc6_.o853);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc7_.o1918;
      o4052 = _loc9_.o4052;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc8_,param3,param4,8,false);
      _loc5_.o7191 = _loc9_.o7191;
      _loc8_.o16990 = o11381.o4446;
   }
   
   override protected function o1607() : void
   {
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o10568.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o15119() : void
   {
   }
}
