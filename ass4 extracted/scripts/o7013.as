package
{
   import flash.display.MovieClip;
   
   public class o7013 extends o18703
   {
       
      
      public var o19419:o14200;
      
      private var o10366:int;
      
      private var o17125:int;
      
      public function o7013(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o11048() : void
      {
         o19101(o19419.o202.o17465.length + o19419.o202.o703.length,o19419.o202.o19062);
         o19419.o202.o11275 = true;
      }
      
      private function o7643() : int
      {
         return o19419.o202.o17465.length + o19419.o202.o703.length;
      }
      
      private function o11415(param1:int) : o14096
      {
         var _loc2_:* = undefined;
         if(param1 == 0)
         {
            return o19419.o202.o17465[0];
         }
         _loc2_ = o18660();
         return _loc2_[param1 - 1];
      }
      
      private function o8299(param1:int) : o1253
      {
         if(param1 == 0)
         {
            return o19419.o202.o703[0];
         }
         return o6291()[param1 - 1];
      }
      
      private function o13496(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o4189.o19843:
               return "CBCBCB";
            case o4189.o17868:
               return "93F89B";
            case o4189.o20918:
               return "C1ECFF";
            case o4189.o6765:
               return "6CACFE";
            case o4189.o16296:
               return "56458E";
            case o4189.o11328:
               return "9278C6";
            case o4189.o15243:
               return "CA7400";
            case o4189.o1897:
               return "AC9228";
            case o4189.o12328:
               return "AC9228";
            default:
               throw new Error("Invalid strongbox type");
         }
      }
      
      private function o8612(param1:int) : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = "";
         _loc2_ = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = _loc3_ + "*";
            _loc2_++;
         }
         return _loc3_;
      }
      
      private function o9565(param1:Boolean) : String
      {
         return !!param1?" [RED]":"";
      }
      
      private function o4225(param1:int, param2:int) : void
      {
         var _loc7_:int = 0;
         var _loc10_:* = null;
         var _loc13_:* = null;
         var _loc5_:* = null;
         var _loc9_:o14096 = o11415(param1);
         var _loc15_:Boolean = _loc9_.o315();
         if(_loc9_.o2752.o20133 > o19419.o202.o1091 && param1 == 0)
         {
            o19419.o202.o1091 = _loc9_.o2752.o20133;
            _loc7_ = o19419.o202.o19062[0];
            _loc10_ = o13496(_loc7_);
            _loc13_ = o8612(_loc9_.o4680);
            if(_loc15_)
            {
               _loc5_ = "[BEGINFONT color=\'#" + _loc10_ + "\'CLOSEFONT]" + _loc9_.grade.toString() + _loc13_ + " " + _loc9_.o16614() + o9565(_loc9_.o2752.o11570 > 1) + "[ENDFONT]";
            }
            else
            {
               _loc5_ = "[BEGINFONT color=\'#" + _loc10_ + "\'CLOSEFONT]" + _loc9_.grade.toString() + _loc13_ + " " + _loc9_.o7501 + o9565(_loc9_.o2752.o11570 > 1) + "[ENDFONT]";
            }
            o19419.o202.o18270 = _loc5_;
         }
         var _loc8_:MovieClip = o2217.o19568[param2 % 4].asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc8_)
         {
            _loc8_.gotoAndStop(o7251.o20313(_loc9_));
            _loc8_.visible = true;
         }
         if(o3776)
         {
            o3776.gotoAndStop(o7251.o20313(_loc9_));
            o3776.visible = true;
         }
         var _loc11_:int = 0;
         var _loc17_:int = 0;
         var _loc16_:* = _loc9_.o17656;
         for each(var _loc4_ in _loc9_.o17656)
         {
            o1087(_loc11_,_loc4_.grade,_loc9_.grade,_loc4_.o4589.name,_loc4_.o4589.o12087);
            _loc11_++;
         }
         while(_loc11_ < _loc9_.o4680)
         {
            this.o11988(_loc11_,_loc9_.grade);
            _loc11_++;
         }
         while(_loc11_ < o14413.o17745)
         {
            this.o7355(_loc11_);
            _loc11_++;
         }
         var _loc12_:int = 0;
         var _loc6_:o20006 = _loc9_.o19133(null);
         var _loc3_:int = o19419.o7923.o19353(_loc9_);
         o3311(param1 == 0,_loc9_.grade,_loc9_.o17656.length,_loc9_.o4680,_loc9_.o7501,_loc9_.o5290,_loc6_,_loc3_,_loc9_.o9139,_loc12_,_loc9_.o2752.o11570,_loc9_.o2752.o20133,_loc9_.o263);
         _loc6_.o6088 = this.o3023;
         var _loc14_:o4117 = o4117.o18521(o19419,o19419.o7923);
         o9193.o5127(_loc9_,_loc14_);
         o9193.o13257(this,_loc9_,_loc14_);
      }
      
      private function o9662(param1:int, param2:int) : void
      {
         var _loc8_:int = 0;
         var _loc11_:* = null;
         var _loc14_:* = null;
         var _loc5_:* = null;
         var _loc16_:* = null;
         var _loc10_:o1253 = o8299(param1);
         if(_loc10_.o10239.o20133 > o19419.o202.o1091 && param1 == 0)
         {
            o19419.o202.o508 = _loc10_.o10239.o20133;
            _loc8_ = o19419.o202.o19062[0];
            _loc11_ = o13496(_loc8_);
            _loc14_ = o8612(_loc10_.o4680);
            _loc5_ = "[BEGINFONT color=\'#" + _loc11_ + "\'CLOSEFONT]" + _loc10_.grade.toString() + _loc14_ + " " + _loc10_.o9912 + o9565(_loc10_.o10239.o18072 > 1) + "[ENDFONT]";
            o19419.o202.o4694 = _loc5_;
         }
         var _loc9_:MovieClip = o2217.o19568[param2 % 4].asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc9_)
         {
            _loc16_ = o7251.o19044(_loc10_);
            _loc9_.gotoAndStop("None");
            var _loc18_:int = 0;
            var _loc17_:* = _loc9_.o440;
            for each(var _loc13_ in _loc9_.o440)
            {
               if(_loc13_["name"] != null && _loc13_["name"] == _loc16_)
               {
                  _loc9_.gotoAndStop(_loc16_);
               }
            }
         }
         if(o3776)
         {
            _loc16_ = o7251.o19044(_loc10_);
            o3776.gotoAndStop("None");
            var _loc20_:int = 0;
            var _loc19_:* = o3776.o440;
            for each(_loc13_ in o3776.o440)
            {
               if(_loc13_["name"] != null && _loc13_["name"] == _loc16_)
               {
                  o3776.gotoAndStop(_loc16_);
               }
            }
         }
         var _loc12_:int = 0;
         var _loc22_:int = 0;
         var _loc21_:* = _loc10_.o17656;
         for each(var _loc7_ in _loc10_.o17656)
         {
            o1087(_loc12_,_loc7_.grade,_loc10_.grade,_loc7_.o4589.name,_loc7_.o4589.o12087);
            _loc12_++;
         }
         while(_loc12_ < _loc10_.o4680)
         {
            this.o11988(_loc12_,_loc10_.grade);
            _loc12_++;
         }
         while(_loc12_ < o14413.o17745)
         {
            this.o7355(_loc12_);
            _loc12_++;
         }
         var _loc6_:o20006 = _loc10_.o19133(null);
         var _loc4_:int = _loc10_.o4680;
         var _loc3_:int = o19419.o7923.o5523(_loc10_);
         o14286(param1 == 0,_loc10_.grade,_loc10_.o17656.length,_loc4_,_loc10_.o9912,_loc10_.o1502,_loc10_.o20804,_loc6_,_loc3_,_loc10_.o10239.o18072,_loc10_.o10239.o20133,_loc10_.o263);
         _loc6_.o6088 = this.o3023;
         var _loc15_:o4117 = o4117.o18521(o19419,o19419.o7923);
         o9193.o19641(_loc10_,_loc15_);
         o9193.o19246(this,_loc10_,_loc15_);
      }
      
      override protected function o3357(param1:int, param2:int) : void
      {
         if(o17874() == false)
         {
            return;
         }
         if(param1 == -1)
         {
            o8339("onDrawDetails itemIndex:" + param1.toString() + ", contentType: " + o19419.o202.o16835[0].toString());
            return;
         }
         var _loc3_:int = o19419.o202.o16835[0];
         switch(int(_loc3_))
         {
            case 0:
               o4225(param1,param2);
               break;
            case 1:
               o9662(param1,param2);
         }
      }
      
      protected function o18660() : Vector.<o14096>
      {
         var _loc3_:* = null;
         var _loc5_:* = undefined;
         var _loc2_:* = undefined;
         var _loc1_:* = undefined;
         if(this.o4326 == 1 || this.o4326 == 0)
         {
            _loc3_ = o11415(0);
            _loc5_ = new Vector.<o14096>();
            if(_loc3_.o19940)
            {
               if(o19419.o7923.o7993[0] != null)
               {
                  _loc5_.push(o19419.o7923.o7993[0]);
               }
            }
            else
            {
               if(o19419.o7923.o7993[1] != null)
               {
                  _loc5_.push(o19419.o7923.o7993[1]);
               }
               if(o19419.o7923.o7993[2] != null)
               {
                  _loc5_.push(o19419.o7923.o7993[2]);
               }
            }
            return _loc5_;
         }
         _loc2_ = o19419.o7923.o18660(0);
         _loc1_ = o19419.o7923.o18660(1);
         var _loc7_:int = 0;
         var _loc6_:* = _loc1_;
         for each(var _loc4_ in _loc1_)
         {
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      private function o5022(param1:Vector.<o1253>, param2:Vector.<o1253>) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            param1.push(_loc3_);
         }
      }
      
      protected function o6291() : Vector.<o1253>
      {
         var _loc1_:* = null;
         var _loc3_:* = undefined;
         var _loc2_:* = null;
         var _loc4_:* = undefined;
         if(this.o4326 == 1 || this.o4326 == 0)
         {
            _loc1_ = o8299(0);
            _loc3_ = new Vector.<o1253>();
            _loc2_ = o19419.o7923.o420[_loc1_.o8395];
            if(_loc2_ != null)
            {
               _loc3_.push(_loc2_);
            }
            return _loc3_;
         }
         _loc4_ = o19419.o7923.o18268(0);
         o5022(_loc4_,o19419.o7923.o18268(1));
         o5022(_loc4_,o19419.o7923.o18268(3));
         o5022(_loc4_,o19419.o7923.o18268(2));
         o5022(_loc4_,o19419.o7923.o18268(4));
         return _loc4_;
      }
      
      private function o17874() : Boolean
      {
         return o19419.o202.o16835.length > 0;
      }
      
      override protected function o14793() : int
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc7_:* = null;
         var _loc1_:* = null;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         if(o17874() == false)
         {
            return 0;
         }
         var _loc5_:int = o19419.o202.o16835[0];
         if(_loc5_ == 0)
         {
            _loc3_ = o11415(0);
            _loc4_ = 1 + o19419.o7923.o20557();
            if(_loc4_ < o14413.o20705)
            {
               if(_loc3_.o19940)
               {
                  if(o19419.o7923.o7993[0] == null)
                  {
                     this.o4326 = 0;
                  }
                  else
                  {
                     this.o4326 = 1;
                  }
               }
               else if(o19419.o7923.o7993[1] == null && o19419.o7923.o7993[2] == null)
               {
                  this.o4326 = 0;
               }
               else
               {
                  this.o4326 = 1;
               }
            }
            else
            {
               this.o4326 = 2;
            }
            return 1 + o18660().length;
         }
         if(_loc5_ == 1)
         {
            _loc1_ = o8299(0);
            _loc6_ = 1 + o19419.o7923.o16938();
            if(_loc6_ < o14413.o8383)
            {
               _loc2_ = o19419.o7923.o420[_loc1_.o8395];
               if(_loc2_ == null)
               {
                  this.o4326 = 0;
               }
               else
               {
                  this.o4326 = 1;
               }
            }
            else
            {
               this.o4326 = 2;
            }
            return 1 + o6291().length;
         }
         return 0;
      }
      
      private function o14630(param1:Boolean, param2:o14096, param3:o15653) : void
      {
         param3.o13586 = param2.o7501;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o2397 = param1;
         param3.o14075 = param2.o4680;
         var _loc5_:o20006 = param2.o8815(null);
         _loc5_.o6088 = param3;
         param3.o3700 = _loc5_;
         param3.o263 = param2.o263;
         param3.o1258();
         var _loc4_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc4_)
         {
            _loc4_.gotoAndStop(o7251.o20313(param2));
         }
      }
      
      private function o13091(param1:Boolean, param2:o1253, param3:o15653) : void
      {
         param3.o2397 = param1;
         param3.o13586 = param2.o9912;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o14075 = param2.o4680;
         var _loc5_:o20006 = param2.o8815(null);
         _loc5_.o6088 = param3;
         param3.o3700 = _loc5_;
         param3.o263 = param2.o263;
         param3.o1258();
         var _loc4_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc4_)
         {
            _loc4_.gotoAndStop(o7251.o19044(param2));
         }
      }
      
      override protected function o393() : int
      {
         if(o17874() == false)
         {
            return 0;
         }
         if(o19419.o202.o16835[0] == 0)
         {
            return o14413.o20705 - o19419.o7923.o18936();
         }
         return o14413.o8383 - o19419.o7923.o2392();
      }
      
      override protected function o10203() : String
      {
         if(o17874() == false)
         {
            o16294.o8087(1796);
         }
         if(o19419.o202.o16835[0] == 0)
         {
            return "Compare new weapon with currently equipped";
         }
         return "Compare new armor with currently equipped";
      }
      
      override protected function o19269(param1:int, param2:o15625) : void
      {
         var _loc3_:int = 0;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         var _loc9_:* = null;
         var _loc11_:* = undefined;
         var _loc10_:* = 0;
         var _loc6_:* = null;
         var _loc4_:o15653 = param2 as o15653;
         if(o19419.o202.o16835.length == 0)
         {
            return;
         }
         if(o19419.o202.o16835[0] == 0)
         {
            _loc3_ = 1;
            if(param1 < _loc3_)
            {
               _loc8_ = o19419.o202.o17465[param1];
               o14630(true,_loc8_,_loc4_);
            }
            else
            {
               _loc7_ = o18660()[param1 - _loc3_];
               o14630(false,_loc7_,_loc4_);
            }
         }
         else
         {
            _loc5_ = 1;
            if(param1 < _loc5_)
            {
               _loc9_ = o19419.o202.o703[param1];
               o13091(true,_loc9_,_loc4_);
            }
            else
            {
               _loc11_ = o6291();
               _loc10_ = int(param1 - _loc5_);
               if(_loc11_.length == 0)
               {
                  _loc11_ = o6291();
                  _loc10_ = _loc10_;
               }
               _loc6_ = _loc11_[_loc10_];
               o13091(false,_loc6_,_loc4_);
            }
         }
      }
      
      protected function o12396(param1:o14096) : void
      {
         var _loc3_:String = o19419.o10206("dialogMessage.sellWeapon.title");
         var _loc4_:String = o19419.o10206("dialogMessage.sellWeapon.message");
         var _loc2_:int = o19419.o7923.o19353(param1);
         _loc4_ = _loc4_.replace("[SALE_PRICE]",_loc2_);
         this.o16989.o13483(_loc3_,_loc4_,o5827);
      }
      
      protected function o19760(param1:o14096) : void
      {
         o16989.o12407("Selling premium weapon","You are not able to sell premium items.");
      }
      
      protected function o5827() : void
      {
         var _loc1_:o14096 = o11415(o10366);
         o19419.o7923.o18824(_loc1_);
         if(o10366 == 0)
         {
            o15211(_loc1_,true);
            o17267();
            o19419.o202.o14782();
            o19419.saveData();
            this.o11059();
         }
         else
         {
            this.o3891();
         }
      }
      
      protected function o11092(param1:o1253) : void
      {
         var _loc3_:String = o19419.o10206("dialogMessage.sellEquipment.title");
         var _loc4_:String = o19419.o10206("dialogMessage.sellEquipment.message");
         var _loc2_:int = o19419.o7923.o5523(param1);
         _loc4_ = _loc4_.replace("[SALE_PRICE]",_loc2_);
         this.o16989.o13483(_loc3_,_loc4_,o1003);
      }
      
      protected function o18770(param1:o1253) : void
      {
         o16989.o12407("Selling premium weapon","You are not able to sell premium items.");
      }
      
      protected function o1003() : void
      {
         var _loc1_:o1253 = o8299(o17125);
         o19419.o7923.o11001(_loc1_);
         if(o17125 == 0)
         {
            o17258(_loc1_,true);
            o17267();
            o19419.o202.o14782();
            o19419.saveData();
            this.o11059();
         }
         else
         {
            this.o3891();
         }
      }
      
      private function o15211(param1:o14096, param2:Boolean) : void
      {
         o19419.o15894.o4848.o2719.o17301(param1,param2,o19419.o202.o19062[0],o19419);
      }
      
      private function o17258(param1:o1253, param2:Boolean) : void
      {
         o19419.o15894.o4848.o2719.o14778(param1,param2,o19419.o202.o19062[0],o19419);
      }
      
      override protected function o9928(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o19419.o202.o16835[0] == 0)
         {
            o10366 = param1;
            _loc3_ = o11415(param1);
            if(_loc3_.o2752.o19901)
            {
               o19760(_loc3_);
            }
            else
            {
               o12396(_loc3_);
            }
         }
         else
         {
            o17125 = param1;
            _loc2_ = o8299(param1);
            if(_loc2_.o19901)
            {
               o18770(_loc2_);
            }
            else
            {
               o11092(_loc2_);
            }
         }
      }
      
      private function o17267() : void
      {
         if(o19419.o7923.o8312.length > 0)
         {
            o19419.o7923.o10248();
            return;
         }
         throw new Error("claimmedStrongbox called without any strongboxes ");
      }
      
      override protected function o3891() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = null;
         o17267();
         if(o19419.o202.o16835[0] == 0)
         {
            _loc2_ = o19419.o202.o17465[0];
            o15211(_loc2_,false);
            o19419.o202.o14782();
            o19419.o7923.o20444(_loc2_);
            o19419.saveData();
            this.o11059();
         }
         else
         {
            _loc1_ = o19419.o202.o703[0];
            o17258(_loc1_,false);
            o19419.o202.o14782();
            o19419.o7923.o2205(_loc1_);
            o19419.saveData();
            this.o11059();
         }
      }
      
      override protected function o11639(param1:o15625) : void
      {
         if(param1 == o9539 || param1 == o5631 || param1 == o8638 || param1 == o15196 || param1 == o20029 || param1 == o1934)
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
         else
         {
            o4519.o8116.o4812.ui.o14759.play();
         }
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o19419.o202.o11275 = false;
         o19419.o7923.o11661 = false;
         this.o19419.o11453.o10118++;
         o19419.o12094.o5036(o19419);
         this.o19419.saveData();
         o19419 = null;
         o10366 = 0;
         o17125 = 0;
         super.o13640();
      }
      
      override protected function o301() : void
      {
         o4519.o8116.o4812.ui.o20960.play();
      }
   }
}
