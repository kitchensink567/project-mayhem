package
{
   import flash.display.Sprite;
   
   public class o3092 extends Sprite
   {
       
      
      public function o3092()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o729;
      }
   }
}

class o729 extends o18442
{
   
   private static var o8350:int = 3;
    
   
   private var o2590:Boolean = false;
   
   function o729()
   {
      super();
   }
   
   public static function getGradeCacheAssets(param1:int, param2:int) : Vector.<String>
   {
      var _loc5_:* = 0;
      var _loc4_:* = null;
      var _loc3_:Vector.<String> = new Vector.<String>();
      var _loc6_:o1587 = o4519.o8116.o4235.o4248(4);
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
      type = 4;
      var _loc8_:o1587 = o4519.o8116.o4235.o4248(4);
      var _loc6_:o14238 = _loc8_.o4036[grade];
      this.o16125 = _loc8_.o17834;
      o17664(grade);
      o20133 = _loc6_.o1603;
      o17074 = _loc8_.o19672;
      o30 = o17074;
      o11243 = _loc6_.o11243;
      o1589 = o11243;
      o4699 = 52.5;
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
      _loc7_.o16990 = o11381.o7748;
      if(grade == 0)
      {
         o8350 = 3;
      }
      else if(grade == 1)
      {
         o8350 = 4;
      }
      else if(grade == 2)
      {
         o8350 = 5;
      }
      else
      {
         o8350 = 6;
      }
   }
   
   override protected function o1342(param1:Boolean, param2:o4016) : void
   {
      if(param2.o16334 != this)
      {
         o19344();
      }
      super.o1342(param1,param2);
   }
   
   private function o19344() : void
   {
      var _loc7_:* = null;
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc2_:* = null;
      var _loc4_:* = null;
      var _loc6_:* = null;
      if(this.body == null)
      {
         return;
      }
      if(!o2590)
      {
         o2590 = true;
         _loc7_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.Worm"] as Class;
         _loc3_ = 1;
         while(_loc3_ <= o8350)
         {
            _loc5_ = o15460.o4078;
            _loc5_.x = 15 + o4519.o8116.random.o10418(o5973 - _loc3_) * 25;
            _loc5_.y = 0;
            _loc5_.rotate(3.14159265358979 * 2 * o4519.o8116.random.o10418(o5973 + _loc3_));
            _loc2_ = new o18509(this.body.o2697.x + _loc5_.x,this.body.o2697.y + _loc5_.y);
            _loc4_ = o4519.o8116.o2996.o2998(_loc7_,[grade,_loc2_,0],o5973 + _loc3_) as o18442;
            if(o6037)
            {
               var _loc9_:int = 0;
               var _loc8_:* = o6037;
               for each(var _loc1_ in o6037)
               {
                  if(_loc1_ is o14128)
                  {
                     _loc6_ = _loc1_ as o14128;
                     _loc4_ = _loc6_.o6249(_loc4_,o3047.o14789,o3047.o12413,o3047.o4547);
                  }
               }
            }
            _loc4_.o6691.rotation = (o5973 + _loc3_) % 36 / 36 * 2 * 3.14159265358979;
            _loc4_.o5454(0.1);
            _loc4_.o17012(o19831);
            o3047.o2154.dispatchData(new o6961(_loc4_));
            _loc4_.o13696 = this.o13696.slice();
            if(_loc4_.o13696.length == 0)
            {
               _loc4_.o13696.push(o17517);
            }
            _loc3_++;
         }
      }
   }
   
   override protected function o15119() : void
   {
      o1051.o9310(this,0.1,o13574);
   }
   
   private function o13574() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o6597.play(1,0,0,false,_loc1_.o10088(),0,9);
   }
   
   override protected function o1607() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o9822.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   override protected function o16855() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o14142.o4109.play(0.5,0,0,false,_loc1_.o10088());
   }
}
