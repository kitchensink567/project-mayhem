package
{
   import flash.display.MovieClip;
   
   public class o16381 extends o5492
   {
       
      
      private var o8027:o14200;
      
      public function o16381(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      override protected function o17382() : o12158
      {
         return new o15064(o8027,o3673,this.o16989 as o14043,this);
      }
      
      private function o3673() : void
      {
         this.o4436();
      }
      
      private function o6103(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:o9823 = o11352.o4364(param1) as o9823;
         var _loc2_:o1253 = o8027.o7923.o420[param1];
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.o11074(_loc4_);
            o10148(param1,_loc3_);
            o13524(param1,_loc2_.o263);
            _loc3_.o6088 = _loc4_;
         }
         else
         {
            o10148(param1,new MovieClip());
            o13524(param1,0);
         }
      }
      
      private function o2832() : void
      {
         o6103(0);
         o6103(1);
         o6103(3);
         o6103(2);
         o6103(4);
      }
      
      override public function o1258() : void
      {
         super.o1258();
         this.o2832();
      }
      
      override public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         super.o16384(param1,param2,param3);
         o2832();
         o8027.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
         var _loc4_:Boolean = false;
         var _loc7_:int = 0;
         var _loc6_:* = o8027.o7923.o4256;
         for each(var _loc5_ in o8027.o7923.o4256)
         {
            if(_loc5_.o17656.length > 3)
            {
               _loc4_ = true;
               _loc5_.o17656.splice(0,3);
            }
            if(_loc5_.o4680 > 3)
            {
               _loc4_ = true;
               _loc5_.o4680 = 3;
            }
         }
         if(_loc4_)
         {
            param3.o12407("Augment error","Too many equipment augments (max is " + 3.toString() + " per item). Augments automatically removed");
         }
      }
      
      override public function o13640() : void
      {
         o8027.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o8027 = null;
         super.o13640();
      }
      
      private function o98(param1:o19869) : void
      {
         this.o2832();
         this.o1258();
      }
      
      override protected function o10708(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:o1253 = o8027.o7923.o420[param1];
         if(_loc3_ == null)
         {
            o19439(param1,null,0);
         }
         else
         {
            _loc2_ = new o11855();
            o19439(param1,_loc2_,_loc3_.o263);
            _loc3_.o3897(_loc2_,o8195);
         }
      }
      
      override protected function o14793(param1:int) : void
      {
         o15591 = -2;
         o12063 = param1;
      }
      
      override protected function o14379(param1:Boolean, param2:int) : void
      {
         var _loc15_:Vector.<o1253> = o8027.o7923.o18268(o15591);
         var _loc22_:o1253 = null;
         var _loc11_:Vector.<o1253> = o8027.o7923.o420;
         if(param2 >= 0)
         {
            _loc22_ = !!param1?o8027.o7923.o420[param2]:_loc15_[param2];
         }
         o7599(_loc22_ != null);
         if(_loc22_ == null)
         {
            this.o10565.o20670(0);
            return;
         }
         o12063 = _loc22_.o10239.o20559;
         var _loc5_:o11855 = new o11855();
         this.o18213(param1,_loc22_.o9912,_loc22_.grade,_loc22_.o6814,_loc22_.o14647,_loc22_.o5520,_loc5_,_loc22_.o10239.o11412,_loc22_.o4680,_loc22_.o10239.o18072,_loc22_.o263);
         _loc22_.o3897(_loc5_,o8195);
         var _loc23_:o4117 = o4117.o18521(o8027,o8027.o7923);
         o9193.o19641(_loc22_,_loc23_);
         this.o10565.o20670(_loc22_.o4680);
         this.o9210(_loc22_.o1502,_loc22_.o20804);
         o2832();
         o9193.o19246(this,_loc22_,_loc23_);
         var _loc9_:o6747 = new o6747();
         var _loc19_:o9213 = _loc9_.o20552(_loc22_.o10239.o20559,_loc23_,13,_loc22_);
         var _loc3_:o9213 = _loc9_.o20552(_loc22_.o10239.o20559,_loc23_,14,_loc22_);
         var _loc7_:o9213 = _loc9_.o20552(_loc22_.o10239.o20559,_loc23_,15,_loc22_);
         var _loc10_:o9213 = _loc9_.o20552(_loc22_.o10239.o20559,_loc23_,22,_loc22_);
         var _loc18_:o9213 = _loc9_.o20552(_loc22_.o10239.o20559,_loc23_,10,_loc22_);
         var _loc24_:Number = _loc10_.o8872 + _loc10_.o5502;
         var _loc6_:Number = _loc18_.o1938();
         var _loc14_:Number = _loc10_.o5250();
         var _loc4_:Number = _loc18_.o5250();
         var _loc17_:* = 0;
         var _loc13_:* = 0;
         var _loc12_:* = 0;
         var _loc21_:* = 0;
         var _loc8_:Boolean = false;
         var _loc26_:int = 0;
         var _loc25_:* = o8027.o7923.o420;
         for each(var _loc16_ in o8027.o7923.o420)
         {
            if(_loc16_ != null)
            {
               _loc19_ = _loc9_.o20552(_loc16_.o10239.o20559,_loc23_,13,_loc16_);
               _loc3_ = _loc9_.o20552(_loc16_.o10239.o20559,_loc23_,14,_loc16_);
               _loc7_ = _loc9_.o20552(_loc16_.o10239.o20559,_loc23_,15,_loc16_);
               _loc10_ = _loc9_.o20552(_loc16_.o10239.o20559,_loc23_,22,_loc16_);
               _loc18_ = _loc9_.o20552(_loc16_.o10239.o20559,_loc23_,10,_loc16_);
               _loc17_ = Number(_loc17_ + _loc19_.o9166());
               _loc13_ = Number(_loc13_ + _loc3_.o9166());
               _loc12_ = Number(_loc12_ + _loc7_.o9166());
               if(_loc8_ == false)
               {
                  _loc13_ = Number(_loc13_ + _loc23_.o2169);
                  _loc12_ = Number(_loc12_ + _loc23_.o4906);
                  _loc8_ = true;
               }
               _loc24_ = _loc10_.o8872 + _loc10_.o5502;
               _loc6_ = _loc18_.o1938();
               _loc14_ = _loc10_.o5250();
               _loc4_ = _loc18_.o5250();
               _loc21_ = Number(_loc21_ + (_loc24_ + _loc14_));
               _loc21_ = Number(_loc21_ - (_loc6_ + _loc4_));
            }
         }
         var _loc20_:String = o16724.o20031(_loc21_ * 100) + "%";
         o18299(o5031(_loc17_),o1259(_loc17_),o5031(_loc13_),o1259(_loc13_),o5031(_loc12_),o1259(_loc12_),_loc20_);
         if(_loc22_.o2397)
         {
            _loc22_.o2397 = false;
            this.o8027.saveData();
            o1878.o1258();
         }
      }
      
      private function o1259(param1:Number) : String
      {
         param1 = Math.round(param1);
         var _loc2_:String = Math.round(o17517.o20042(param1) * 100).toString();
         return _loc2_.toString() + "% Damage Reduction";
      }
      
      public function o5031(param1:Number) : String
      {
         return o16724.o20031(param1);
      }
      
      override protected function get o2297() : int
      {
         return o8027.o7923.o18268(o15591).length;
      }
      
      protected function o1192(param1:Boolean, param2:int) : o1253
      {
         return !!param1?o8027.o7923.o420[param2]:o8027.o7923.o18268(o15591)[param2];
      }
      
      override protected function o14921(param1:int) : void
      {
         var _loc4_:Vector.<o1253> = o8027.o7923.o18268(o15591);
         if(param1 >= _loc4_.length)
         {
            return;
         }
         var _loc5_:o1253 = _loc4_[param1];
         var _loc3_:o20006 = _loc5_.o8815(null);
         var _loc2_:o736 = this.o7176(param1,_loc5_.o15372,_loc3_,_loc5_.o9912,_loc5_.grade,_loc5_.o5520,3,_loc5_.o4680,_loc5_.o2397,_loc5_.o263);
         _loc3_.o6088 = _loc2_;
      }
      
      override protected function o19493(param1:int) : MovieClip
      {
         var _loc2_:Vector.<o1253> = o8027.o7923.o420;
         if(param1 >= _loc2_.length)
         {
            return null;
         }
         var _loc3_:o1253 = _loc2_[param1];
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:o11855 = new o11855();
         _loc3_.o3897(_loc4_,o3489);
         return _loc4_;
      }
      
      override protected function o10072(param1:int) : MovieClip
      {
         var _loc4_:Vector.<o1253> = o8027.o7923.o18268(o15591);
         if(param1 >= _loc4_.length)
         {
            return null;
         }
         var _loc2_:o1253 = _loc4_[param1];
         var _loc3_:o11855 = new o11855();
         _loc2_.o3897(_loc3_,o3489);
         return _loc3_;
      }
      
      override protected function o7247(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:o1253 = o8027.o7923.o18268(this.o15591)[param2];
         if(_loc6_.o10239.o18072 == 3)
         {
            o8027.o15894.o4848.o811();
         }
         param1 = _loc6_.o10239.o20559;
         var _loc5_:o1253 = o8027.o7923.o420[param1];
         o8027.o7923.o420[param1] = _loc6_;
         if(_loc5_ != null)
         {
            _loc3_ = o8027.o7923.o7986(_loc5_);
            _loc4_ = o8027.o7923.o7986(_loc6_);
            o8027.o7923.o4256.splice(_loc3_,1);
            o8027.o7923.o4256.splice(_loc4_,0,_loc5_);
            this.o1258();
         }
         o8027.saveData();
         o19854.o2120 = -1;
         this.o1258();
         o4519.o8116.o4812.ui.o7729.play(1);
      }
      
      override protected function o14970(param1:int) : int
      {
         var _loc2_:o1253 = o8027.o7923.o420[param1];
         o8027.o7923.o420[param1] = null;
         o8027.o7923.o10973(_loc2_);
         var _loc3_:int = o8027.o7923.o2947(_loc2_);
         this.o2832();
         o8027.saveData();
         this.o14177 = false;
         o19854.o2120 = -1;
         this.o1258();
         o4519.o8116.o4812.ui.o17910.play();
         return -1;
      }
      
      private function o12769() : void
      {
         o12257(o11352.o2120);
      }
      
      private function o3459() : void
      {
      }
      
      override protected function o5942() : void
      {
         var _loc3_:* = null;
         var _loc2_:Vector.<o1253> = o8027.o7923.o18268(o15591);
         if(o11352.o2120 < _loc2_.length)
         {
            _loc3_ = o8027.o7923.o18268(o15591)[o11352.o2120];
         }
         var _loc1_:o1253 = null;
         if(o14177 && o19854.o2120 != -1)
         {
            _loc1_ = o8027.o7923.o420[o19854.o2120];
         }
         if(o14177 && _loc3_ && _loc3_.o19901 || o14177 == false && _loc1_ && _loc1_.o19901)
         {
            o16989.o17139("Selling premium armor","You are not able to sell premium items.",o3459);
         }
         else if(o14177)
         {
            o16989.o17139("Selling equipped armor","Are you sure you want to sell your equipped armor?",o12769);
         }
         else
         {
            this.o5400(o19854.o2120);
         }
      }
      
      override protected function o5400(param1:int) : void
      {
         var _loc2_:o1253 = o8027.o7923.o18268(o15591)[param1];
         o8027.o7923.o11001(_loc2_);
         o10739();
         this.o2832();
         o4519.o8116.o4812.ui.o17861.play();
         o8027.o12094.o19856(o8027);
      }
      
      override protected function o12257(param1:int) : void
      {
         var _loc2_:o1253 = o8027.o7923.o420[param1];
         o8027.o7923.o11001(_loc2_);
         o10739();
         o2832();
         o4519.o8116.o4812.ui.o17861.play();
         o8027.o12094.o19856(o8027);
      }
      
      override protected function o11729(param1:int, param2:int) : void
      {
         var _loc4_:o1253 = o8027.o7923.o18268(o15591)[param1];
         var _loc3_:o1253 = o8027.o7923.o18268(o15591)[param2];
         param1 = o8027.o7923.o7986(_loc4_);
         param2 = o8027.o7923.o7986(_loc3_);
         o8027.o7923.o4256[param1] = _loc3_;
         o8027.o7923.o4256[param2] = _loc4_;
         this.o1258();
         o4519.o8116.o4812.ui.o7729.play(1);
      }
      
      override protected function o2465(param1:Boolean, param2:int) : int
      {
         var _loc3_:o1253 = o1192(param1,param2);
         return o8027.o7923.o5523(_loc3_);
      }
      
      override protected function o13219() : void
      {
         var _loc1_:String = o8027.o10206("dialogMessage.sellEquipment.title");
         var _loc2_:String = o8027.o10206("dialogMessage.sellEquipment.message");
         _loc2_ = _loc2_.replace("[SALE_PRICE]",this.o2135());
         this.o16989.o13483(_loc1_,_loc2_,o5942);
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == o9539 || param1 == o17375 || param1 == o8021 || param1 == o5084 || param1 == o7091 || param1 == o9301 || param1 == o1934 || param1 == o20029)
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o8060.play();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o15860(param1:int) : void
      {
         var _loc2_:o736 = o19854.o3410(param1) as o736;
         var _loc3_:int = o14413.o8383 - o8027.o7923.o420.length;
         _loc2_.o2138 = param1 >= _loc3_;
         _loc2_.o1258();
      }
      
      override protected function o19971(param1:int, param2:int) : Boolean
      {
         var _loc3_:Vector.<o1253> = o8027.o7923.o18268(o15591);
         var _loc4_:o1253 = _loc3_[param2];
         var _loc7_:o1253 = o8027.o7923.o420[param1];
         var _loc6_:int = _loc4_.o8395;
         var _loc5_:int = _loc7_.o8395;
         return _loc6_ == _loc7_.o8395;
      }
   }
}
