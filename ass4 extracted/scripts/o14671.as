package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class o14671 extends o3376
   {
       
      
      private var o19419:o14200;
      
      private var o18055:int;
      
      private var o4885:Number = 30;
      
      private var o5116:Boolean = false;
      
      private var o2787:Boolean = false;
      
      private var o7596:Boolean = false;
      
      private var o2986:o8023;
      
      private var o6512:Dictionary;
      
      private var o10057:Dictionary;
      
      private var o15329:Boolean = false;
      
      private var o18950:Vector.<int>;
      
      private var o20240:Boolean = false;
      
      private var o856:Boolean = false;
      
      private var o4594:int = 0;
      
      private var o6359:int = 0;
      
      private var o13642:int = 1;
      
      private const o17190:int = 60;
      
      private var o7772:int = 0;
      
      private var o4433:int = 0;
      
      private var o5979:Boolean = false;
      
      public function o14671(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o4006() : o3164
      {
         return new o2080();
      }
      
      private function o15579() : void
      {
         var _loc3_:* = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         o6512 = new Dictionary();
         o10057 = new Dictionary();
         var _loc1_:Dictionary = o19419.o7923.o13012.o3915;
         o1843 = o19419.data.o1843;
         var _loc6_:* = 0;
         var _loc5_:* = _loc1_;
         for(_loc3_ in _loc1_)
         {
            o6512[_loc3_] = _loc1_[_loc3_];
         }
         o19419.o202.o4161.o6546(o19419.o202.o8971);
         o19419.o202.o4161.o18334(_loc1_);
         o10057 = o19419.o202.o4161.o9788;
         o18950 = new Vector.<int>();
         var _loc8_:int = 0;
         var _loc7_:* = o10057;
         for(_loc3_ in o10057)
         {
            if(_loc1_[_loc3_] == null)
            {
               _loc1_[_loc3_] = 0;
            }
            _loc2_ = o19419.o5292.o20827.o320(_loc1_[_loc3_]);
            _loc6_ = _loc3_;
            _loc5_ = _loc1_[_loc6_] + o10057[_loc3_];
            _loc1_[_loc6_] = _loc5_;
            _loc4_ = o19419.o5292.o20827.o320(_loc1_[_loc3_]);
            if(_loc2_ != _loc4_)
            {
               o18950.push(_loc3_);
            }
         }
         if(o18950.length > 0)
         {
            o15951(null);
         }
      }
      
      private function o7907(param1:o14801, param2:int) : void
      {
         if(param1 != null)
         {
            if(o19419.o20616)
            {
               param1.o4210 = false;
               param1.o19189 = 0;
            }
            else
            {
               param1.o19189 = param1.o19189 + param2;
            }
         }
      }
      
      override public function o16384(param1:MovieClip, param2:o19406, param3:int) : void
      {
         var _loc4_:* = null;
         if(o19419.o202.o8971 == false)
         {
            o19419.o7923.o201(o19419.o202.o2997);
            o19419.o202.o2997 = 0;
         }
         super.o16384(param1,param2,param3);
         if(o19419.o202.o8971 == false)
         {
            _loc4_ = o19419.o5292.o16679.o9622();
            if(_loc4_ != null)
            {
               o17285();
            }
         }
      }
      
      override protected function o11048() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         o18055 = getTimer();
         o15579();
         o19419.o202.o1091 = 0;
         o19419.o202.o508 = 0;
         o19419.o202.o18270 = null;
         o19419.o202.o4694 = null;
         o18277();
         o2986 = new o8023();
         o4519.o8116.o20488.o16280(o2986,o7220.o9885,o1665);
         if(o19419.o202.o10211)
         {
            o4519.o10093.stage.addEventListener("keyDown",o15589,false,0,true);
         }
         if(o19419.o202.o10211 && o19419.o202.o18730)
         {
            trace("Avatar quit game - Scenario.destroyed()");
            o4519.o13206.o19115();
         }
         if(o19419.o5292.o12970.o12728(609))
         {
            _loc1_ = o19419.o5292.o12970.o19826(609);
            _loc2_ = _loc1_.o5897.o5337() / 1000;
            this.o6100(true,_loc2_);
         }
         if(o19419.o202.o10211 && o19419.o202.o18730 == false)
         {
            this.o18795.o16489();
         }
         if(o19419.o202.o8971 == false && o19419.o7923.o6333 > 0 && o19419.o202.o18730 == false)
         {
            o2787 = true;
         }
         o856 = false;
         o4594 = 0;
         o6359 = 0;
         if(o4519.o13206)
         {
            o4519.o13206.o14606 = true;
         }
      }
      
      private function o1665(param1:o7220) : void
      {
         if(param1.o18765 != o4519.o32.o5973)
         {
            o9885(param1.o18765,param1.o1216);
         }
      }
      
      override protected function o154() : void
      {
         var _loc1_:Boolean = false;
         var _loc4_:* = null;
         super.o154();
         var _loc3_:o19508 = new o19508();
         _loc3_.o7000();
         if(o19419.o202.o8971 == false)
         {
            if(o19419.o202.o10211)
            {
               o19419.o11453.o12857++;
            }
            else
            {
               o19419.o11453.o564++;
               o11373(o19419.o202.o6557);
            }
         }
         if(o13800.o4513 && o13800.o18381 && o19419.o202.o18730 == false && o19419.o202.o8971 == false && o19419.o7923.o10005 > 0)
         {
            o17033.visible = true;
            o9197.text = o19419.o7923.o10005.toString();
            o19419.o7923.o10252 = o19419.o7923.o10252 + o19419.o7923.o10005;
            o19419.data.o1553 = o19419.data.o1553 + o19419.o7923.o10005;
         }
         else
         {
            o17033.visible = false;
         }
         var _loc2_:Boolean = o19419.o202.o18081;
         if(o4519.o17061)
         {
            o4519.kong.submitStat("Kills",o19419.o11453.o3562);
            o4519.kong.submitStat("SinglePlayerWins",o19419.o11453.o564);
            o4519.kong.submitStat("MultiPlayerWins",o19419.o11453.o12857);
            o4519.kong.submitStat("TopSpot",o19419.o11453.o11587);
         }
         if(o19419.o7923.level >= 100 && o19419.o7923.o3562 < 500000)
         {
            o11407.o17225(o19419.o7923.o3562);
         }
         o11407.o14011(o19419.o7923.o10252);
         if(o19419.o20616 == false)
         {
            o19419.o12094.o7692(469,o19419.o11453.o3562);
            o19419.o12094.o7692(470,o19419.o11453.o564);
            o19419.o12094.o7692(471,o19419.o11453.o12857);
            o19419.o12094.o7692(472,o19419.o11453.o11587);
         }
         if(o19419.o202.o18339 == 2)
         {
            if(o19419.o202.o8971)
            {
               o19419.o11453.o16318++;
            }
            else
            {
               o19419.o11453.o16920++;
               o19419.o7923.o12332++;
            }
         }
         if(_loc1_ == false && o19419.o202.o8971 == false && o19419.o202.o18730 == false)
         {
            if(o19419.o7923.o13308 && o19419.o7923.o6333 > 0)
            {
               o19419.o7923.o6333--;
               o7596 = true;
            }
            else if(o4519.o8116.o476.o9392.o9104(o4519.o13206.o2685.o9721) > 0)
            {
               o7596 = true;
            }
         }
         o19419.o12094.o20388(o19419,o19419.o202.o15222);
         o19419.saveData();
         o19419.o202.o17896.value = false;
         _loc1_ = o19419.o15894.o4848.isGuest;
         if(_loc1_ == false && o19419.o202.o8971 == false && o19419.o202.o18730 == false)
         {
            o19419.o15894.o4848.o9841().defer(o15103);
         }
         else
         {
            o8670();
         }
         o19419.o5292.o16679.o7489();
         if(o4519.o13206.o2685)
         {
            _loc4_ = o19419.o5292.o16679.o3672(o4519.o13206.o2685.o4326);
            if(_loc4_)
            {
               this.o17285(_loc4_.o1998);
            }
         }
      }
      
      private function o5923(param1:String) : void
      {
      }
      
      private function o15103(param1:Boolean) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Boolean = false;
         o5923("on_ConsecutiveDailyRewards");
         if(!param1)
         {
            o19419.o202.o17896.value = false;
            o4519.o10093.o16989.o12407("Daily Reward Save Failed","Connection has been lost, you may be required to refresh if you continue to get this message.");
            o20294.enabled = true;
         }
         else
         {
            o19419.o202.o17896.value = o19419.o7923.o4995;
            _loc3_ = o19419.o7923.o717;
            _loc2_ = o19419.o15894.o4848.isGuest;
            if(_loc2_)
            {
               o19419.o202.o17896.value = false;
            }
            o8670();
         }
      }
      
      private function o8670() : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc1_:Boolean = o19419.o15894.o4848.isGuest;
         if(_loc1_ == false && o19419.o202.o17896.value == false && o19419.o7923.level >= o19419.o5292.o14681)
         {
            _loc3_ = o19419.o7923.o20269 + o19419.o11453.o564 + o19419.o11453.o12857;
            _loc2_ = o19419.o5292.o1518;
            if(_loc3_ % _loc2_ == 0)
            {
               o19419.o202.o16608.value = true;
            }
         }
         o20294.enabled = true;
      }
      
      override public function o18277() : void
      {
         o16545(o19419.o202.o16835.length,o19419.o202.o19062);
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
         o2986.o19115();
         if(o19419.o202.o10211)
         {
            o4519.o10093.stage.removeEventListener("keyDown",o15589);
         }
         o19419.o5292.o16679.o7489();
         if(o19419.o7923 != null)
         {
            if(o19419.o7923.o14250 > o19419.o5292.o418.o12650)
            {
               while(o19419.o7923.o14250 > o19419.o5292.o418.o12650)
               {
                  o19419.o7923.o3196(true);
               }
            }
         }
         o19419.saveData();
         o19419.o202.o2997 = 0;
         o19419.o202.o9954 = null;
         o19419 = null;
         o2986 = null;
         o6512 = null;
         o10057 = null;
         super.o13640();
      }
      
      private function o5018(param1:int, param2:Vector.<o2084>) : o2084
      {
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            if(_loc3_.o7874 == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function o6226(param1:Vector.<o2084>, param2:int) : void
      {
         var _loc20_:* = null;
         var _loc8_:int = 0;
         var _loc12_:* = null;
         var _loc15_:Boolean = false;
         var _loc19_:* = null;
         var _loc3_:Boolean = o19419.o202.o15890;
         var _loc9_:Boolean = o19419.o202.o17551;
         var _loc13_:Boolean = o19419.o202.o2200;
         var _loc14_:Boolean = o19419.o202.o4732;
         var _loc4_:Boolean = o19419.o202.o15251;
         var _loc7_:String = o19419.o202.o4521;
         if(param2 != 0)
         {
            o8339("displayPlayerStats: start index should be 0");
         }
         var _loc11_:o15645 = o19419.o5292.o3907(o19419.o202.o18339);
         var _loc17_:* = -1;
         var _loc5_:* = null;
         var _loc10_:int = -1;
         var _loc16_:int = 0;
         var _loc18_:Boolean = false;
         var _loc6_:int = o19419.o202.o9954.length;
         _loc8_ = 0;
         while(_loc8_ < o13467.o16734)
         {
            if(_loc8_ >= param2)
            {
               if(_loc8_ - param2 < param1.length)
               {
                  _loc20_ = param1[_loc8_ - param2];
                  if(_loc20_.o7923)
                  {
                     _loc17_ = _loc8_;
                     _loc10_ = _loc20_.o19189;
                     if(_loc20_.o17984 || _loc20_.o3049)
                     {
                        _loc18_ = true;
                     }
                     if(o4519.o13206.o2685)
                     {
                        _loc12_ = o19419.o5292.o16679.o3672(o4519.o13206.o2685.o4326);
                        if(_loc12_)
                        {
                           this.o17285(_loc12_.o1998);
                        }
                     }
                  }
                  else if(_loc17_ != -1)
                  {
                     if(_loc20_.o19189 <= _loc10_)
                     {
                        if(_loc20_.o17984 == false && _loc20_.o3049 == false)
                        {
                           _loc18_ = false;
                        }
                     }
                  }
                  if(_loc20_.o17984 || _loc20_.o3049)
                  {
                     _loc15_ = _loc11_.o20851;
                     if(_loc20_.o7923)
                     {
                        _loc5_ = _loc20_;
                     }
                     _loc19_ = new o16123(_loc11_.o9111(o19419.o202.o9381() == false,_loc6_,o19419.o202.o18339,o19419.o202.o8971,_loc20_.o19189,_loc8_));
                     if(o856 == false)
                     {
                        if(o4519.o13206.o7 && _loc8_ == 0)
                        {
                           o4594 = _loc20_.o19189;
                        }
                        if(o4519.o13206.o7 && _loc8_ == 1)
                        {
                           o6359 = _loc20_.o19189;
                        }
                     }
                     if(!o20240 && o4519.o13206.o2685 && (o4519.o13206.o2685.o4326 == 3 || o4519.o13206.o2685.o4326 == 4) && (_loc20_.o7874 == o4519.o32.o5973 && (o4519.o13206.o4231 || _loc20_.o1702)))
                     {
                        _loc19_.value = 0;
                        _loc20_.o2306 = false;
                     }
                     else
                     {
                        o20240 = true;
                     }
                     o7772 = _loc20_.o17861;
                     o4433 = _loc20_.o7211;
                     if(_loc20_.o7923)
                     {
                        o19419.o15894.o4848.o2719.o13760.o15436 = _loc19_.value;
                        o19419.o15894.o4848.o2719.o13760.o5059 = _loc8_;
                        o12073();
                     }
                     this.o19290(_loc8_,_loc20_.o2274,_loc20_.level,_loc20_.o18731,_loc20_.o20915,_loc20_.o8256,o4433,o7772,_loc20_.o3049 == false,o19419.o202.o6557,_loc20_.o7923,o11282.o5217(_loc20_.o115),_loc14_,_loc20_.o19189,_loc20_.o16286,_loc20_.o20285,o5116 && _loc15_,0,_loc19_.value,_loc13_,_loc20_.o4317,_loc7_,_loc20_.client.o433,_loc4_,_loc20_.o18448);
                  }
                  else
                  {
                     o7756(_loc8_,_loc20_.o2274,_loc20_.level,_loc20_.o18731,o19419.o202.o6557,_loc20_.o19189,null);
                  }
               }
               else
               {
                  this.o12047(_loc8_);
               }
            }
            _loc8_++;
         }
         if(o5116 == false && _loc18_)
         {
            o5116 = true;
            o10272(_loc17_,_loc5_);
            if(o4519.o13206.o7 && o4594 - 60 > o6359 && _loc5_.o19189 == o4594)
            {
               o11407.o13129(o4594 - o6359);
            }
            o856 = true;
         }
      }
      
      private function o10272(param1:int, param2:o2084) : void
      {
         var _loc5_:int = 0;
         var _loc7_:* = null;
         var _loc4_:Number = NaN;
         var _loc3_:int = 0;
         var _loc10_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:* = null;
         var _loc8_:o16123 = new o16123(-1);
         if(param1 == 0)
         {
            o19419.o11453.o11587++;
         }
         if(o19419.o202.o1092)
         {
            _loc5_ = o19419.o202.o9954.length;
            if(_loc5_ == 1)
            {
               o19419.data.o2070 = true;
            }
            else if(_loc5_ == 2)
            {
               o19419.data.o2070 = param1 == 0;
            }
            else if(_loc5_ == 3)
            {
               if(param1 == 2)
               {
                  o19419.data.o2070 = Math.random() < 0.5;
               }
               else
               {
                  o19419.data.o2070 = param1 == 0;
               }
            }
            else if(_loc5_ == 4)
            {
               o19419.data.o2070 = param1 < 2;
            }
            _loc7_ = o19419.o5292.o3907(o19419.o202.o18339);
            _loc4_ = _loc7_.o6328(param1);
            _loc3_ = param2.o17861 * _loc4_;
            _loc10_ = _loc3_ - param2.o17861;
            _loc6_ = param2.level * _loc7_.o1072(param1);
            _loc10_ = _loc10_ + _loc6_;
            _loc8_.value = _loc7_.o9111(o19419.o202.o9381() == false,_loc5_,o19419.o202.o18339,o19419.o202.o8971,param2.o19189,param1);
            if(!o20240 && (o4519.o13206.o2685.o4326 == 3 || o4519.o13206.o2685.o4326 == 4 || o4519.o13206.o2685.o4326 == 7) && (param2.o7874 == o4519.o32.o5973 && (o4519.o13206.o4231 || param2.o1702)))
            {
               param2.o17861 = 0;
               param2.o7211 = 0;
               _loc10_ = 0;
               _loc8_.value = 0;
               param2.o2306 = false;
            }
            if(_loc10_ < 0)
            {
               _loc10_ = 0;
            }
            o19419.o7923.o20170 = o19419.o7923.o20170 + _loc10_;
            _loc9_ = o19419.o5292.o16679.o3672(o4519.o13206.o2685.o4326);
            if(_loc9_ != null)
            {
               if(o19419.o20616)
               {
                  _loc9_.o4210 = false;
                  _loc9_.o19189 = 0;
               }
               else if(o4519.o13206.o2685.o4326 == 7 || o4519.o13206.o2685.o4326 == 3 || o4519.o13206.o2685.o4326 == 4 || o4519.o13206.o2685.o4326 == 5)
               {
                  _loc9_.o18018 = _loc8_.value;
               }
               else
               {
                  _loc9_.o19189 = _loc9_.o19189 + _loc8_.value;
               }
               o17285(_loc9_.o1998);
            }
            o2896(_loc10_,_loc8_.value);
         }
      }
      
      private function o1739(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(isNaN(parseInt(param1.charAt(_loc2_))))
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      private function o12073() : void
      {
         if(o4519.o32 == null)
         {
            return;
         }
         if(o13642 >= 60)
         {
            o7772 = o4519.o32.o18641 + o4519.o32.o15973;
            o4433 = o4519.o32.o7211;
         }
         else if(o7596)
         {
            o7772 = o4519.o32.o18641 + o4519.o32.o15973 * (1 / 60 * o13642);
            o4433 = o4519.o32.o1203 + o4519.o32.o7560 * (1 / 60 * o13642);
            o13642 = Number(o13642) + 1;
         }
         else if(o2787)
         {
            o7772 = o4519.o32.o18641;
            o4433 = o4519.o32.o1203;
         }
         else if(o19419.o202.o8971 == false && o19419.o202.o18730 == false)
         {
            o7772 = o4519.o32.o17861;
            o4433 = o4519.o32.o7211;
         }
      }
      
      public function o344(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(o1739(param1))
         {
            return parseInt(param1);
         }
         var _loc4_:int = 5381;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1.charCodeAt(_loc3_);
            _loc4_ = (_loc4_ << 5) + _loc4_ + _loc2_;
            _loc3_++;
         }
         return Math.abs(_loc4_);
      }
      
      private function o19850(param1:o2084, param2:o2084) : int
      {
         if(param1.o7874 < param2.o7874)
         {
            return -1;
         }
         if(param1.o7874 > param2.o7874)
         {
            return 1;
         }
         return 0;
      }
      
      private function o13941() : int
      {
         var _loc3_:* = null;
         var _loc2_:Vector.<o2084> = new Vector.<o2084>();
         var _loc5_:int = 0;
         var _loc4_:* = o19419.o202.o9954;
         for each(_loc3_ in o19419.o202.o9954)
         {
            _loc2_.push(_loc3_);
         }
         _loc2_ = _loc2_.sort(o19850);
         var _loc1_:String = "";
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(_loc3_ in _loc2_)
         {
            _loc1_ = _loc1_ + _loc3_.o18731;
         }
         return o344(_loc1_);
      }
      
      override protected function o15784(param1:Event) : void
      {
         var _loc2_:o2084 = o19419.o202.o4800();
         if(_loc2_ == null)
         {
            return;
         }
         o19419.o15894.o4848.o2719.o16690();
         o19419.data.o2070 = false;
         _loc2_.o4317 = true;
         o18795.o8110("###REMATCH###:" + _loc2_.o7874);
         o19419.o202.o12874.reset();
         o19419.o202.o11032 = new Vector.<o19467>();
         o19419.o202.o15492 = "R-" + o13941().toString();
         o19419.o202.o15278 = o4519.o13206.o2685.o16114;
         o19419.o202.o2432 = o19419.o202.o15492;
         o4519.o10093.screen = 5;
      }
      
      override protected function o6662(param1:Event) : void
      {
         var _loc9_:* = null;
         var _loc5_:int = 0;
         var _loc3_:Boolean = false;
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         var _loc4_:int = getTimer();
         var _loc7_:Number = _loc4_ - o18055;
         o18055 = _loc4_;
         o4885 = o4885 - _loc7_ / 1000;
         var _loc6_:int = 0;
         var _loc11_:int = 0;
         var _loc10_:* = o19419.o202.o9954;
         for each(_loc9_ in o19419.o202.o9954)
         {
            if(_loc9_.o4317 || _loc9_.o3049 == false)
            {
               _loc6_++;
            }
         }
         var _loc2_:* = o19419.o7923.o8312.length > 0;
         if(_loc2_ == false)
         {
            if(o19419.o202.o10211 && (o19419.o202.o9359 == false || o19419.o202.o9381()))
            {
               o10186(int(o4885),_loc6_);
            }
         }
         o19419.o202.o17378();
         var _loc8_:Boolean = o19419.o202.o2200;
         if(o19419.o202.o10211 && o19419.o202.o18730 == false)
         {
            _loc5_ = 0;
            while(_loc5_ < o13467.o16734)
            {
               if(_loc5_ < o19419.o202.o9954.length)
               {
                  o6226(o19419.o202.o9954,0);
               }
               else
               {
                  this.o12047(_loc5_);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc9_ = o19419.o202.o4800();
            _loc3_ = o19419.o202.o9359;
            if(_loc9_)
            {
               o7772 = _loc9_.o17861;
               o4433 = _loc9_.o7211;
               o12073();
               this.o19290(_loc5_,_loc9_.o2274,_loc9_.level,_loc9_.o18731,_loc9_.o20915,_loc9_.o8256,o4433,o7772,false,o19419.o202.o6557,_loc9_.o7923,o11282.o5217(_loc9_.o115),_loc3_,_loc9_.o19189,_loc9_.o16286,_loc9_.o20285,false,0,0,_loc8_,_loc9_.o4317,"Null",_loc9_.client.o433);
            }
            else
            {
               trace("Error (324): Somehow the player \'getPlayerData\' returned null. Thus cannot display character statistics.");
            }
         }
      }
      
      override protected function o19488() : o4896
      {
         return new o7063(this);
      }
      
      public function o9885(param1:int, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         if(o18795 == null)
         {
            return;
         }
         if(o4519.o13206 == null)
         {
            throw new Error("Sas4.scenario is null;");
         }
         var _loc3_:Array = o4519.o8116.o2996.o20698(o17517);
         if(_loc3_ == null)
         {
            throw new Error("avatars array is null;");
         }
         var _loc6_:int = 0;
         var _loc5_:Array = o4896.o6854;
         if(param2.indexOf("###REMATCH###:") >= 0)
         {
            _loc4_ = param2.substring("###REMATCH###:".length);
            _loc8_ = parseInt(_loc4_);
            _loc9_ = o19419.o202.o20131(_loc8_);
            _loc9_.o4317 = true;
            param2 = "Rematch: " + _loc9_.o18731 + " waiting in lobby";
         }
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_;
         for each(var _loc7_ in _loc3_)
         {
            if(_loc6_ >= 4)
            {
               throw new Error("More than 4 characters?");
            }
            if(_loc7_ == null)
            {
               throw new Error("Null avatar?");
            }
            if(_loc7_.o5973 == param1)
            {
               if(_loc7_.o10615 == null)
               {
                  throw new Error("Null username?");
               }
               o18795.o20132(param2,_loc7_.o10615,_loc5_[_loc6_]);
            }
            _loc6_++;
         }
      }
      
      private function o15589(param1:KeyboardEvent) : void
      {
         if(o18795 && o19419.o202.o11275)
         {
            o18795.o10778.type = "dynamic";
         }
         else if(o18795)
         {
            o18795.o10778.type = "input";
         }
         if(o12514 || o4519.o9721 == null || o18795 == null || o19419.o202.o11275)
         {
            return;
         }
         if(o18795)
         {
            o18795.o8525(param1,o19419.o7923.o12110,true);
         }
      }
      
      override protected function o16545(param1:int, param2:Vector.<int>) : void
      {
         var _loc3_:* = null;
         super.o16545(param1,param2);
         if(param1 == 0)
         {
            if(o5979 == false && o19419.o202.o10211 && o18795 != null && (o19419.o202.o18270 != null || o19419.o202.o4694 != null))
            {
               _loc3_ = "";
               if(o19419.o202.o18270 == null)
               {
                  _loc3_ = o19419.o202.o4694;
               }
               else if(o19419.o202.o4694 == null)
               {
                  _loc3_ = o19419.o202.o18270;
               }
               else
               {
                  _loc3_ = o19419.o202.o18270 + "; " + o19419.o202.o4694;
               }
               o5979 = true;
               o18795.o8110(_loc3_);
            }
         }
      }
      
      override protected function o20389(param1:o11507) : void
      {
         if(param1.o6457 < 0)
         {
            return;
         }
         var _loc2_:o2084 = o19419.o202.o9954[param1.o6457];
         if(_loc2_.client != null)
         {
            o4519.o10093.o16989.o16801(_loc2_.client);
         }
         o6003.o2120 = -1;
      }
      
      private function o3996() : void
      {
         var _loc4_:* = null;
         var _loc1_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = null;
         var _loc3_:int = 0;
         if(o18950.length > 0)
         {
            _loc4_ = o19419.o5292.o20827.o8206(o18950[o18950.length - 1]);
            o18950.pop();
            _loc1_ = o19419.o7923.o13012.o3915;
            _loc6_ = o19419.o5292.o20827.o320(_loc1_[_loc4_.id]);
            _loc5_ = _loc4_.o9938[_loc6_ - 1];
            var _loc8_:int = 0;
            var _loc7_:* = _loc5_.o8855;
            for each(var _loc2_ in _loc5_.o8855)
            {
               _loc2_.o13260();
            }
            _loc3_ = o19419.o7923.o13012.o4671(_loc4_.id);
            o4519.o10093.o16989.o4970(_loc4_,_loc3_,o3996,o3996);
         }
      }
      
      protected function o10968() : void
      {
         o3996();
      }
      
      override protected function o15951(param1:MouseEvent) : void
      {
         if(o19419.data.o1843 == false)
         {
            o19419.data.o1843 = true;
            o19419.saveData();
         }
         o1843 = true;
         if(o15329)
         {
            o4519.o10093.o16989.o11626(o19419.o7923.o13012.o3915,new Dictionary(),false);
         }
         else
         {
            o4519.o10093.o16989.o11626(o6512,o10057,true,o18950.length > 0,o10968);
            o15329 = true;
         }
      }
      
      override protected function o14199() : void
      {
         this.o18522.o16989.o198(this.o15157);
      }
   }
}
