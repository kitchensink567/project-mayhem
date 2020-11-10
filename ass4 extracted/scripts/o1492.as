package
{
   public class o1492
   {
       
      
      private var o8419:o16123;
      
      private var o9051:o16123;
      
      private var o2490:o16123;
      
      public var name:String;
      
      private var o11480:o10411;
      
      public var o7792:String;
      
      public var o8398:String;
      
      public var o17265:String;
      
      private var o14853:o15787;
      
      private var o8140:o15787;
      
      private var o17733:o15787;
      
      private var o254:o10411;
      
      private var o14415:o15787;
      
      private var o10240:o15787;
      
      public var o4076:o10411;
      
      public var o20290:o15787;
      
      public var o16409:o15787;
      
      public var o14045:o16123;
      
      public var o1922:o15787;
      
      public var o9216:o15787;
      
      public var o7369:o15787;
      
      public var o9825:o15787;
      
      public var o20049:o15787;
      
      public var o13611:o15787;
      
      public var o20583:o15787;
      
      public var o5472:o15787;
      
      public var o10232:o15787;
      
      public function o1492()
      {
         o8419 = new o16123(0);
         o9051 = new o16123(0);
         o2490 = new o16123(0);
         o11480 = new o10411(false);
         o14853 = new o15787(0);
         o8140 = new o15787(0);
         o17733 = new o15787(0);
         o254 = new o10411(false);
         o14415 = new o15787(-1);
         o10240 = new o15787(0);
         o4076 = new o10411(false);
         o20290 = new o15787(0);
         o16409 = new o15787(0);
         o14045 = new o16123(0);
         o1922 = new o15787(0);
         o9216 = new o15787(0);
         o7369 = new o15787(0);
         o9825 = new o15787(0);
         o20049 = new o15787(0);
         o13611 = new o15787(0);
         o20583 = new o15787(0);
         o5472 = new o15787(0);
         o10232 = new o15787(0);
         super();
      }
      
      public function get o4978() : int
      {
         return o8419.value;
      }
      
      public function get o10374() : int
      {
         return o9051.value;
      }
      
      public function get o10387() : int
      {
         return o2490.value;
      }
      
      public function get o1267() : Boolean
      {
         return o11480.value;
      }
      
      public function get o11846() : Number
      {
         return o14853.value;
      }
      
      public function get o7249() : Number
      {
         return o8140.value;
      }
      
      public function get o2074() : Number
      {
         return o17733.value;
      }
      
      public function get o18372() : Boolean
      {
         return o254.value;
      }
      
      public function get o7640() : Number
      {
         return o14415.value;
      }
      
      public function get o18500() : Number
      {
         return o10240.value;
      }
      
      public function set o4978(param1:int) : void
      {
         o8419.value = param1;
      }
      
      public function set o10374(param1:int) : void
      {
         o9051.value = param1;
      }
      
      public function set o10387(param1:int) : void
      {
         o2490.value = param1;
      }
      
      public function set o1267(param1:Boolean) : void
      {
         o11480.value = param1;
      }
      
      public function set o11846(param1:Number) : void
      {
         o14853.value = param1;
      }
      
      public function set o7249(param1:Number) : void
      {
         o8140.value = param1;
      }
      
      public function set o2074(param1:Number) : void
      {
         o17733.value = param1;
      }
      
      public function set o18372(param1:Boolean) : void
      {
         o254.value = param1;
      }
      
      public function set o7640(param1:Number) : void
      {
         o14415.value = param1;
      }
      
      public function set o18500(param1:Number) : void
      {
         o10240.value = param1;
      }
      
      public function o13426(param1:int) : Boolean
      {
         var _loc2_:Number = NaN;
         if(o14415.value == -1)
         {
            return true;
         }
         _loc2_ = o11827(param1 + 1);
         return _loc2_ <= o14415.value;
      }
      
      public function o11801(param1:Number) : String
      {
         return formatNumber(param1 * 100) + "%";
      }
      
      public function o11342(param1:Number) : String
      {
         return Math.round(param1 * 100) + "%";
      }
      
      private function formatNumber(param1:Number) : String
      {
         return o16724.o20301(param1);
      }
      
      private function o6331(param1:int) : int
      {
         var _loc2_:Number = o14853.value;
         _loc2_ = _loc2_ - param1 * o8140.value;
         if(_loc2_ < o17733.value)
         {
            _loc2_ = o17733.value;
         }
         return _loc2_;
      }
      
      public function o11827(param1:int) : Number
      {
         var _loc6_:Number = NaN;
         var _loc2_:* = 0;
         var _loc4_:Number = NaN;
         var _loc3_:int = 0;
         if(param1 == 0)
         {
            return 0;
         }
         param1--;
         var _loc5_:Number = o20290.value;
         if(_loc5_ == 0)
         {
            _loc5_ = o16409.value;
         }
         var _loc7_:* = _loc5_;
         if(o254.value)
         {
            _loc6_ = 1 - _loc5_;
            _loc2_ = param1;
            _loc4_ = 1 - o16409.value;
            return 1 - _loc6_ * Math.pow(_loc4_,_loc2_);
         }
         if(o14045.value == 0)
         {
            return _loc5_ + param1 * o16409.value;
         }
         _loc3_ = (param1 + 1) / o14045.value;
         return _loc5_ + _loc3_ * o16409.value;
      }
      
      public function o2253(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc2_:Number = o1922.value;
         if(_loc2_ == 0)
         {
            _loc2_ = o9216.value;
         }
         return _loc2_ + (param1 - 1) * this.o9216.value;
      }
      
      public function o17845(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc2_:Number = o7369.value;
         if(_loc2_ == 0)
         {
            _loc2_ = o9825.value;
         }
         return _loc2_ + (param1 - 1) * this.o9825.value;
      }
      
      public function o15057(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc2_:Number = o13611.value;
         if(_loc2_ == 0)
         {
            _loc2_ = o20583.value;
         }
         return _loc2_ + (param1 - 1) * this.o20583.value;
      }
      
      public function o1719(param1:int) : Number
      {
         if(param1 == 0)
         {
            return 0;
         }
         var _loc2_:Number = o5472.value;
         if(_loc2_ == 0)
         {
            _loc2_ = o10232.value;
         }
         return _loc2_ + (param1 - 1) * this.o10232.value;
      }
      
      public function o4499(param1:int) : int
      {
         return o6331(param1);
      }
      
      public function o1220(param1:int) : String
      {
         if(param1 == 0)
         {
            return "";
         }
         var _loc6_:String = this.o17265;
         var _loc2_:Number = o11827(param1);
         var _loc3_:Number = o2253(param1);
         var _loc7_:Number = o17845(param1);
         var _loc4_:Number = o15057(param1);
         var _loc8_:Number = o1719(param1);
         var _loc5_:Number = o4499(param1);
         _loc6_ = _loc6_.replace("[amountTotal]",formatNumber(_loc2_));
         _loc6_ = _loc6_.replace("[amountTotalPercent]",o11801(_loc2_));
         _loc6_ = _loc6_.replace("[damageTotal]",formatNumber(_loc8_));
         _loc6_ = _loc6_.replace("[damageTotalPercent]",o11801(_loc8_));
         _loc6_ = _loc6_.replace("[chanceTotalPercent]",o11801(_loc4_));
         _loc6_ = _loc6_.replace("[radiusTotal]",formatNumber(_loc3_));
         _loc6_ = _loc6_.replace("[radiusTotalPercent]",o11801(_loc3_));
         _loc6_ = _loc6_.replace("[durationTotal]",formatNumber(_loc7_));
         _loc6_ = _loc6_.replace("[durationTotalPercent]",o11801(_loc7_));
         _loc6_ = _loc6_.replace("[costTotal]",int(_loc5_).toString());
         return _loc6_;
      }
      
      public function o5395(param1:int) : Vector.<o20074>
      {
         var _loc2_:Number = NaN;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc5_:* = null;
         var _loc10_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc8_:* = null;
         var _loc12_:Vector.<o20074> = new Vector.<o20074>();
         var _loc13_:* = this.o9051.value;
         switch(_loc13_)
         {
            case 1:
               _loc12_.push(new o20074(1,o11827(param1),1));
               break;
            case 2:
               _loc2_ = 1 + o11827(param1);
               _loc12_.push(new o20074(2,1 + o11827(param1),1));
               break;
            case 3:
               _loc12_.push(new o20074(3,o11827(param1),2));
               break;
            case 4:
               _loc12_.push(new o20074(4,o11827(param1),1));
               break;
            case 5:
               _loc12_.push(new o20074(5,o11827(param1),2));
               _loc12_.push(new o20074(0,o17845(param1),1));
               break;
            case 6:
               _loc12_.push(new o20074(6,1 + o11827(param1),1));
               break;
            case 7:
               _loc12_.push(new o20074(7,1 + o11827(param1),1));
               break;
            case 8:
               _loc12_.push(new o20074(8,o11827(param1),2));
               break;
            case 9:
               _loc12_.push(new o20074(9,o11827(param1),2));
               _loc12_.push(new o20074(0,o17845(param1),0));
               break;
            case 10:
               break;
            case 11:
               _loc12_.push(new o20074(11,1 + o11827(param1),1));
               break;
            case 12:
               _loc12_.push(new o20074(13,o15057(param1),0));
               _loc12_.push(new o20074(14,1 + o11827(param1),1));
               break;
            case 13:
               _loc12_.push(new o20074(5,o11827(param1),2));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 14:
               _loc12_.push(new o20074(0,o17845(param1),0));
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(41,o11827(param1),2));
               _loc12_.push(new o20074(43,o11827(param1),2));
               break;
            case 15:
               _loc12_.push(new o20074(16,o11827(param1),1));
               _loc12_.push(new o20074(44,param1 * o2469(this).o12894,0));
               break;
            case 16:
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(18,o11827(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 17:
               _loc12_.push(new o20074(19,o11827(param1),2));
               break;
            case 18:
               _loc6_ = this as o1207;
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(20,o11827(param1),1));
               _loc12_.push(new o20074(21,_loc6_.o9509(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 19:
               _loc12_.push(new o20074(22,o11827(param1),2));
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 20:
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(12,1 + o11827(param1),1));
               _loc12_.push(new o20074(32,1 + o11827(param1),1));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 21:
               _loc7_ = o11827(param1);
               _loc12_.push(new o20074(23,_loc7_,1));
               break;
            case 22:
               _loc12_.push(new o20074(24,1 + o11827(param1),1));
               break;
            case 23:
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(24,1 + o11827(param1),1));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 24:
               _loc12_.push(new o20074(25,1 + o11827(param1),1));
               _loc12_.push(new o20074(12,o1719(param1),0));
               break;
            case 25:
               _loc12_.push(new o20074(13,o11827(param1),0));
               _loc12_.push(new o20074(17,o17845(param1),0));
               break;
            case 26:
               _loc12_.push(new o20074(26,o11827(param1),0));
               _loc12_.push(new o20074(22,o1719(param1),2));
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 27:
               _loc11_ = o11827(param1);
               _loc9_ = 1 + _loc11_;
               _loc12_.push(new o20074(2,_loc9_,1));
               _loc12_.push(new o20074(39,_loc9_,1));
               _loc12_.push(new o20074(40,_loc11_,1));
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 28:
               _loc12_.push(new o20074(12,1 + o11827(param1),1));
               break;
            case 29:
               _loc5_ = this as o2492;
               _loc12_.push(new o20074(15,o2253(param1),0));
               _loc12_.push(new o20074(27,_loc5_.o11868(param1),0));
               _loc12_.push(new o20074(22,o1719(param1),2));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 30:
               _loc10_ = this as o9875;
               _loc12_.push(new o20074(28,1 - o11827(param1),1));
               _loc12_.push(new o20074(45,_loc10_.o2185(param1),0));
               break;
            case 31:
               _loc4_ = this as o8755;
               _loc12_.push(new o20074(29,_loc4_.o8203,1));
               _loc12_.push(new o20074(20,o11827(param1),1));
               _loc12_.push(new o20074(17,o17845(param1),0));
               _loc12_.push(new o20074(38,o6331(param1),0));
               break;
            case 32:
               _loc3_ = this as o3695;
               _loc12_.push(new o20074(30,_loc3_.o16926,0));
               _loc12_.push(new o20074(31,_loc3_.o20874,0));
               _loc12_.push(new o20074(32,1 + o1719(param1),1));
               _loc12_.push(new o20074(12,1 + o1719(param1),1));
               _loc12_.push(new o20074(33,1 - o17845(param1),0));
               _loc12_.push(new o20074(17,o17845(param1),0));
               break;
            case 33:
               _loc8_ = this as o19648;
               _loc12_.push(new o20074(34,_loc8_.o11827(param1),0));
               _loc12_.push(new o20074(17,_loc8_.o17845(param1),0));
               _loc12_.push(new o20074(35,1 + _loc8_.o1719(param1),1));
               _loc12_.push(new o20074(36,1 + _loc8_.o19186(param1),0));
               _loc12_.push(new o20074(37,1.02 * param1,0));
               _loc12_.push(new o20074(38,o6331(param1),0));
         }
         return _loc12_;
      }
   }
}
