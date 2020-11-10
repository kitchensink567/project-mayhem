package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class o7788 extends o16216
   {
       
      
      private var data:o14200;
      
      private var o19855:Vector.<o69>;
      
      private var o2122:Vector.<int>;
      
      private var o13051:int;
      
      private var match:o4356;
      
      private var o3093:o10346;
      
      private var o1300:int = 0;
      
      private var o14538:Number = 0;
      
      private var o1926:Number = -1;
      
      private var o15457:Boolean = true;
      
      private var o14847:Number = 30;
      
      private var o18055:int = -1;
      
      private var o20453:int = 0;
      
      private var o14816:int = 0;
      
      private var o8884:Boolean = false;
      
      private var o15278:int;
      
      private var o6370:Boolean = false;
      
      private var o12754:int = 0;
      
      private var o14780:Boolean = false;
      
      private var o4144:Timer;
      
      private var o10181:int = -1;
      
      private var o15385:int = 0;
      
      public function o7788(param1:o14200)
      {
         var _loc5_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = undefined;
         super();
         this.data = param1;
         o15278 = param1.o202.o15278;
         if(o15278 >= 0)
         {
            param1.o202.o15492 = param1.o202.o2432;
            o19829();
         }
         param1.o202.o15278 = -1;
         param1.o202.o2432 = null;
         param1.o202.o17943 = new Vector.<o193>();
         param1.saveData();
         param1.o202.o20274 = true;
         var _loc4_:int = param1.o202.o18339;
         o19855 = param1.o5292.o9177.o12683();
         o10181 = o19855.length;
         if(param1.o202.o10220 != null)
         {
            o2539(param1.o202.o10220.o12387);
         }
         else if(param1.o202.o18339 == 5 || param1.o202.o18339 == 4 || param1.o202.o18339 == 7)
         {
            o10181 = 1;
            _loc5_ = -1;
            _loc2_ = o14200.o19505.o5292.o16679.o3672(param1.o202.o18339);
            if(_loc2_.o11392 is o14128)
            {
               _loc3_ = _loc2_.o11392 as o14128;
               _loc6_ = _loc3_.o9581();
               if(_loc6_ && _loc6_.length == 1)
               {
                  _loc5_ = _loc6_[0];
               }
            }
            if(_loc5_ != -1)
            {
               o2539(_loc5_);
               param1.o202.o15222 = _loc5_;
            }
         }
         o2122 = param1.o5292.o9177.o20812(o19855);
         o13051 = 0;
         param1.o202.o10211 = true;
         o4519.o8116.o20488.o10608.level = param1.o7923.level;
         o4519.o8116.o20488.o16280(null,o7220.o9885,o1665);
      }
      
      public function get o2685() : o2144
      {
         return o4519.o13206.o2685;
      }
      
      private function o2539(param1:int) : void
      {
         var _loc3_:Vector.<o69> = new Vector.<o69>();
         var _loc5_:int = 0;
         var _loc4_:* = o19855;
         for each(var _loc2_ in o19855)
         {
            if(_loc2_.o18800 == param1)
            {
               _loc3_.push(_loc2_);
            }
         }
         o19855 = _loc3_;
      }
      
      override protected function get o18081() : Boolean
      {
         if(data && data.o202)
         {
            return data.o202.o15492 != null;
         }
         return false;
      }
      
      private function o15980() : void
      {
         o1926 = 180;
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         super.o16384(param1,param2,param3);
         param2.o15116(false);
         o14792(1);
         o19999.gotoAndStop(1);
         if(data.o202.o10220 != null)
         {
            o14792(2);
            o19999.gotoAndStop(2);
         }
         if(data.o202.o18339 == 2)
         {
            o14792(3);
            o19999.gotoAndStop(3);
         }
         o17148(o89);
         if(o15278 >= 0)
         {
            param2.o15377(3);
            param2.o18890(5);
         }
      }
      
      override protected function get o4626() : Boolean
      {
         return this.data.o202.o10220 != null;
      }
      
      override protected function get o89() : Boolean
      {
         return false;
      }
      
      private function o1182() : void
      {
         o19689.o4893();
      }
      
      override protected function o3433(param1:MouseEvent) : void
      {
         if(o2685 != null)
         {
            o15969 = true;
            o7806(o15385);
            o2685.o18352();
            o994.visible = false;
            o13061.visible = false;
            o20706.visible = false;
         }
      }
      
      override protected function o17509(param1:o11507) : void
      {
         var _loc3_:int = param1.o6457;
         var _loc2_:o69 = o19855[_loc3_];
         var _loc4_:int = _loc2_.o18800;
         o2685.o8113(_loc4_,data.o202.o18339);
      }
      
      override protected function o19488() : o4896
      {
         return new o7471(this);
      }
      
      private function o15589(param1:KeyboardEvent) : void
      {
         if(o12514 || o4519.o13206 == null || o4519.o13206.o2685 == null)
         {
            return;
         }
         var _loc2_:Boolean = false;
         _loc2_ = o18795.o8478 && param1.keyCode == 27;
         o18795.o8525(param1,data.o7923.o12110,true);
      }
      
      public function o9885(param1:int, param2:String) : void
      {
         var _loc4_:* = null;
         if(o4519.o13206 == null)
         {
            throw new Error("Sas4.scenario is null;");
         }
         var _loc6_:int = 0;
         var _loc5_:Array = o4896.o6854;
         var _loc7_:Vector.<o8443> = o17364();
         if(_loc7_ == null)
         {
            throw new Error("clients array is null;");
         }
         var _loc9_:int = 0;
         var _loc8_:* = _loc7_;
         for each(var _loc3_ in _loc7_)
         {
            if(_loc6_ >= 4)
            {
               throw new Error("More than 4 characters?");
            }
            if(_loc3_ == null)
            {
               throw new Error("Null Client?");
            }
            if(_loc3_.id == param1)
            {
               if(_loc3_.name == null)
               {
                  throw new Error("Null username?");
               }
               _loc4_ = new o193();
               _loc4_.o1216 = param2;
               _loc4_.o10615 = _loc3_.name;
               _loc4_.color = _loc5_[_loc6_];
               data.o202.o17943.push(_loc4_);
               o18795.o20132(param2,_loc3_.name,_loc5_[_loc6_]);
            }
            _loc6_++;
         }
      }
      
      private function o9922() : void
      {
         o14780 = true;
         o16989.screen = 31;
      }
      
      private function o8776() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 4)
         {
            o6419(_loc1_);
            _loc1_++;
         }
      }
      
      private function o13159(param1:o8443, param2:o8443) : int
      {
         if(param1.id < param2.id)
         {
            return -1;
         }
         if(param1.id > param2.id)
         {
            return 1;
         }
         throw new Error("Error: compareClient: same id");
      }
      
      private function o17364() : Vector.<o8443>
      {
         var _loc2_:Vector.<o8443> = new Vector.<o8443>();
         var _loc4_:int = 0;
         var _loc3_:* = data.o202.o2685.o10591;
         for each(var _loc1_ in data.o202.o2685.o10591)
         {
            _loc2_.push(_loc1_);
         }
         _loc2_.sort(o13159);
         return _loc2_;
      }
      
      private function o1940() : void
      {
         var _loc16_:* = undefined;
         var _loc7_:Boolean = false;
         var _loc17_:int = 0;
         var _loc9_:Boolean = false;
         var _loc1_:* = null;
         var _loc15_:* = null;
         var _loc6_:* = null;
         var _loc18_:* = null;
         var _loc11_:* = false;
         var _loc8_:* = null;
         var _loc12_:* = undefined;
         var _loc4_:* = null;
         var _loc14_:Boolean = false;
         var _loc13_:* = null;
         var _loc3_:* = 0;
         var _loc5_:int = 0;
         if(data.o202.o2685 != null)
         {
            _loc16_ = o17364();
            _loc7_ = true;
            this.o11075 = -1;
            _loc17_ = 0;
            _loc9_ = data.o202.o9381();
            var _loc26_:int = 0;
            var _loc25_:* = _loc16_;
            for each(var _loc2_ in _loc16_)
            {
               if(_loc2_.o3397)
               {
                  this.o11075 = _loc17_;
               }
               _loc17_++;
               _loc1_ = data.o5292.o923.o5711(_loc2_.o8774,_loc2_.level);
               _loc15_ = this.data.o5292.o16413(_loc2_.o8774);
               _loc6_ = o11282.o5217(_loc2_.o115);
               _loc18_ = o4519.o8116.profileData.o5292.o11370;
               _loc11_ = _loc2_.o3397 == false;
               _loc12_ = new Vector.<String>();
               _loc4_ = "";
               _loc14_ = true;
               var _loc24_:int = 0;
               var _loc23_:* = _loc2_.o11008;
               for each(var _loc10_ in _loc2_.o11008)
               {
                  _loc13_ = _loc18_.o15415(_loc10_);
                  if(_loc11_)
                  {
                     if(_loc9_)
                     {
                        var _loc20_:int = 0;
                        var _loc19_:* = _loc13_.o983;
                        for each(_loc8_ in _loc13_.o983)
                        {
                           _loc12_.push(_loc13_.o3331);
                           if(_loc14_)
                           {
                              _loc14_ = false;
                           }
                           else
                           {
                              _loc4_ = _loc4_ + "\n";
                           }
                           _loc4_ = _loc4_ + _loc8_;
                        }
                     }
                  }
                  else
                  {
                     var _loc22_:int = 0;
                     var _loc21_:* = _loc13_.o12415;
                     for each(_loc8_ in _loc13_.o12415)
                     {
                        _loc12_.push(_loc13_.o3331);
                        if(_loc14_)
                        {
                           _loc14_ = false;
                        }
                        else
                        {
                           _loc4_ = _loc4_ + "\n";
                        }
                        _loc4_ = _loc4_ + _loc8_;
                     }
                  }
               }
               this.o11388(_loc5_,_loc2_.o8774,_loc2_.name,_loc1_,_loc2_.level,_loc6_,_loc2_.o11008,_loc12_,_loc4_,_loc2_.o433);
               this.o3243(_loc5_,_loc2_.o951,o18416);
               if(_loc2_.o951 < 1)
               {
                  _loc7_ = false;
               }
               _loc5_++;
            }
            o8884 = _loc7_;
         }
         _loc3_ = _loc5_;
         while(_loc3_ < 4)
         {
            if(this.o18416 || o18081)
            {
               o6419(_loc3_);
            }
            else
            {
               o6158(_loc3_);
            }
            _loc3_++;
         }
      }
      
      private function o12706() : void
      {
         this.o106(false);
         if(o2685 != null)
         {
            o2685.o12657(o9782.o10719,o6646);
            o2685.o12657(o9782.o11785,o1354);
            o2685.o12657(o9782.o3851,o11250);
            o2685.o12657(o9782.o17372,o9812);
            o2685.o12657(o18621.o5999,o8277);
            o2685.o12657(o18621.o17654,o18965);
            if(o15969 == false)
            {
               o2685.o19115();
               data.o202.o2685 = null;
            }
         }
         if(o3093 != null)
         {
            o3093.o8125();
            o3093.o13640();
         }
         if(match)
         {
            match.o12657(o7113.o6285,o17166);
            match.o19115();
         }
         match = null;
         o3093 = null;
         o1300 = 0;
         o14538 = 0;
         o1926 = -1;
         o15457 = true;
         o18055 = -1;
      }
      
      override public function o13640() : void
      {
         if(!o15969)
         {
            o19689.o15116(true);
         }
         o12706();
         o4519.o10093.stage.removeEventListener("keyDown",o15589);
         o4519.o8116.o20488.o12657(o7220.o9885,o1665);
         data.data.o2070 = false;
         data = null;
         o19855 = null;
         o13051 = 0;
         match = null;
         o15969 = false;
         o3093 = null;
         super.o13640();
      }
      
      private function o92(param1:Boolean) : void
      {
         var _loc2_:o69 = data.o202.o18702();
         o3093.o14279(param1);
         o3093.o92(param1);
      }
      
      private function o9812(param1:Event) : void
      {
         o1926 = o2685.o9983;
         o15457 = false;
      }
      
      private function o12867() : void
      {
         var _loc1_:int = 0;
         if(o18081)
         {
            if(o6370 == false && data.o202.o2685.o6370)
            {
               _loc1_ = o16510();
               o18863(data.o202.o2685.o6370,o10181);
               if(data.o202.o2685.o6370)
               {
                  o2879(_loc1_);
               }
            }
            else if(o6370 && data.o202.o2685.o6370 == false)
            {
            }
         }
      }
      
      private function o1354(param1:Event) : void
      {
         if(o18081)
         {
            o1926 = 10000;
            o15457 = false;
         }
         this.o1940();
      }
      
      private function o17166(param1:o1601) : void
      {
         if(data.o202.o15492 == "2")
         {
            o5442(param1.o10966.toString());
         }
         match.o12657(o7113.o6285,o17166);
         if(data.o202.o2685 != null)
         {
            if(o3093 != null)
            {
               o5309();
            }
            data.o202.o2685.o7723();
            data.o202.o2685 = null;
         }
         data.o202.o2685 = new o2144();
         data.o202.o2685.o16280(data.o202.o2685,o9782.o10719,o6646);
         data.o202.o2685.o16280(data.o202.o2685,o9782.o11785,o1354);
         data.o202.o2685.o16280(data.o202.o2685,o9782.o3851,o11250);
         data.o202.o2685.o16280(data.o202.o2685,o9782.o17372,o9812);
         data.o202.o2685.o16280(data.o202.o2685,o18621.o5999,o8277);
         data.o202.o2685.o16280(data.o202.o2685,o18621.o17654,o18965);
         data.o202.o2685.o16955(param1.o4353,param1.o11025,param1.o4326,param1.o10966,o2122);
      }
      
      override protected function o11048() : void
      {
         super.o11048();
         o18863(false,o10181);
         if(o18081)
         {
            if(data.o202.o15492 == "2")
            {
               o5442("Generating");
            }
            else
            {
               o5442(data.o202.o15492);
            }
         }
         o18795.o17769(1);
         if(data.o202.o10220 != null)
         {
            o18795.o17769(2);
         }
         if(data.o202.o18339 == 2)
         {
            o18795.o17769(3);
         }
         o7217.o1746(o19855.length);
         if(data.o5292.o15863)
         {
            o9953(data.data.o911);
         }
      }
      
      override protected function o1659(param1:int, param2:o15625) : void
      {
         var _loc3_:o69 = o19855[param1];
         param2.visible = true;
         var _loc5_:MovieClip = param2.asset.getChildByName("icon") as MovieClip;
         var _loc4_:TextField = param2.asset.getChildByName("label") as TextField;
         var _loc6_:MovieClip = param2.asset.getChildByName("multiplierIcon") as MovieClip;
         if(_loc6_ && o4519.o8116.o476.o9392.o6848(_loc3_.o18800) && (o4519.o8116.o476.o9392.o8887 && data.o202.o18339 != 2 || data.o202.o18339 == 2 && o4519.o8116.o476.o9392.o17634))
         {
            _loc6_.visible = true;
            _loc6_.gotoAndStop(0);
         }
         else if(_loc6_)
         {
            _loc6_.visible = false;
         }
         _loc5_.gotoAndStop(_loc3_.o7219);
         _loc4_.htmlText = _loc3_.o1007;
         param2.visible = true;
      }
      
      override protected function o16192(param1:Boolean = false) : void
      {
         o18360(param1);
         o4519.o10093.stage.addEventListener("keyDown",o15589,false,0,true);
      }
      
      private function o18360(param1:Boolean) : void
      {
         this.o11559();
         if(o12514 == false && o3093 != null)
         {
            o3093.o154();
         }
         match = new o4356();
         match.o16280(match,o7113.o6285,o17166);
         var _loc2_:* = 0;
         if(o15278 >= 0)
         {
            o8339("Rematch: " + o15278.toString());
            _loc2_ = o15278;
         }
         else if(data.o202.o15492 != null)
         {
            if(data.o202.o15492 == "2")
            {
               _loc2_ = 2;
            }
            else
            {
               _loc2_ = data.o202.o15492;
            }
         }
         var _loc3_:Boolean = data.o202.o4701 && data.data.o2070;
         match.o16955(o9609.o16330,8124,this.o2122,_loc2_,data.o202.o18339,param1,_loc3_);
         o1940();
      }
      
      private function o4069(param1:int) : void
      {
         if(param1 < 0)
         {
            o20453 = 0;
            return;
         }
         o20453 = Number(o20453) + 1;
         if(o20453 >= 30)
         {
            o20453 = 0;
            o8339("time left: " + param1);
            if(param1 <= 5 && param1 > 0)
            {
               o4519.o8116.o4812.ui.o995.play();
            }
            else if(param1 == 0)
            {
               o4519.o8116.o4812.ui.o4676.play();
            }
         }
      }
      
      private function o9334(param1:int) : void
      {
         if(o14816 == param1)
         {
            return;
         }
         if(o14816 < param1)
         {
            o8339("player joined");
            o4519.o8116.o4812.ui.o8804.play();
         }
         else if(o14816 > param1)
         {
            o8339("player left");
            o4519.o8116.o4812.ui.o1466.play();
         }
         o14816 = param1;
      }
      
      override protected function o20128(param1:int) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:int = 0;
         var _loc6_:* = NaN;
         var _loc3_:int = 0;
         var _loc5_:* = false;
         if(asset == null)
         {
            return;
         }
         super.o6662(param1);
         if(asset == null || o14847 < 0)
         {
            return;
         }
         if(o3093 != null)
         {
            _loc2_ = o3093.o12333();
            o13011(_loc2_);
            o14538 = _loc2_;
         }
         if(asset == null || match == null || o15457)
         {
            if(o15457 && o15278 < 0)
            {
               o3078();
               o20453 = 0;
            }
            o18055 = getTimer();
            this.o106(false);
            return;
         }
         if(o2685 != null)
         {
            o12867();
            _loc4_ = 0;
            var _loc9_:int = 0;
            var _loc8_:* = data.o202.o2685.o10591;
            for(var _loc7_ in data.o202.o2685.o10591)
            {
               _loc4_++;
            }
            _loc6_ = 0;
            if(o18055 == -1)
            {
               o18055 = getTimer();
            }
            else
            {
               _loc3_ = getTimer();
               _loc6_ = Number(_loc3_ - o18055);
               o18055 = _loc3_;
               o1926 = o1926 - _loc6_ / 1000;
               if(o18416 == false && _loc4_ <= 1 && o15278 >= 0)
               {
                  if(o14847 >= 0 && o12514 == false)
                  {
                     o14847 = o14847 - _loc6_ / 1000;
                     if(o14847 < 0)
                     {
                        o14847 = -1;
                        o16989.o12407("Rematch timed out","Exiting lobby",o1182);
                        return;
                     }
                  }
               }
            }
            o9334(_loc4_);
            this.o106(_loc4_ > 1);
            o18795.o7664(_loc6_ / 1000);
            o994.enabled = o8884 && _loc4_ > 1;
            o13061.enabled = o994.enabled;
            if(o8884 && ("" == "eli" || "" == "paul" || "" == "danny" || false))
            {
               o994.enabled = true;
               o13061.enabled = true;
            }
            if(_loc4_ == 4)
            {
               if(o18416 == false)
               {
                  o13431();
               }
            }
            else if(_loc4_ > 1)
            {
               if(o18416 == false)
               {
                  if(o18081 == false)
                  {
                     o7182(o1926);
                  }
               }
            }
            else
            {
               o3078();
               o20453 = 0;
            }
            if(_loc4_ > 1 && o1926 <= 0 && o18416 == false && o8884)
            {
               this.o13431();
               o20453 = 0;
            }
            _loc5_ = data.o202.o15492 != null;
            if(o18416 || _loc4_ > 1 && o1926 <= 5)
            {
               o18863(false,o10181);
            }
         }
         else
         {
            this.o106(false);
         }
      }
      
      private function o5309() : void
      {
         if(o3093 != null)
         {
            o3093.o8125();
            o3093.o13640();
            o3093 = null;
         }
         o14538 = 0;
      }
      
      private function o16510() : int
      {
         var _loc2_:int = 0;
         var _loc3_:o69 = data.o202.o18702();
         var _loc5_:int = 0;
         var _loc4_:* = o19855;
         for each(var _loc1_ in o19855)
         {
            if(_loc3_.o18800 == _loc1_.o18800)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      protected function o11250(param1:o7734) : void
      {
         var _loc3_:* = null;
         var _loc11_:int = 0;
         var _loc8_:* = null;
         var _loc12_:* = undefined;
         var _loc6_:int = 0;
         var _loc10_:* = null;
         var _loc2_:* = null;
         var _loc9_:* = null;
         data.o202.o17943 = new Vector.<o193>();
         var _loc4_:o2144 = this.o2685;
         var _loc7_:int = _loc4_.o9721;
         if(data.o202.o10220 != null && data.o202.o10220.o12387 != _loc7_)
         {
            data.o202.o15222 = data.o202.o10220.o12387;
            _loc4_.o8113(data.o202.o10220.o12387,data.o202.o18339);
            return;
         }
         if(data.o202.o18339 == 5 || data.o202.o18339 == 4 || data.o202.o18339 == 7)
         {
            _loc3_ = o14200.o19505.o5292.o16679.o7079(data.o202.o18339);
            _loc11_ = -1;
            if(_loc3_ && _loc3_.o11392 is o14128)
            {
               _loc8_ = _loc3_.o11392 as o14128;
               _loc12_ = _loc8_.o9581();
               if(_loc12_ && _loc12_.length == 1)
               {
                  _loc11_ = _loc12_[0];
               }
            }
            if(_loc11_ != _loc7_ && _loc11_ != -1)
            {
               data.o202.o15222 = _loc11_;
               _loc4_.o8113(_loc11_,data.o202.o18339);
               return;
            }
         }
         o5309();
         data.o202.o15222 = _loc7_;
         o12754 = _loc7_;
         if(_loc4_.o18081 && _loc4_.o6370)
         {
            _loc6_ = o16510();
            o2879(_loc6_);
         }
         o3093 = new o10346(data,this.o16989,o9922);
         if(o12514 == false)
         {
            o3093.o154();
         }
         var _loc5_:o69 = data.o5292.o9177.o17565(_loc7_);
         if(_loc5_ == null)
         {
            this.o14485("???",null,"????","Onslaught",123);
         }
         else if(data.o202.o18339 == 1)
         {
            this.o14485(_loc5_.o1007,null,_loc5_.o6393,_loc5_.o7219,_loc5_.o5894);
         }
         else if(data.o202.o18339 == 2)
         {
            this.o14485(_loc5_.o1007,null,_loc5_.o6393,_loc5_.o7219,_loc5_.o5894);
         }
         else
         {
            _loc10_ = data.o5292.o3907(data.o202.o18339);
            _loc2_ = _loc5_.o1007;
            _loc2_ = _loc2_.replace("[GAMEMODE]","");
            _loc9_ = _loc10_.o8398;
            if(o14200.o19505.o202.o10220 && o14200.o19505.o202.o10220.o14678 != 14)
            {
               _loc9_ = _loc9_.replace("[ManufacturerName]",o8000.o6008(o14200.o19505.o202.o10220.o14678));
            }
            this.o14485(_loc2_,_loc10_.o17977,_loc9_,_loc5_.o7219,0);
         }
         o7806(_loc7_);
         o3093.o14279(true);
         o3093.o92(true);
      }
      
      private function o7806(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc4_:Boolean = false;
         var _loc3_:* = NaN;
         o15385 = param1;
         if(o4519.o8116.o476.o9392.o9104(param1))
         {
            if(o14053)
            {
               o14053.visible = true;
            }
            _loc2_ = "";
            _loc4_ = false;
            _loc3_ = 0;
            if(o3491)
            {
               o3491.visible = false;
            }
            if(o4519.o8116.o476.o9392.o16959(param1) >= 2)
            {
               _loc3_ = Number(o4519.o8116.o476.o9392.o16959(param1));
               _loc2_ = "2x Alloy";
               if(o3491)
               {
                  o3491.visible = o4519.o8116.o476.o9392.o8887;
               }
            }
            else if(o4519.o8116.o476.o9392.o20722(param1) > 1)
            {
               _loc3_ = Number(o4519.o8116.o476.o9392.o20722(param1));
               _loc2_ = _loc3_ + "x XP";
               _loc4_ = true;
            }
            _loc2_ = _loc2_ + " Bonus!";
            if(o7114)
            {
               o7114.text = _loc2_;
               o7114.visible = true;
            }
         }
         else if(o14053)
         {
            o14053.visible = false;
            o7114.visible = false;
         }
      }
      
      override protected function o20631() : void
      {
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override protected function o154() : void
      {
         super.o154();
         if(o3093 != null)
         {
            o3093.o154();
         }
         if(data.o202.o17896.value)
         {
            data.o202.o17896.value = false;
            o16989.o13478();
         }
      }
      
      private function o13011(param1:Number) : void
      {
         if(o4519.o13206 != null && o4519.o13206.o2685 != null)
         {
            o4519.o13206.o2685.o13938(param1);
         }
      }
      
      private function o6646(param1:Event) : void
      {
         if(data.o202.o15492 == "2")
         {
            o5442(o2685.o16114.toString());
         }
         this.o8115();
         o15969 = true;
         o7806(o15385);
         this.o1940();
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = null;
         super.o13315(param1,param2);
         if(o18416 && o14780 == false)
         {
            o4519.o13206.o11054();
            o15969 = false;
         }
         if(o15969)
         {
            this.o16989.o19931();
         }
         data.o202.o20274 = true;
         if(o15969 == false)
         {
            if(data.o202.o2685 == null)
            {
               data.o15894.o4848.o2719.o8396("No map found");
            }
            else
            {
               _loc4_ = o4519.o8116.o16619;
               _loc6_ = o4519.o8116.o15916;
               _loc5_ = "Missing map";
               var _loc8_:int = 0;
               var _loc7_:* = o19855;
               for each(var _loc3_ in o19855)
               {
                  if(_loc3_.o18800 == data.o202.o2685.o9721)
                  {
                     _loc5_ = _loc3_.o1007;
                     break;
                  }
               }
               data.o15894.o4848.o2719.o8396(_loc5_);
            }
         }
         if(o15969 == false && data.o202.o2685 != null)
         {
            if(o3093 != null)
            {
               o5309();
            }
            o12754 = 0;
            if(o4519.o13206.o8289() == false)
            {
               o4519.o13206.o19115();
            }
         }
      }
      
      override protected function o12997(param1:Event) : void
      {
         o15273();
      }
      
      private function o3462() : void
      {
         var _loc1_:o9555 = this.o1878 as o9555;
         if(_loc1_)
         {
            _loc1_.o2665.visible = true;
         }
      }
      
      override protected function o12382(param1:o11507) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(param1.o6457 >= 0)
         {
            _loc5_ = o17364();
            if(param1.o6457 >= _loc5_.length)
            {
               return;
            }
            _loc2_ = _loc5_[param1.o6457];
            _loc4_ = this.o1878 as o9555;
            _loc3_ = _loc4_.o16801(_loc2_,o3462) as o7534;
            _loc4_.o2665.visible = false;
            o6003.o2120 = -1;
         }
      }
      
      private function o8277(param1:o7734) : void
      {
         o18965(param1);
      }
      
      private function o18965(param1:o7734) : void
      {
         this.o15969 = false;
         o16989.o12407("Error","Connection lost");
         var _loc2_:o978 = this.o1878 as o978;
         _loc2_.screen = 5;
      }
      
      private function o1665(param1:o7220) : void
      {
         if(param1.o18765 != o2685.id)
         {
            o9885(param1.o18765,param1.o1216);
         }
      }
   }
}
