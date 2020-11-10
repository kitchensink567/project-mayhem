package
{
   public class o7455 extends o8282
   {
       
      
      private var o8027:o14200;
      
      public var o3673:Function;
      
      private var o16989:o14043;
      
      private var o5495:o14596;
      
      public function o7455(param1:o14200, param2:Function, param3:o14043, param4:o14596)
      {
         super();
         o13425 = 4;
         this.o16989 = param3;
         o8027 = param1;
         this.o3673 = param2;
         this.o5495 = param4;
      }
      
      override protected function o15561(param1:Boolean, param2:int, param3:int) : int
      {
         var _loc4_:o14096 = o8027.o7923.o17303(param1,param2,param3);
         if(_loc4_ == null)
         {
            return 0;
         }
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_.o17656;
         for each(var _loc6_ in _loc4_.o17656)
         {
            o6875(_loc5_,_loc6_.o4589.name,_loc6_.grade,_loc4_.grade,_loc6_.o4589.o12087);
            _loc5_++;
         }
         o5831(_loc4_.grade);
         return _loc4_.o17656.length;
      }
      
      override protected function o16909(param1:Boolean, param2:int, param3:int) : void
      {
         var _loc10_:* = false;
         var _loc9_:int = 0;
         var _loc5_:* = null;
         var _loc7_:* = null;
         o4519.o8116.o4812.ui.o876.play();
         var _loc6_:o14096 = o8027.o7923.o17303(param1,param2,param3);
         var _loc14_:int = 0;
         var _loc13_:* = o8027.o5292.o15148;
         for each(var _loc8_ in o8027.o5292.o15148)
         {
            _loc10_ = false;
            var _loc12_:int = 0;
            var _loc11_:* = _loc6_.o17656;
            for each(var _loc4_ in _loc6_.o17656)
            {
               if(_loc8_.o18172 == _loc4_.o4589.o18172)
               {
                  _loc10_ = true;
                  break;
               }
            }
            if(_loc10_ == false)
            {
               _loc10_ = _loc8_.o3771(_loc6_.o2752) == false;
            }
            _loc9_ = _loc8_.o9837(_loc6_);
            _loc9_ = o16719(_loc9_);
            _loc5_ = _loc8_.o7962;
            _loc7_ = _loc8_.o3279 + ". Current : " + _loc8_.o12976(_loc6_) + ". Augment bonus: " + _loc8_.o9741(_loc6_);
            o6498(_loc8_.o18172,_loc8_.name,_loc5_,_loc9_,_loc10_,_loc8_.o12087,_loc7_);
         }
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
      
      private function o17717(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc4_:o9875 = o4519.o8116.o6055.o11241(30) as o9875;
         var _loc3_:int = this.o8027.o7923.o6122(30);
         if(_loc3_ > 0)
         {
            _loc2_ = 1 + _loc4_.o2185(_loc3_);
            param1 = param1 * _loc2_;
         }
         return param1;
      }
      
      override protected function o8085(param1:int, param2:Boolean, param3:int, param4:int, param5:Boolean = false) : void
      {
         if(param1 < 0)
         {
            return;
         }
         o4519.o8116.o4812.ui.o876.play();
         var _loc6_:o14096 = o8027.o7923.o17303(param2,param3,param4);
         var _loc10_:o3743 = _loc6_.o17656[param1];
         var _loc8_:o14018 = _loc10_.o4589;
         var _loc7_:int = _loc8_.o12739(_loc6_,_loc10_.grade);
         _loc7_ = o16719(_loc7_);
         var _loc9_:String = _loc8_.o13238(_loc6_,null,true);
         var _loc11_:String = _loc8_.o9741(_loc6_);
         o7252(param1,_loc8_.name,_loc8_.o7962,_loc10_.grade,_loc6_.grade,_loc9_,_loc11_,param5 == true?0:_loc7_,_loc10_.o4589.o12087);
      }
      
      override protected function o6967(param1:int, param2:int, param3:Boolean, param4:int, param5:int, param6:Boolean = false) : Boolean
      {
         var _loc9_:* = null;
         var _loc10_:Boolean = false;
         var _loc12_:int = 0;
         var _loc11_:o14096 = o8027.o7923.o17303(param3,param4,param5);
         var _loc7_:o14018 = o8027.o5292.o15148[param1];
         var _loc8_:int = _loc7_.o9837(_loc11_);
         _loc8_ = o16719(_loc8_);
         if(param6)
         {
            _loc8_ = 0;
         }
         var _loc13_:Boolean = o8027.o7923.o7683(_loc8_);
         if(_loc13_)
         {
            _loc9_ = new o3743().init(_loc7_,1);
            _loc11_.o17656.push(_loc9_);
            _loc11_.o1060 = _loc11_.o1060 + _loc8_;
            o8027.o11453.o8679++;
            _loc10_ = o8027.o7923.o14370();
            _loc12_ = _loc8_ * o8027.o5292.o418.o3146;
            _loc12_ = o17717(_loc12_);
            if(_loc10_ == false)
            {
               o8027.o7923.o15202 = o8027.o7923.o15202 + _loc12_;
            }
            o8027.saveData();
            o8027.o12094.o15191(o8027,_loc9_.grade);
            o8027.o15894.o4848.o2719.o10191(true,_loc11_.o10748,_loc9_.o4589.o18172,_loc9_.o4589.name,_loc11_.o2752.o11570 > 1,_loc11_.grade);
            o3673();
            o4519.o8116.o4812.ui.o6915.play();
         }
         else
         {
            o16989.o14462(_loc8_,_loc7_.name);
            o4519.o8116.o4812.ui.o4930.play();
         }
         o5495.o1258();
         return _loc13_;
      }
      
      override protected function o17185(param1:int, param2:Boolean, param3:int, param4:int, param5:Boolean = false) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc8_:int = 0;
         var _loc7_:o14096 = o8027.o7923.o17303(param2,param3,param4);
         var _loc11_:o3743 = _loc7_.o17656[param1];
         var _loc10_:o14018 = _loc11_.o4589;
         var _loc9_:int = _loc10_.o12739(_loc7_,_loc11_.grade);
         _loc9_ = o16719(_loc9_);
         if(param5)
         {
            _loc9_ = 0;
         }
         var _loc12_:Boolean = o8027.o7923.o7683(_loc9_);
         if(_loc12_)
         {
            _loc11_.grade = Number(_loc11_.grade) + 1;
            _loc7_.o1060 = _loc7_.o1060 + _loc9_;
            o8027.o11453.o8679++;
            _loc6_ = o8027.o7923.o14370();
            _loc8_ = _loc9_ * o8027.o5292.o418.o3146;
            _loc8_ = o17717(_loc8_);
            if(_loc6_ == false)
            {
               o8027.o7923.o15202 = o8027.o7923.o15202 + _loc8_;
            }
            o8027.saveData();
            o8027.o12094.o15191(o8027,_loc11_.grade);
            o8027.o15894.o4848.o2719.o741(true,_loc7_.o10748,_loc11_.o4589.o18172,_loc11_.o4589.name,_loc11_.grade,_loc7_.o2752.o11570 > 1,_loc7_.grade);
            o3673();
            if(_loc6_ == false)
            {
               if(o10149)
               {
                  o10149.o16669(_loc8_);
               }
               else
               {
                  o19684.o16669(_loc8_);
               }
            }
         }
         else
         {
            o16989.o14462(_loc9_,_loc10_.name + " upgrade");
            o4519.o8116.o4812.ui.o4930.play();
         }
         return _loc12_;
      }
      
      override protected function o7813(param1:int, param2:Boolean, param3:int, param4:int) : Boolean
      {
         var _loc5_:o14096 = o8027.o7923.o17303(param2,param3,param4);
         var _loc8_:o3743 = _loc5_.o17656[param1];
         var _loc6_:o14018 = _loc8_.o4589;
         var _loc7_:* = _loc8_ != null;
         if(_loc7_)
         {
            _loc5_.o17656.splice(param1,1);
            o8027.saveData();
            o3673();
         }
         return _loc7_;
      }
      
      override protected function o5996() : void
      {
         o4519.o8116.o4812.ui.o14759.play();
         super.o5996();
      }
      
      override protected function o13459() : void
      {
         o8837.close();
         o4519.o8116.o4812.ui.o14759.play();
         super.o13459();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o3549(param1:Boolean = false) : o13066
      {
         var _loc2_:o14096 = o8027.o7923.o17303(o1550,o4230,o7042);
         if(_loc2_.o2752.o19901)
         {
            return super.o3549(true);
         }
         return super.o3549();
      }
      
      override protected function o17701(param1:o11507, param2:Boolean = false) : void
      {
         var _loc3_:int = param1.o6457;
         if(_loc3_ < 0)
         {
            return;
         }
         var _loc4_:o14096 = o8027.o7923.o17303(o1550,o4230,o7042);
         if(_loc4_.o2752.o19901)
         {
            super.o17701(param1,true);
            return;
         }
         super.o17701(param1);
      }
      
      override public function o13640() : void
      {
         o8027 = null;
         o3673 = null;
         o16989 = null;
         o5495 = null;
         super.o13640();
      }
   }
}
