package
{
   import flash.display.Sprite;
   
   public class o11259 extends Sprite
   {
       
      
      public function o11259()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o7381;
      }
   }
}

class o7381 extends o18442
{
   
   public static var o6748:int = 0;
    
   
   private var o13412:Array;
   
   private const o12031:int = 15;
   
   function o7381()
   {
      o13412 = [1,1,1.1,1.1,1.2,1.2,1.3,1.3,1.4,1.4];
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(6);
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
      grade = param2;
      type = 6;
      o18691 = true;
      o20384 = new o7600(param1);
      o19265 = 2;
      var _loc9_:o1587 = o4519.o8116.o4235.o4248(6);
      var _loc7_:o14238 = _loc9_.o4036[param2];
      var _loc5_:o14238 = _loc9_.o4036[param2];
      this.o16125 = _loc9_.o17834;
      o18043(grade);
      o20133 = _loc7_.o1603;
      o17074 = _loc9_.o19672;
      o30 = o17074;
      o11243 = _loc7_.o11243 * o13412[grade];
      o1589 = o11243;
      o4699 = 120;
      o3478 = o4519.o8116.o4550(_loc7_.o18823) * (1 - 0.05 + o20384.random() * 2 * 0.05) * o13412[grade];
      o3843 = o3478;
      o11171 = _loc9_.o11171 / 180 * 3.14159265358979;
      o16109 = _loc7_.o16109 * o13412[grade];
      o1877 = _loc7_.o13119 * (1 - 0.05 + o20384.random() * 2 * 0.05);
      o1690 = o4519.o8116.o4550(_loc9_.o1690);
      o5617 = _loc9_.o5617;
      o16390 = [null,_loc7_.o11598,_loc7_.o16351,_loc7_.o884,_loc7_.o1098,0,0];
      o64 = _loc9_.o10981 / 10;
      o6274 = o4519.o8116.o5830.o9009(_loc5_.o15807);
      o15091 = o4519.o8116.o5830.o9009(_loc5_.o362);
      o4831 = [o4519.o8116.o5830.o9009(_loc5_.o853),o4519.o8116.o5830.o9009(_loc5_.o12311),o4519.o8116.o5830.o9009(_loc5_.o18675)];
      o502 = o4519.o8116.o5830.o9009(_loc5_.o15458);
      o11196 = o4519.o8116.o5830.o9009(_loc9_.o12492);
      o11166 = o4519.o8116.o5830.o9009(_loc9_.o10021);
      o9296 = o4519.o8116.o5830.o9009(_loc9_.o6568);
      o8193 = _loc9_.o8193;
      o9747 = _loc9_.o5949;
      o1918 = _loc7_.o1918;
      o4052 = _loc9_.o4052;
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o1918 = 0.01;
      }
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      if(grade >= 1)
      {
         o17127 = true;
      }
      super.o19011(param1,_loc6_,_loc8_,param3,param4);
      _loc6_.o7191 = _loc9_.o7191;
   }
   
   override protected function o20017(param1:o4016) : void
   {
      if(o17127)
      {
         o6748 = Number(o6748) + 1;
         if(o6748 >= 15)
         {
            o12347 = true;
         }
      }
      super.o20017(param1);
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o14563.play(1,0,0,false,_loc1_.o10088());
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o3780.play(1,0,0,false,_loc1_.o10088());
   }
}
