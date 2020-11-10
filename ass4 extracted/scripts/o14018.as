package
{
   public class o14018
   {
      
      public static const o151:int = 5;
      
      public static const o19918:o16123 = new o16123(4000);
       
      
      private var o8711:o16123;
      
      public var o3279:String;
      
      public var name:String;
      
      public var o7962:String;
      
      public var o4036:Vector.<o18474>;
      
      public var o652:Vector.<o16123>;
      
      public var o12087:String;
      
      public function o14018()
      {
         o8711 = new o16123(0);
         o652 = new Vector.<o16123>();
         super();
         o4036 = new Vector.<o18474>();
      }
      
      public static function o15596(param1:int, param2:int = 1) : o2347
      {
         var _loc5_:int = 0;
         var _loc4_:* = o4519.o8116.o9986.o17656;
         for each(var _loc3_ in o4519.o8116.o9986.o17656)
         {
            if(_loc3_.type == param1 && _loc3_.grade == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function o20494(param1:o8925, param2:int) : Boolean
      {
         var _loc3_:* = null;
         switch(int(param2) - 1)
         {
            case 0:
               return true;
            case 1:
               return true;
            case 2:
               return true;
            case 3:
               return param1.o30 > 0;
            case 4:
               return true;
            case 5:
               if(param1.o19455 <= 0)
               {
                  return false;
               }
               if(param1.o16859 == 2)
               {
                  _loc3_ = [29,96,43,107];
                  return _loc3_.indexOf(param1.id) >= 0;
               }
               return true;
            case 6:
               return param1.o4687 > 0;
            case 7:
               return param1.o3603 >= 5;
            case 8:
               return param1.o16832 > 0;
            case 9:
               return param1.o13369 < 1;
            case 10:
               return true;
         }
      }
      
      public static function o10939(param1:int, param2:int) : Number
      {
         var _loc3_:Number = o4519.o8116.profileData.o5292.o4032[param1];
         return _loc3_ * param2;
      }
      
      public function get o18172() : int
      {
         return o8711.value;
      }
      
      public function set o18172(param1:int) : void
      {
         o8711.value = param1;
      }
      
      public function init(param1:int, param2:String, param3:String, param4:String, param5:String) : o14018
      {
         var _loc11_:int = 0;
         var _loc6_:* = null;
         var _loc10_:* = undefined;
         this.o8711.value = param1;
         this.name = param3;
         this.o3279 = param2;
         this.o7962 = param4;
         this.o12087 = param5;
         var _loc9_:o17849 = o4519.o8116.o16619;
         _loc11_ = 1;
         while(_loc11_ <= o14413.o11842)
         {
            _loc6_ = o15596(param1,_loc11_);
            if(_loc11_ == 1)
            {
               var _loc13_:int = 0;
               var _loc12_:* = _loc6_.o20559;
               for each(var _loc8_ in _loc6_.o20559)
               {
                  o652.push(new o16123(_loc8_));
               }
            }
            _loc10_ = new Vector.<o16123>();
            var _loc15_:int = 0;
            var _loc14_:* = _loc6_.o20559;
            for each(var _loc7_ in _loc6_.o20559)
            {
               _loc10_.push(new o16123(_loc7_));
            }
            this.o4036.push(new o18474().init(_loc6_,this,_loc6_.id,_loc10_,_loc6_.grade,_loc6_.o9421,_loc6_.o18619,_loc9_.o9009(_loc6_.o1216)));
            _loc11_++;
         }
         return this;
      }
      
      public function o9837(param1:o14096) : int
      {
         return o12739(param1,0);
      }
      
      public function o12739(param1:o14096, param2:int) : int
      {
         var _loc3_:int = param1.o2752.o9421;
         if(_loc3_ < o19918.value)
         {
            _loc3_ = o19918.value;
         }
         if(param2 >= o4036.length)
         {
            return 0;
         }
         var _loc5_:* = 0;
         var _loc4_:Number = o4036[param2].o9421;
         _loc4_ = o20852.o2906(_loc4_);
         _loc5_ = Number(_loc3_ * _loc4_);
         return _loc5_;
      }
      
      public function o10620(param1:o1253) : int
      {
         return o15720(param1,0);
      }
      
      public function o15720(param1:o1253, param2:int) : int
      {
         var _loc3_:int = param1.o10239.o9421;
         if(_loc3_ < o19918.value)
         {
            _loc3_ = o19918.value;
         }
         if(param2 >= o4036.length)
         {
            return 0;
         }
         var _loc4_:Number = o4036[param2].o9421;
         _loc4_ = o20852.o2906(_loc4_);
         return _loc3_ * _loc4_;
      }
      
      public function o16968(param1:o14096, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2)
         {
            _loc4_ = _loc4_ + o12739(param1,_loc3_);
            _loc3_++;
         }
         return _loc4_;
      }
      
      public function o11830(param1:o1253, param2:int) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < param2)
         {
            _loc4_ = _loc4_ + o15720(param1,_loc3_);
            _loc3_++;
         }
         return _loc4_;
      }
      
      public function o10358(param1:o14096) : Number
      {
         var _loc4_:int = this.o8711.value;
         var _loc3_:* = 0;
         var _loc2_:o10481 = param1.o2752;
         var _loc5_:* = _loc4_;
         switch(_loc5_)
         {
            case 1:
               return _loc2_.o5725 * _loc2_.o8015;
            case 2:
               return _loc2_.o18640;
            case 3:
               return 0;
            case 4:
               return _loc2_.o30;
            case 5:
               return 0;
            case 6:
               return 1 / _loc2_.o19455;
            case 7:
               return _loc2_.o4687;
            case 8:
               return _loc2_.o3603;
            case 9:
               return _loc2_.o16832;
            case 10:
               if(_loc2_.o13369 - 1 < 0)
               {
                  return _loc2_.o13369 - 1;
               }
               return 0;
            case 11:
               return 0;
            case 22:
               if(_loc2_.o13369 - 1 > 0)
               {
                  return _loc2_.o13369 - 1;
               }
               return 0;
            default:
               return _loc3_;
         }
      }
      
      public function o7905(param1:o14096) : Number
      {
         var _loc2_:Number = o10358(param1);
         var _loc3_:Number = o8447(param1);
         return _loc3_ - _loc2_;
      }
      
      public function o13692(param1:o14096) : String
      {
         var _loc2_:Number = o7905(param1);
         return o13434(param1,_loc2_,true,true,false);
      }
      
      public function o18026(param1:o1253) : Number
      {
         if(o18172 == 25)
         {
            o18172 = o18172;
         }
         var _loc2_:Number = o5058(param1);
         var _loc3_:Number = o4323(param1);
         if(o18172 == 10)
         {
            return Math.abs(_loc3_ - _loc2_);
         }
         return _loc3_ - _loc2_;
      }
      
      public function o16127(param1:o1253) : String
      {
         var _loc2_:Number = o18026(param1);
         return o2520(param1,_loc2_,true,true,false);
      }
      
      public function o8447(param1:o14096) : Number
      {
         var _loc4_:int = this.o8711.value;
         var _loc3_:Number = o10358(param1);
         var _loc2_:o10481 = param1.o2752;
         var _loc5_:* = 1;
         if(_loc4_ == 1 || _loc4_ == 7 || _loc4_ == 6 || _loc4_ == 8)
         {
            _loc5_ = Number(_loc5_ + param1.o13296);
         }
         return _loc3_ * _loc5_;
      }
      
      public function o7619() : String
      {
         return "";
      }
      
      public function o735() : String
      {
         return "";
      }
      
      public function o3771(param1:o8925) : Boolean
      {
         return o20494(param1,this.o8711.value);
      }
      
      public function o78(param1:o1253) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc5_:int = 0;
         var _loc4_:* = this.o652;
         for each(var _loc3_ in this.o652)
         {
            if(param1.o10239.o20559 == _loc3_.value)
            {
               _loc2_ = true;
               break;
            }
         }
         if(_loc2_ == false)
         {
            return false;
         }
         return true;
      }
      
      private function o4953(param1:String) : Boolean
      {
         return param1 == "0" || param1 == "0.0" || param1 == "-0.0" || param1 == "0.00" || param1 == "-0.00";
      }
      
      private function o4912(param1:String) : String
      {
         return "<font color=\"#FF00000\">" + param1;
      }
      
      private function o15753(param1:int, param2:Vector.<o1253>, param3:o4117) : Number
      {
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc6_:o14018 = _loc4_.o5292.o5812(param1);
         var _loc7_:* = 0;
         var _loc9_:int = 0;
         var _loc8_:* = param2;
         for each(var _loc5_ in param2)
         {
            if(_loc5_ != null)
            {
               _loc7_ = Number(_loc7_ + _loc6_.o9229(_loc5_,param3));
            }
         }
         return _loc7_;
      }
      
      private function o14618(param1:int, param2:Vector.<o1253>) : Number
      {
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc6_:o14018 = _loc3_.o5292.o5812(param1);
         var _loc4_:* = 0;
         var _loc8_:int = 0;
         var _loc7_:* = param2;
         for each(var _loc5_ in param2)
         {
            if(_loc5_ != null)
            {
               _loc4_ = Number(_loc4_ + _loc6_.o4323(_loc5_));
            }
         }
         return _loc4_;
      }
      
      public function o9277(param1:o14096, param2:Number, param3:Boolean, param4:Boolean, param5:Boolean) : String
      {
         var _loc6_:int = this.o8711.value;
         var _loc8_:* = 0;
         var _loc7_:String = o13032(_loc6_,param2);
         _loc7_ = o14712(_loc7_,param3,param4,param5);
         if(param4 && _loc7_.length > 0)
         {
            _loc7_ = o8043(param1,_loc7_);
         }
         return _loc7_;
      }
      
      public function o13434(param1:o14096, param2:Number, param3:Boolean, param4:Boolean, param5:Boolean) : String
      {
         var _loc6_:int = this.o8711.value;
         var _loc8_:* = 0;
         var _loc7_:String = o19337(_loc6_,param2);
         _loc7_ = o14712(_loc7_,param3,param4,param5);
         if(param4 && _loc7_.length > 0)
         {
            _loc7_ = o16302(param1,_loc7_);
         }
         return _loc7_;
      }
      
      public function o434(param1:o14096, param2:String) : String
      {
         var _loc4_:Number = NaN;
         var _loc3_:int = this.o8711.value;
         if(param2.length > 0)
         {
            switch(int(_loc3_) - 1)
            {
               case 0:
                  param2 = param2 + "";
                  break;
               case 1:
                  param2 = param2 + "";
                  break;
               case 2:
                  param2 = param2 + "%";
                  break;
               case 3:
                  param2 = param2 + "";
                  break;
               case 4:
                  param2 = param2 + "%";
                  break;
               case 5:
                  param2 = param2 + " rps";
                  break;
               case 6:
                  _loc4_ = param1.o2752.o10273;
                  param2 = param2 + (" hp/" + _loc4_.toString() + "sec");
                  break;
               case 7:
                  param2 = param2 + "";
                  break;
               case 8:
                  param2 = param2 + " sec";
                  break;
               case 9:
                  param2 = param2 + "%";
                  break;
               case 10:
                  param2 = param2 + " hp/kill";
            }
         }
         return param2;
      }
      
      public function o16302(param1:o14096, param2:String) : String
      {
         var _loc3_:int = this.o8711.value;
         var _loc4_:String = o434(param1,param2);
         if(_loc4_ == null)
         {
            return param2 + o10498();
         }
         return _loc4_;
      }
      
      public function o8043(param1:o14096, param2:String) : String
      {
         var _loc3_:int = this.o8711.value;
         var _loc4_:String = o434(param1,param2);
         if(_loc4_ == null)
         {
            return param2 + o13185();
         }
         return _loc4_;
      }
      
      public function o19462(param1:Vector.<o1253>, param2:o14096, param3:o4117) : Number
      {
         var _loc8_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc6_:int = this.o8711.value;
         if(o18172 == 10 || o18172 == 22)
         {
            return 0;
         }
         var _loc5_:Number = o8447(param2);
         var _loc7_:* = 0;
         var _loc9_:* = _loc6_;
         switch(_loc9_)
         {
            case 1:
               _loc7_ = Number(o14618(24,param1));
               _loc7_ = Number(_loc7_ + o15753(24,param1,param3));
               if(_loc7_ > 0.001)
               {
                  _loc7_ = Number(_loc5_ * _loc7_);
               }
               break;
            case 5:
               _loc7_ = Number(o14618(23,param1));
               _loc7_ = Number(_loc7_ + o15753(23,param1,param3));
               break;
            case 9:
               _loc8_ = this.o14860(param2,param3);
               _loc4_ = _loc8_ / _loc5_;
               _loc7_ = Number(o14618(25,param1));
               _loc7_ = Number(_loc7_ + o15753(25,param1,param3));
               _loc7_ = Number(-_loc7_);
               if(_loc7_ < -0.001)
               {
                  _loc7_ = Number((1 + _loc7_) * (1 + _loc4_));
                  _loc7_ = Number(1 - _loc7_);
                  _loc7_ = Number(_loc5_ * _loc7_);
                  _loc7_ = Number(_loc7_ + _loc8_);
                  _loc7_ = Number(-_loc7_);
               }
               break;
            case 22:
               _loc7_ = Number(o14618(22,param1));
               _loc7_ = Number(_loc7_ + o15753(22,param1,param3));
         }
         return _loc7_;
      }
      
      public function o8084(param1:Vector.<o1253>, param2:o14096, param3:int, param4:o4117) : String
      {
         var _loc6_:* = undefined;
         var _loc8_:int = 0;
         var _loc7_:* = param1;
         for each(var _loc5_ in param1)
         {
            if(_loc5_ != null && _loc5_.o8395 == param3)
            {
               _loc6_ = new Vector.<o1253>();
               _loc6_.push(_loc5_);
               return o5080(_loc6_,param2,param4);
            }
         }
         return "";
      }
      
      public function o5080(param1:Vector.<o1253>, param2:o14096, param3:o4117) : String
      {
         var _loc4_:int = this.o8711.value;
         var _loc5_:String = "NYI A";
         var _loc6_:Number = o19462(param1,param2,param3);
         _loc5_ = o9277(param2,_loc6_,true,true,false);
         return _loc5_;
      }
      
      public function o12976(param1:o14096) : String
      {
         var _loc2_:Number = o10358(param1);
         return o9277(param1,_loc2_,false,true,true);
      }
      
      private function o15953() : Boolean
      {
         var _loc1_:int = this.o8711.value;
         return _loc1_ == 13 || _loc1_ == 14 || _loc1_ == 15 || _loc1_ == 22 || _loc1_ == 10;
      }
      
      private function o10498() : String
      {
         var _loc1_:int = this.o8711.value;
         if(_loc1_ == 16 || _loc1_ == 17)
         {
            return "";
         }
         return o13185();
      }
      
      private function o13185() : String
      {
         var _loc1_:int = this.o8711.value;
         switch(int(_loc1_) - 10)
         {
            case 0:
               return "%";
            default:
            default:
            default:
            default:
            default:
               return "";
            case 6:
               return "%";
            case 7:
               return "%";
            case 8:
               return " hp/sec";
            case 9:
               return " e/sec";
            case 10:
            default:
               return "%";
            case 12:
               return "%";
            case 13:
               return "%";
            case 14:
               return "%";
            case 15:
               return "%";
         }
      }
      
      private function o19337(param1:int, param2:Number) : String
      {
         switch(int(param1) - 16)
         {
            case 0:
               return o16724.o10417(Math.round(param2));
            case 1:
               return o16724.o10417(Math.round(param2));
         }
      }
      
      private function o13032(param1:int, param2:Number) : String
      {
         var _loc3_:String = "NYI E";
         var _loc4_:* = param1;
         switch(_loc4_)
         {
            case 13:
               _loc3_ = o16724.o20031(param2);
               break;
            case 14:
               _loc3_ = o16724.o20031(param2);
               break;
            case 15:
               _loc3_ = o16724.o20031(param2);
               break;
            case 16:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 17:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 18:
               _loc3_ = o16724.o20031(param2);
               break;
            case 19:
               _loc3_ = o16724.o20031(param2);
               break;
            case 20:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 21:
               _loc3_ = o16724.o20031(param2);
               break;
            case 24:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 23:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 25:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 22:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 1:
               _loc3_ = o16724.o20031(param2);
               break;
            case 2:
               _loc3_ = o16724.o20031(param2);
               break;
            case 3:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 4:
               _loc3_ = o16724.o20301(param2);
               break;
            case 5:
               _loc3_ = o16724.o20301(param2 * 100);
               break;
            case 6:
               _loc3_ = o16724.o20031(param2);
               break;
            case 7:
               _loc3_ = o16724.o20031(param2);
               break;
            case 8:
               _loc3_ = o16724.o10417(Math.round(param2));
               break;
            case 9:
               _loc3_ = o16724.o20301(param2);
               break;
            case 10:
               _loc3_ = o16724.o20031(param2 * 100);
               break;
            case 11:
               _loc3_ = Math.round(param2 * 100).toString();
         }
         return _loc3_;
      }
      
      private function o14712(param1:String, param2:Boolean, param3:Boolean, param4:Boolean) : String
      {
         if(param4 || param1.length > 0 && o4953(param1) == false)
         {
            if(param2)
            {
               if(param1.charAt(0) == "-")
               {
                  param1 = param1;
               }
               else
               {
                  param1 = "+" + param1;
               }
            }
         }
         else
         {
            param1 = "";
         }
         return param1;
      }
      
      public function o10576(param1:o1253, param2:Number, param3:Boolean, param4:Boolean, param5:Boolean) : String
      {
         var _loc6_:int = this.o8711.value;
         var _loc7_:String = o13032(_loc6_,param2);
         _loc7_ = o14712(_loc7_,param3,param4,param5);
         if(param4 && _loc7_.length > 0)
         {
            _loc7_ = _loc7_ + o13185();
         }
         return _loc7_;
      }
      
      public function o2520(param1:o1253, param2:Number, param3:Boolean, param4:Boolean, param5:Boolean) : String
      {
         var _loc6_:int = this.o8711.value;
         var _loc7_:String = o19337(_loc6_,param2);
         _loc7_ = o14712(_loc7_,param3,param4,param5);
         if(param4 && _loc7_.length > 0)
         {
            _loc7_ = _loc7_ + o10498();
         }
         return _loc7_;
      }
      
      public function o6675(param1:o14096) : o3743
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1.o17656;
         for each(var _loc2_ in param1.o17656)
         {
            if(_loc2_ != null && _loc2_.o4589 == this)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o3395(param1:o1253) : o3743
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1.o17656;
         for each(var _loc2_ in param1.o17656)
         {
            if(_loc2_ != null && _loc2_.o4589 == this)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function o1441(param1:Number, param2:Number, param3:o14096) : Number
      {
         var _loc4_:int = 0;
         var _loc8_:* = null;
         var _loc7_:int = 0;
         var _loc6_:Number = NaN;
         var _loc5_:Number = param1 * param2;
         if(this.o18172 == 8)
         {
            if(param1 < 5)
            {
               return 0;
            }
            _loc4_ = Math.round(param1 * param2 - param1);
            _loc8_ = param3.o13234(8);
            _loc7_ = _loc8_ == null?1:_loc8_.grade;
            if(_loc4_ < _loc7_)
            {
               return _loc7_;
            }
            return _loc4_;
         }
         if(this.o8711.value == 3)
         {
            return param2 - 1;
         }
         if(this.o8711.value == 11)
         {
            return param2 - 1;
         }
         if(this.o8711.value == 5)
         {
            return param2;
         }
         if(this.o8711.value == 10)
         {
            _loc6_ = param1 * (1 - param2);
            return -_loc6_;
         }
         if(this.o8711.value == 6)
         {
            return param1 * param2;
         }
         return param1 * param2 - param1;
      }
      
      public function o14880(param1:o14096, param2:o4117) : Number
      {
         var _loc5_:Number = NaN;
         var _loc3_:* = null;
         var _loc7_:int = this.o8711.value;
         var _loc8_:o3743 = o6675(param1);
         var _loc6_:Number = o8447(param1);
         if(param2 != null)
         {
            _loc5_ = o14860(param1,param2);
            _loc6_ = _loc6_ + _loc5_;
         }
         if(_loc8_ == null)
         {
            return 0;
         }
         _loc3_ = this.o4036[_loc8_.grade - 1];
         var _loc4_:Number = _loc3_.o18619;
         _loc4_ = o8728(_loc4_);
         return o1441(_loc6_,_loc4_,param1);
      }
      
      private function o4387(param1:o14096, param2:o6993, param3:int) : Number
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc7_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            if(_loc4_ < param2.o9938.length)
            {
               _loc6_ = param2.o9938[_loc4_];
               var _loc9_:int = 0;
               var _loc8_:* = _loc6_.o8855;
               for each(_loc5_ in _loc6_.o8855)
               {
                  _loc7_ = Number(_loc7_ + _loc5_.o14880(o18172,param1,this.o8447(param1)));
               }
            }
            _loc4_++;
         }
         return _loc7_;
      }
      
      private function o20578(param1:o1253, param2:o6993, param3:int) : Number
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:* = 0;
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            if(_loc4_ < param2.o9938.length)
            {
               _loc6_ = param2.o9938[_loc4_];
               if(param2.o2409 == 4)
               {
                  var _loc10_:int = 0;
                  var _loc9_:* = _loc6_.o8855;
                  for each(_loc5_ in _loc6_.o8855)
                  {
                     _loc7_ = _loc5_.o10468(o18172,param1,this.o4323(param1));
                     _loc8_ = Number(_loc8_ + _loc7_);
                  }
               }
            }
            _loc4_++;
         }
         return _loc8_;
      }
      
      public function o15613(param1:int, param2:int) : int
      {
         var _loc3_:o4609 = o4519.o8116.profileData.o5292.o20827;
         return _loc3_.o320(param2);
      }
      
      public function o20257(param1:o14096, param2:o6993, param3:int) : Number
      {
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = this.o8711.value;
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc9_:* = 0;
         var _loc8_:o4609 = _loc4_.o5292.o20827;
         if(param3 > 0)
         {
            if(param2.o2409 != 0 || _loc8_.o15484(param1.o2752.o6365) == param2)
            {
               if(param2.id == 13)
               {
                  param2 = param2;
               }
               _loc9_ = Number(_loc9_ + o4387(param1,param2,param3));
            }
         }
         return _loc9_;
      }
      
      public function o7670(param1:o1253, param2:o6993, param3:int) : Number
      {
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = this.o8711.value;
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc9_:* = 0;
         var _loc8_:o4609 = _loc4_.o5292.o20827;
         if(param3 > 0)
         {
            if(param1.o8395 == 3)
            {
               param1 = param1;
            }
            if(param2.o2409 != 0 && (param2.o2409 != 4 || _loc8_.o9445(param1.o8395) == param2))
            {
               _loc9_ = Number(_loc9_ + o20578(param1,param2,param3));
            }
         }
         return _loc9_;
      }
      
      public function o17248(param1:o14096) : Number
      {
         var _loc2_:* = null;
         var _loc5_:int = this.o8711.value;
         var _loc6_:o3743 = o6675(param1);
         var _loc4_:Number = o8447(param1);
         if(_loc6_ == null)
         {
            _loc2_ = this.o4036[0];
         }
         else
         {
            if(_loc6_.grade >= this.o4036.length)
            {
               return 0;
            }
            _loc2_ = this.o4036[_loc6_.grade];
         }
         var _loc3_:Number = _loc2_.o18619;
         _loc3_ = o8728(_loc3_);
         return o1441(_loc4_,_loc3_,param1);
      }
      
      public function o9741(param1:o14096) : String
      {
         return o9277(param1,o17248(param1),true,true,true);
      }
      
      public function o5058(param1:o1253) : Number
      {
         var _loc2_:* = null;
         var _loc4_:int = this.o8711.value;
         var _loc5_:o12420 = param1.o10239;
         var _loc3_:* = 0;
         if(_loc5_ is o7126)
         {
            _loc2_ = _loc5_ as o7126;
            _loc5_ = _loc2_.parent;
         }
         switch(int(_loc4_) - 10)
         {
            case 0:
               if(_loc5_.o10720 < 0)
               {
                  _loc3_ = Number(_loc5_.o10720);
               }
               else
               {
                  _loc3_ = 0;
               }
               break;
            default:
               if(_loc5_.o10720 < 0)
               {
                  _loc3_ = Number(_loc5_.o10720);
               }
               else
               {
                  _loc3_ = 0;
               }
               break;
            default:
               if(_loc5_.o10720 < 0)
               {
                  _loc3_ = Number(_loc5_.o10720);
               }
               else
               {
                  _loc3_ = 0;
               }
               break;
            case 3:
               _loc3_ = Number(_loc5_.o5822);
               break;
            case 4:
               _loc3_ = Number(_loc5_.o16041);
               break;
            case 5:
               _loc3_ = Number(_loc5_.o5317);
               break;
            case 6:
               _loc3_ = Number(_loc5_.energy);
               break;
            case 7:
               _loc3_ = Number(_loc5_.o11243);
               break;
            case 8:
               _loc3_ = Number(_loc5_.o1937);
               break;
            case 9:
               _loc3_ = Number(_loc5_.o8514);
               break;
            case 10:
               _loc3_ = Number(_loc5_.o331);
               break;
            case 11:
               _loc3_ = Number(_loc5_.o15818);
               break;
            case 12:
               if(_loc5_.o10720 > 0)
               {
                  _loc3_ = Number(_loc5_.o10720);
               }
               else
               {
                  _loc3_ = 0;
               }
               break;
            case 13:
               _loc3_ = Number(_loc5_.o19483);
               break;
            case 14:
               _loc3_ = Number(_loc5_.o5725);
               break;
            case 15:
               _loc3_ = Number(_loc5_.o20957);
         }
         return _loc3_;
      }
      
      public function o4323(param1:o1253) : Number
      {
         var _loc2_:* = null;
         var _loc4_:int = this.o8711.value;
         var _loc5_:o12420 = param1.o10239;
         var _loc3_:Number = o5058(param1);
         if(_loc5_ is o7126)
         {
            _loc2_ = _loc5_ as o7126;
            _loc5_ = _loc2_.parent;
         }
         var _loc6_:* = 1;
         if(o18172 == 13 || o18172 == 14 || o18172 == 15)
         {
            _loc6_ = Number(_loc6_ + param1.o13296);
         }
         if(o18172 == 25)
         {
         }
         return _loc3_ * _loc6_;
      }
      
      public function o9880(param1:o1253, param2:Boolean = false) : String
      {
         return o2520(param1,o5058(param1),false,true,param2 || o15953());
      }
      
      public function o9548(param1:Number) : String
      {
         var _loc2_:int = Math.round(param1 * 100);
         return (_loc2_ / 100).toString();
      }
      
      public function o13238(param1:o14096, param2:o4117, param3:Boolean = false) : String
      {
         var _loc4_:Number = o14880(param1,param2);
         return o9277(param1,_loc4_,true,param3,true);
      }
      
      public function o10247(param1:o14096, param2:o6993, param3:int) : String
      {
         var _loc4_:Number = o20257(param1,param2,param3);
         if(_loc4_ == 0)
         {
            return "";
         }
         return o9277(param1,_loc4_,true,true,false);
      }
      
      public function o13886(param1:o1253, param2:o6993, param3:int) : String
      {
         var _loc4_:Number = o7670(param1,param2,param3);
         if(_loc4_ == 0)
         {
            return "";
         }
         return o2520(param1,_loc4_,true,true,false);
      }
      
      public function o3061(param1:o14096, param2:int, param3:*) : Number
      {
         var _loc4_:Number = o8447(param1);
         var _loc6_:* = 0;
         var _loc5_:o1492 = o4519.o8116.profileData.o5292.o6055.o11241(param2);
         var _loc7_:* = o18172;
         switch(_loc7_)
         {
            case 1:
               if(param2 == 28)
               {
                  _loc6_ = Number(_loc4_ * _loc5_.o11827(param3));
               }
               break;
            case 9:
               if(param2 == 1)
               {
                  _loc6_ = Number(_loc4_ * -_loc5_.o11827(param3));
               }
               break;
            case 5:
               if(param2 == 12)
               {
                  _loc6_ = Number(_loc5_.o15057(param3));
               }
               break;
            case 17:
               if(param2 == 3)
               {
                  _loc6_ = Number(_loc5_.o11827(param3));
               }
               break;
            case 16:
               if(param2 == 8)
               {
                  _loc6_ = Number(_loc5_.o11827(param3));
               }
               break;
            case 18:
               if(param2 == 5)
               {
                  _loc6_ = Number(_loc5_.o11827(param3));
               }
               break;
            case 19:
               if(param2 == 9)
               {
                  _loc6_ = Number(_loc5_.o11827(param3));
               }
               break;
            case 20:
               if(param2 == 4)
               {
                  _loc6_ = Number(_loc4_ * _loc5_.o11827(param3));
               }
               break;
            case 22:
               if(param2 == 2)
               {
                  _loc6_ = Number(_loc5_.o11827(param3));
               }
         }
         return _loc6_;
      }
      
      public function o10317(param1:o1253, param2:int, param3:*, param4:o4117) : Number
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = o4323(param1);
         var _loc8_:* = 0;
         var _loc7_:o1492 = o4519.o8116.profileData.o5292.o6055.o11241(param2);
         if(o4802())
         {
            _loc6_ = o9229(param1,param4);
            _loc5_ = _loc5_ + _loc6_;
         }
         switch(int(o18172) - 10)
         {
            case 0:
               if(param2 == 21)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
                  break;
               }
               break;
            default:
               if(param2 == 21)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
                  break;
               }
               break;
            default:
               if(param2 == 21)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
                  break;
               }
               break;
            case 3:
               if(param2 == 7)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
               }
               break;
            case 4:
               if(param2 == 7)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
               }
               break;
            case 5:
               if(param2 == 7)
               {
                  _loc8_ = Number(_loc5_ * _loc7_.o11827(param3));
               }
         }
         if(_loc8_ > -0.001 && _loc8_ < 0.001)
         {
            _loc8_ = 0;
         }
         return _loc8_;
      }
      
      public function o1229(param1:o1253, param2:int, param3:*) : Number
      {
         var _loc5_:* = 0;
         var _loc4_:o1492 = o4519.o8116.profileData.o5292.o6055.o11241(param2);
         switch(int(o18172) - 16)
         {
            case 0:
               if(param2 == 8)
               {
                  _loc5_ = Number(_loc4_.o11827(param3));
                  break;
               }
               break;
            case 1:
               if(param2 == 3)
               {
                  _loc5_ = Number(_loc4_.o11827(param3));
               }
         }
         if(_loc5_ > -0.001 && _loc5_ < 0.001)
         {
            _loc5_ = 0;
         }
         return _loc5_;
      }
      
      public function o19499(param1:o14096, param2:int, param3:int) : String
      {
         if(param3 == 0)
         {
            return "";
         }
         var _loc4_:Number = o3061(param1,param2,param3);
         return o9277(param1,_loc4_,true,true,false);
      }
      
      public function o5474(param1:o1253, param2:int, param3:int, param4:o4117) : String
      {
         if(param3 == 0)
         {
            return "";
         }
         var _loc5_:Number = o10317(param1,param2,param3,null);
         return o2520(param1,_loc5_,true,true,false);
      }
      
      public function o10534(param1:o14096, param2:o4117, param3:Boolean = true) : String
      {
         var _loc4_:Number = o9166(param1,param2);
         return o13434(param1,_loc4_,false,true,param3);
      }
      
      public function o9166(param1:o14096, param2:o4117) : Number
      {
         var _loc6_:* = null;
         var _loc9_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc8_:Number = param2.o20595(o18172) + this.o10358(param1);
         _loc8_ = _loc8_ + this.o16517(param1,param2);
         var _loc7_:* = int(this.o8711.value);
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc12_:int = 0;
         var _loc11_:* = param2.o2657;
         for each(var _loc5_ in param2.o2657)
         {
            if(_loc5_ != null)
            {
               _loc8_ = _loc8_ + this.o4323(_loc5_);
               if(_loc7_ == 17 || _loc7_ == 16)
               {
                  _loc7_ = _loc7_;
               }
               _loc9_ = o9229(_loc5_,param2);
               _loc4_ = o9394(_loc5_,param2);
               _loc10_ = _loc9_ + _loc4_;
               _loc8_ = _loc8_ + _loc10_;
            }
         }
         return _loc8_;
      }
      
      private function o14860(param1:o14096, param2:o4117) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:* = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param2.o2671;
         for(var _loc3_ in param2.o2671)
         {
            _loc5_ = param2.o2671[_loc3_];
            if(_loc5_ > 0)
            {
               _loc4_ = Number(_loc4_ + o3061(param1,_loc3_,_loc5_));
            }
         }
         return _loc4_;
      }
      
      public function o16517(param1:o14096, param2:o4117) : Number
      {
         var _loc8_:* = null;
         var _loc5_:Boolean = false;
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc12_:Number = o14880(param1,param2);
         var _loc10_:* = 0;
         if(o18172 == 10)
         {
            _loc8_ = _loc8_;
         }
         var _loc4_:Number = o7905(param1);
         var _loc9_:Boolean = o18172 == 10 || o18172 == 22;
         var _loc14_:int = 0;
         var _loc13_:* = _loc3_.o5292.o20827.o20687;
         for each(_loc8_ in _loc3_.o5292.o20827.o20687)
         {
            _loc5_ = true;
            if(_loc8_.o2409 == 4)
            {
            }
            if(_loc5_)
            {
               _loc10_ = Number(_loc10_ + o20257(param1,_loc8_,param2.o16992[_loc8_.id]));
            }
         }
         var _loc11_:Number = o19462(param2.o2657,param1,param2);
         var _loc7_:Number = o14860(param1,param2);
         var _loc6_:Number = _loc4_ + _loc12_ + _loc10_ + _loc11_ + _loc7_;
         return _loc6_;
      }
      
      public function o8129(param1:o14096, param2:o4117) : String
      {
         var _loc3_:Number = o16517(param1,param2);
         if(_loc3_ == 0)
         {
            return "";
         }
         return o9277(param1,_loc3_,true,true,false);
      }
      
      public function o19994(param1:o14096) : int
      {
         var _loc2_:o3743 = o6675(param1);
         if(_loc2_ == null)
         {
            return 0;
         }
         return _loc2_.grade;
      }
      
      private function o8728(param1:Number) : Number
      {
         return param1;
      }
      
      private function o10987(param1:Number) : Number
      {
         return param1;
      }
      
      private function o14568(param1:Number, param2:Number, param3:o1253, param4:int) : Number
      {
         var _loc5_:Number = NaN;
         if(o8711.value == 13 || o8711.value == 14 || o8711.value == 15)
         {
            _loc5_ = o10939(param3.o10239.o20559,param4);
            return param1 * param2 + _loc5_ - param1;
         }
         if(this.o8711.value == 22)
         {
            return param2;
         }
         if(o8711.value == 16 || o8711.value == 17)
         {
            return param2 - 1;
         }
         if(o8711.value == 25)
         {
            return param2;
         }
         return param2;
      }
      
      public function o16536(param1:o1253, param2:o4117) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:* = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param2.o2671;
         for(var _loc3_ in param2.o2671)
         {
            _loc5_ = param2.o2671[_loc3_];
            if(_loc5_ > 0)
            {
               _loc4_ = Number(_loc4_ + o1229(param1,_loc3_,_loc5_));
            }
         }
         return _loc4_;
      }
      
      public function o4802() : Boolean
      {
         return o18172 != 17 && o18172 != 16;
      }
      
      public function o9229(param1:o1253, param2:o4117) : Number
      {
         var _loc4_:* = null;
         var _loc6_:* = NaN;
         var _loc8_:int = this.o8711.value;
         var _loc9_:o3743 = o3395(param1);
         var _loc7_:Number = o4323(param1);
         if(param2 != null && o4802() == false)
         {
            _loc6_ = 0;
            if(_loc8_ == 17)
            {
               _loc6_ = Number(_loc6_ + param2.o6545);
               _loc6_ = Number(_loc6_ + o16536(param1,param2));
            }
            else if(_loc8_ == 16)
            {
               _loc6_ = Number(_loc6_ + param2.o9420);
               _loc6_ = Number(_loc6_ + o16536(param1,param2));
            }
            else
            {
               _loc6_ = Number(o9394(param1,param2));
            }
            _loc7_ = _loc7_ + _loc6_;
         }
         if(_loc9_ == null)
         {
            return 0;
         }
         _loc4_ = this.o4036[_loc9_.grade - 1];
         var _loc5_:Number = _loc4_.o18619;
         _loc5_ = o10987(_loc5_);
         if(o18172 == 25)
         {
            o18172 = o18172;
         }
         var _loc3_:* = 0;
         if(param2 != null && o4802() == false && (o8711.value == 16 || o8711.value == 17))
         {
            _loc3_ = Number(_loc7_ * (_loc5_ - 1));
         }
         else
         {
            _loc3_ = Number(o14568(_loc7_,_loc5_,param1,_loc4_.grade));
         }
         return _loc3_;
      }
      
      public function o9536(param1:o1253) : Number
      {
         var _loc2_:* = null;
         var _loc5_:int = this.o8711.value;
         var _loc6_:o3743 = o3395(param1);
         var _loc4_:Number = o4323(param1);
         if(_loc6_ == null)
         {
            _loc2_ = this.o4036[0];
         }
         else
         {
            if(_loc6_.grade >= this.o4036.length)
            {
               return 0;
            }
            _loc2_ = this.o4036[_loc6_.grade];
         }
         var _loc3_:Number = _loc2_.o18619;
         _loc3_ = o10987(_loc3_);
         return o14568(_loc4_,_loc3_,param1,_loc2_.grade);
      }
      
      public function o3577(param1:o1253, param2:Boolean = false) : String
      {
         var _loc4_:Number = o9229(param1,null);
         var _loc3_:String = o10576(param1,_loc4_,true,param2,true);
         return _loc3_;
      }
      
      public function o19664(param1:o1253, param2:o4117, param3:Boolean = false) : String
      {
         var _loc5_:Number = o9229(param1,param2);
         var _loc4_:String = o2520(param1,_loc5_,true,param3,true);
         return _loc4_;
      }
      
      public function o9394(param1:o1253, param2:o4117) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:* = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param2.o2671;
         for(var _loc3_ in param2.o2671)
         {
            _loc5_ = param2.o2671[_loc3_];
            if(_loc5_ > 0)
            {
               _loc4_ = Number(_loc4_ + o10317(param1,_loc3_,_loc5_,param2));
            }
         }
         return _loc4_;
      }
      
      public function o18548(param1:o1253, param2:o4117) : Number
      {
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc9_:Number = o9229(param1,param2);
         var _loc8_:* = 0;
         var _loc4_:Number = o18026(param1);
         var _loc11_:int = 0;
         var _loc10_:* = _loc3_.o5292.o20827.o20687;
         for each(var _loc7_ in _loc3_.o5292.o20827.o20687)
         {
            _loc8_ = Number(_loc8_ + o7670(param1,_loc7_,param2.o16992[_loc7_.id]));
         }
         var _loc6_:Number = o9394(param1,param2);
         var _loc5_:Number = _loc4_ + _loc9_ + _loc8_ + _loc6_;
         return _loc5_;
      }
      
      public function o91(param1:o1253, param2:o4117) : String
      {
         var _loc3_:Number = o18548(param1,param2);
         if(_loc3_ == 0)
         {
            return "";
         }
         return o2520(param1,_loc3_,true,true,false);
      }
      
      public function o4186(param1:o1253) : int
      {
         var _loc2_:o3743 = o3395(param1);
         if(_loc2_ == null)
         {
            return 0;
         }
         return _loc2_.grade;
      }
      
      public function o9891(param1:o1253) : String
      {
         var _loc2_:String = o10576(param1,o9536(param1),true,true,true);
         return _loc2_;
      }
      
      public function o10557(param1:o8925) : Number
      {
         switch(int(o18172) - 1)
         {
            case 0:
               return param1.o5725;
            case 1:
               return param1.o18640;
            case 2:
               return param1.o1775;
            case 3:
               return param1.o30;
            case 4:
               return param1.o19483;
            case 5:
               return param1.o19455;
            case 6:
               return param1.o4687;
            case 7:
               return param1.o3603;
            case 8:
               return param1.o16832;
            case 9:
               return param1.o13369;
            case 10:
               return param1.o13974;
         }
      }
      
      public function o3837(param1:o12420) : Number
      {
         switch(int(o18172) - 13)
         {
            case 0:
               return param1.o5822;
            case 1:
               return param1.o16041;
            case 2:
               return param1.o5317;
            case 3:
               return param1.energy;
            case 4:
               return param1.o11243;
            case 5:
               return param1.o1937;
            case 6:
               return param1.o8514;
            case 7:
               return param1.o331;
            case 8:
               return param1.o15818;
            case 9:
               return param1.o10720;
            case 10:
               return param1.o19483;
            case 11:
               return param1.o5725;
            case 12:
               return param1.o20957;
         }
      }
   }
}
