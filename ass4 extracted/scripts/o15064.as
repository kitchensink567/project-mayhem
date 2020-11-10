package
{
   public class o15064 extends o8282
   {
       
      
      private var o8027:o14200;
      
      public var o3673:Function;
      
      private var o16989:o14043;
      
      private var o20528:o16381;
      
      public function o15064(param1:o14200, param2:Function, param3:o14043, param4:o16381)
      {
         super();
         o13425 = 3;
         this.o16989 = param3;
         o16870 = 2;
         o8027 = param1;
         this.o20528 = param4;
         this.o3673 = param2;
      }
      
      private function o16719(param1:Number) : Number
      {
         var _loc5_:* = undefined;
         var _loc4_:o1492 = o4519.o8116.o6055.o11241(30);
         var _loc3_:int = this.o8027.o7923.o6122(30);
         if(_loc3_ > 0)
         {
            _loc5_ = _loc4_.o5395(_loc3_);
            param1 = _loc5_[0].apply(param1);
            var _loc7_:int = 0;
            var _loc6_:* = _loc5_;
            for each(var _loc2_ in _loc5_)
            {
               _loc2_.o19115();
            }
            _loc5_ = null;
         }
         return param1;
      }
      
      override protected function o15561(param1:Boolean, param2:int, param3:int) : int
      {
         var _loc5_:* = null;
         var _loc7_:o1253 = o8027.o7923.o16325(param1,param2,param3);
         if(_loc7_ == null)
         {
            return 0;
         }
         if(_loc7_.o17656.length > 3)
         {
            o16989.o12407("Invalid aug count","Reducing augments");
            o16870 = 3;
         }
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:* = _loc7_.o17656;
         for each(var _loc6_ in _loc7_.o17656)
         {
            _loc5_ = _loc6_.o4589;
            o6875(_loc4_,_loc5_.name,_loc6_.grade,_loc7_.grade,_loc6_.o4589.o12087);
            _loc4_++;
         }
         o5831(_loc7_.grade);
         return _loc7_.o17656.length;
      }
      
      override protected function o16909(param1:Boolean, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc8_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc9_:o1253 = o8027.o7923.o16325(param1,param2,param3);
         var _loc14_:int = 0;
         var _loc13_:* = o8027.o5292.o5052;
         for each(var _loc7_ in o8027.o5292.o5052)
         {
            _loc10_ = false;
            var _loc12_:int = 0;
            var _loc11_:* = _loc9_.o17656;
            for each(var _loc4_ in _loc9_.o17656)
            {
               if(_loc7_.o18172 == _loc4_.o4589.o18172)
               {
                  _loc10_ = true;
                  break;
               }
            }
            if(_loc10_ == false && _loc7_.o78(_loc9_) == false)
            {
               _loc10_ = true;
            }
            _loc8_ = _loc7_.o10620(_loc9_);
            _loc8_ = o16719(_loc8_);
            _loc5_ = _loc7_.o7962;
            _loc6_ = _loc7_.o3279 + ". Current : " + _loc7_.o3577(_loc9_,true) + ". Augment bonus: " + _loc7_.o9891(_loc9_);
            o6498(_loc7_.o18172,_loc7_.name,_loc5_,_loc8_,_loc10_,_loc7_.o12087,_loc6_);
         }
      }
      
      override protected function o8085(param1:int, param2:Boolean, param3:int, param4:int, param5:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc10_:o1253 = o8027.o7923.o16325(param2,param3,param4);
         var _loc9_:o3743 = _loc10_.o17656[param1];
         var _loc7_:o14018 = _loc9_.o4589;
         var _loc6_:int = _loc7_.o15720(_loc10_,_loc9_.grade);
         _loc6_ = o16719(_loc6_);
         var _loc8_:String = _loc7_.o3577(_loc10_,true);
         var _loc11_:String = _loc7_.o9891(_loc10_);
         this.o7252(param1,_loc7_.name,_loc7_.o7962,_loc9_.grade,_loc10_.grade,_loc8_,_loc11_,_loc6_,_loc9_.o4589.o12087);
      }
      
      override protected function o6967(param1:int, param2:int, param3:Boolean, param4:int, param5:int, param6:Boolean = false) : Boolean
      {
         var _loc9_:* = null;
         var _loc10_:Boolean = false;
         var _loc11_:int = 0;
         var _loc12_:o1253 = o8027.o7923.o16325(param3,param4,param5);
         var _loc7_:o14018 = o8027.o5292.o5052[param1];
         var _loc8_:int = _loc7_.o10620(_loc12_);
         _loc8_ = o16719(_loc8_);
         var _loc13_:Boolean = o8027.o7923.o7683(_loc8_);
         if(_loc13_)
         {
            _loc9_ = new o3743().init(_loc7_,1);
            _loc12_.o17656.push(_loc9_);
            _loc12_.o10518 = _loc12_.o10518 + _loc8_;
            o8027.o11453.o130++;
            _loc10_ = o8027.o7923.o14370();
            _loc11_ = _loc8_ * o8027.o5292.o418.o3146;
            if(_loc10_ == false)
            {
               o8027.o7923.o15202 = o8027.o7923.o15202 + _loc11_;
            }
            o8027.saveData();
            o8027.o12094.o15191(o8027,_loc9_.grade);
            o4519.o8116.o4812.ui.o7729.play(1);
            o8027.o15894.o4848.o2719.o10191(false,_loc12_.o15372,_loc9_.o4589.o18172,_loc9_.o4589.name,_loc12_.o10239.o18072 > 1,_loc12_.grade);
            o3673();
         }
         else
         {
            o16989.o14462(_loc8_,_loc7_.name);
            o4519.o8116.o4812.ui.o4930.play();
         }
         o20528.o1258();
         return _loc13_;
      }
      
      override protected function o17185(param1:int, param2:Boolean, param3:int, param4:int, param5:Boolean = false) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc11_:o1253 = o8027.o7923.o16325(param2,param3,param4);
         var _loc10_:o3743 = _loc11_.o17656[param1];
         var _loc9_:o14018 = _loc10_.o4589;
         var _loc8_:int = _loc9_.o15720(_loc11_,_loc10_.grade);
         _loc8_ = o16719(_loc8_);
         var _loc12_:Boolean = o8027.o7923.o7683(_loc8_);
         if(_loc12_)
         {
            _loc10_.grade = Number(_loc10_.grade) + 1;
            _loc11_.o10518 = _loc11_.o10518 + _loc8_;
            o8027.o11453.o130++;
            _loc6_ = o8027.o7923.o14370();
            _loc7_ = _loc8_ * o8027.o5292.o418.o3146;
            if(_loc6_ == false)
            {
               o8027.o7923.o15202 = o8027.o7923.o15202 + _loc7_;
            }
            o8027.saveData();
            o8027.o12094.o15191(o8027,_loc10_.grade);
            o4519.o8116.o4812.ui.o7729.play(1);
            o8027.o15894.o4848.o2719.o741(false,_loc11_.o15372,_loc10_.o4589.o18172,_loc10_.o4589.name,_loc10_.grade,_loc11_.o10239.o18072 > 1,_loc11_.grade);
            o3673();
            if(_loc6_ == false)
            {
               if(o10149)
               {
                  o10149.o16669(_loc7_);
               }
               else
               {
                  o19684.o16669(_loc7_);
               }
            }
            o4519.o8116.o4812.ui.o6915.play();
         }
         else
         {
            o16989.o14462(_loc8_,_loc9_.name + " upgrade");
            o4519.o8116.o4812.ui.o4930.play();
         }
         return _loc12_;
      }
      
      override protected function o7813(param1:int, param2:Boolean, param3:int, param4:int) : Boolean
      {
         var _loc7_:o1253 = o8027.o7923.o16325(param2,param3,param4);
         var _loc6_:o3743 = _loc7_.o17656[param1];
         var _loc5_:* = _loc6_ != null;
         if(_loc5_)
         {
            _loc7_.o17656[param1] = new o3743();
            o8027.saveData();
            o8027.o15894.o4848.o2719.o741(false,_loc7_.o15372,_loc6_.o4589.o18172,_loc6_.o4589.name,_loc6_.grade,_loc7_.o10239.o18072 > 1,_loc7_.grade);
            o3673();
         }
         return _loc5_;
      }
      
      override protected function o13459() : void
      {
         o8837.close();
         super.o13459();
      }
      
      override protected function o5996() : void
      {
         o4519.o8116.o4812.ui.o14759.play();
         super.o5996();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o8027 = null;
         o16989 = null;
         o3673 = null;
         o20528 = null;
         super.o13640();
      }
   }
}
