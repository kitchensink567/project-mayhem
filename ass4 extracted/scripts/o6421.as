package
{
   import flash.utils.Dictionary;
   
   public class o6421
   {
       
      
      private var o11453:o125;
      
      public function o6421()
      {
         super();
      }
      
      private function o519(param1:Number, param2:o20074) : Number
      {
         var _loc3_:* = 0;
         var _loc4_:* = param2.o16146;
         switch(_loc4_)
         {
            case 12:
               if(o11453.o7246 == 1)
               {
                  return param1 * (param2.apply(1) - 1);
               }
               return 0;
            case 13:
               if(o11453.o7246 == 5)
               {
                  _loc3_ = Number(param2.o18177);
                  return _loc3_;
               }
               return 0;
            case 1:
               if(o11453.o7246 == 9)
               {
                  _loc3_ = Number(-param1 * param2.o18177);
                  return _loc3_;
               }
               return 0;
            case 39:
               if(o11453.o7246 == 6)
               {
                  _loc3_ = Number(param1 * param2.o18177);
                  return _loc3_;
               }
               return 0;
            case 2:
               if(o11453.o7246 == 22)
               {
                  _loc3_ = Number(param2.o18177 - 1);
                  return _loc3_;
               }
               return 0;
            case 23:
               if(o11453.o7246 == 10)
               {
                  _loc3_ = Number(param1 * -param2.o18177);
                  return _loc3_;
               }
               return 0;
            case 4:
               if(o11453.o7246 == 20)
               {
                  _loc3_ = Number(param2.o18177);
                  return _loc3_;
               }
               return 0;
            case 43:
               if(o11453.o7246 == 14)
               {
                  _loc3_ = Number(param2.apply(0));
                  return _loc3_;
               }
               return 0;
            case 41:
               if(o11453.o7246 == 15)
               {
                  _loc3_ = Number(param2.apply(0));
                  return _loc3_;
               }
               return 0;
            default:
               return 0;
         }
      }
      
      private function o13716(param1:int, param2:Number, param3:Dictionary) : void
      {
         var _loc9_:* = null;
         var _loc6_:* = null;
         var _loc8_:int = 0;
         var _loc5_:Vector.<o20074> = new Vector.<o20074>();
         var _loc11_:* = 0;
         var _loc7_:* = 0;
         var _loc10_:o14094 = o14200.o19505.o5292.o6055;
         var _loc15_:int = 0;
         var _loc14_:* = param3;
         for(var _loc4_ in param3)
         {
            _loc8_ = param3[_loc4_];
            if(_loc8_ > 0)
            {
               _loc6_ = _loc10_.o11241(_loc4_);
               if(_loc6_.o1267 != false)
               {
                  if(_loc6_.o10374 != 25)
                  {
                     _loc5_ = _loc6_.o5395(_loc8_);
                     var _loc13_:int = 0;
                     var _loc12_:* = _loc5_;
                     for each(_loc9_ in _loc5_)
                     {
                        if(!(_loc9_.o16146 == 12 && _loc6_.o10374 != 28))
                        {
                           _loc11_ = Number(o519(param2,_loc9_));
                           o11453.o7607.push(_loc11_);
                           o11453.o20004.push(_loc6_.name);
                           _loc7_ = Number(_loc7_ + _loc11_);
                        }
                     }
                     continue;
                  }
                  continue;
               }
               continue;
            }
         }
         o11453.o12744 = _loc7_;
      }
      
      public function o4170(param1:o14096) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:o3743 = param1.o13234(o11453.o7246);
         var _loc2_:Number = _loc4_ == null?0:_loc4_.o4589.o4036[_loc4_.grade - 1].o18619;
         var _loc5_:* = o11453.o7246;
         switch(_loc5_)
         {
            case 1:
               o11453.o8872 = param1.o2752.o5725;
               break;
            case 2:
               o11453.o8872 = param1.o2752.o18640;
               break;
            case 5:
               o11453.o8872 = param1.o2752.o19483;
               break;
            case 8:
               o11453.o8872 = param1.o2752.o3603;
               break;
            case 4:
               o11453.o8872 = param1.o2752.o30;
               break;
            case 3:
               o11453.o8872 = param1.o2752.o1775;
               break;
            case 11:
               o11453.o8872 = param1.o2752.o13974;
               break;
            case 7:
               o11453.o8872 = param1.o2752.o4687;
               break;
            case 6:
               o11453.o8872 = 1 / param1.o2752.o19455;
               break;
            case 22:
               o11453.o8872 = 0;
               break;
            case 10:
               o11453.o8872 = 1 - param1.o2752.o13369;
               break;
            case 9:
               o11453.o8872 = param1.o2752.o16832;
         }
         if(o11453.o7246 == 7)
         {
            o11453 = o11453;
         }
         _loc5_ = o11453.o7246;
         switch(_loc5_)
         {
            case 2:
               o11453.o5502 = o11453.o8872 * param1.o13296;
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 1:
               o11453.o5502 = o11453.o8872 * param1.o13296;
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 7:
               _loc3_ = param1.o2752.o10273 == 0?0:o11453.o8872 / param1.o2752.o10273;
               o11453.o5502 = _loc3_ * param1.o13296;
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 4:
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 8:
               o11453.o5502 = o11453.o8872 * param1.o13296;
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 22:
               o11453.o5502 = 0;
               if(_loc4_ != null)
               {
                  o11453.o3353 = 0;
               }
               break;
            case 10:
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 6:
               o11453.o5502 = o11453.o8872 * param1.o13296;
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * _loc2_;
               }
               break;
            case 9:
               if(_loc4_ != null)
               {
                  o11453.o3353 = (o11453.o8872 + o11453.o5502) * (_loc2_ - 1);
               }
               break;
            case 5:
               if(_loc4_ != null)
               {
                  o11453.o3353 = _loc2_;
               }
               break;
            case 11:
               if(_loc4_ != null)
               {
                  if(_loc4_ != null)
                  {
                     o11453.o3353 = (_loc2_ - 1) * 100;
                  }
               }
               else
               {
                  o11453.o5502 = 0;
                  o11453.o3353 = 0;
               }
               break;
            case 3:
               if(_loc4_ != null)
               {
                  if(_loc4_ != null)
                  {
                     o11453.o3353 = _loc2_ - 1;
                  }
               }
               else
               {
                  o11453.o5502 = 0;
                  o11453.o3353 = 0;
               }
         }
      }
      
      public function o4212(param1:o4117) : void
      {
         var _loc2_:Number = o11453.o1938();
         var _loc3_:* = o11453.o7246;
         switch(_loc3_)
         {
            case 1:
               o13716(12,_loc2_,param1.o2671);
               break;
            case 2:
               break;
            case 5:
               o13716(13,_loc2_,param1.o2671);
               break;
            case 9:
               o13716(1,_loc2_,param1.o2671);
               break;
            case 22:
               o13716(2,_loc2_,param1.o2671);
               break;
            case 10:
               o13716(23,_loc2_,param1.o2671);
               break;
            case 20:
               o13716(4,_loc2_,param1.o2671);
         }
      }
      
      private function o4387(param1:o14096, param2:o6993, param3:int) : Number
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc8_:* = 0;
         var _loc7_:Number = o11453.o1938();
         _loc4_ = 0;
         while(_loc4_ < param3)
         {
            if(_loc4_ < param2.o9938.length)
            {
               _loc6_ = param2.o9938[_loc4_];
               var _loc10_:int = 0;
               var _loc9_:* = _loc6_.o8855;
               for each(_loc5_ in _loc6_.o8855)
               {
                  if(_loc5_.id == 1)
                  {
                     _loc8_ = _loc8_;
                  }
                  if(_loc5_.id == 13)
                  {
                     _loc8_ = Number(_loc8_ + _loc5_.o14880(o11453.o7246,param1,_loc7_));
                  }
                  else
                  {
                     _loc8_ = Number(_loc8_ + _loc5_.o14880(o11453.o7246,param1,_loc7_));
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
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc4_:o14200 = o4519.o8116.profileData;
         var _loc8_:* = 0;
         var _loc7_:o4609 = _loc4_.o5292.o20827;
         if(param3 > 0)
         {
            if(param2.o2409 == 0 && _loc7_.o15484(param1.o2752.o6365) == param2)
            {
               _loc8_ = Number(_loc8_ + o4387(param1,param2,param3));
            }
            else if(param2.o2409 == 6)
            {
               if(_loc7_.o14852(param1.o2752.o6365,1) == param2 || _loc7_.o14852(param1.o2752.o6365,2) == param2 || _loc7_.o14852(param1.o2752.o6365,3) == param2)
               {
                  _loc8_ = Number(_loc8_ + o4387(param1,param2,param3));
               }
            }
         }
         return _loc8_;
      }
      
      public function o13394(param1:o4117, param2:o14096) : void
      {
         var _loc5_:* = null;
         var _loc3_:o14200 = o14200.o19505;
         var _loc7_:* = 0;
         var _loc6_:* = 0;
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:* = _loc3_.o5292.o20827.o20687;
         for each(_loc5_ in _loc3_.o5292.o20827.o20687)
         {
            if(_loc5_.id == 29)
            {
               _loc5_ = _loc5_;
               _loc4_++;
            }
            _loc7_ = Number(o20257(param2,_loc5_,param1.o16992[_loc5_.id]));
            if(o11453.o4585(_loc7_) == false)
            {
               o11453.o4572.push(_loc7_);
               if(_loc5_.o2409 == 6)
               {
                  o11453.o19932.push(_loc5_.name + " Collection");
               }
               else
               {
                  o11453.o19932.push(_loc5_.name + " Mastery");
               }
               _loc6_ = Number(_loc6_ + _loc7_);
            }
         }
         o11453.o12852 = _loc6_;
      }
      
      public function o12125(param1:o4117, param2:int, param3:o14096) : o125
      {
         var _loc9_:Number = NaN;
         var _loc11_:* = null;
         var _loc15_:* = 0;
         var _loc12_:* = null;
         var _loc18_:* = null;
         var _loc17_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc21_:* = null;
         var _loc13_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc5_:Number = NaN;
         o11453 = new o125();
         o11453.o7246 = param2;
         o11453.o3492 = param3;
         o4170(param3);
         if(param2 == 10)
         {
            param2 = param2;
         }
         if(param2 == 9)
         {
            o4212(param1);
            o13394(param1,param3);
         }
         else
         {
            o4212(param1);
            o13394(param1,param3);
         }
         if(param2 == 6)
         {
         }
         var _loc22_:Number = o11453.o1938();
         var _loc6_:int = -1;
         var _loc24_:* = param2;
         switch(_loc24_)
         {
            case 1:
               _loc6_ = 24;
               break;
            case 5:
               _loc6_ = 23;
               break;
            case 9:
               _loc6_ = 25;
               break;
            case 22:
               _loc6_ = 22;
         }
         var _loc4_:Number = o11453.o12744 / _loc22_;
         var _loc14_:Number = 1 + _loc4_;
         var _loc19_:Number = _loc22_ * _loc14_;
         var _loc10_:Number = o11453.o9166();
         _loc15_ = 0;
         while(_loc15_ < 5)
         {
            _loc12_ = new o6747();
            _loc18_ = param1.o2657[_loc15_];
            if(_loc18_ == null)
            {
               _loc18_ = new o1253();
               _loc18_.o10239 = new o14809();
               _loc18_.o10239.o20559 = _loc15_;
            }
            _loc11_ = _loc12_.o20552(_loc15_,param1,_loc6_,_loc18_,o11453);
            o11453.o7158.push(_loc11_);
            if(_loc11_ != null)
            {
               _loc24_ = param2;
               switch(_loc24_)
               {
                  case 20:
                     _loc9_ = _loc11_.o9166();
                     _loc11_.o17193 = _loc11_.o17193 + _loc9_;
                     o11453.o13930 = o11453.o13930 + _loc11_.o17193;
                     break;
                  case 1:
                     _loc9_ = _loc11_.o9166();
                     _loc11_.o17193 = _loc11_.o17193 + _loc22_ * _loc9_;
                     o11453.o13930 = o11453.o13930 + _loc11_.o17193;
                     break;
                  case 5:
                     _loc9_ = _loc11_.o9166();
                     _loc11_.o17193 = _loc11_.o17193 + _loc9_;
                     o11453.o13930 = o11453.o13930 + _loc11_.o17193;
                     break;
                  case 22:
                     if(_loc15_ == 1)
                     {
                        _loc15_ = _loc15_;
                     }
                     _loc11_.o3353 = _loc11_.o3353 * (1 + o11453.o12744);
                     if(_loc11_.o8872 > 0)
                     {
                     }
                     _loc17_ = _loc11_.o1938();
                     _loc9_ = _loc11_.o9166();
                     _loc8_ = _loc9_;
                     _loc11_.o17193 = _loc11_.o17193 + _loc8_;
                     o11453.o13930 = o11453.o13930 + _loc11_.o17193;
                     break;
                  case 10:
                     if(_loc15_ == 3)
                     {
                        _loc15_ = _loc15_;
                     }
                     _loc21_ = _loc12_.o20552(_loc18_.o10239.o20559,param1,10,_loc18_,o11453);
                     _loc13_ = _loc21_.o9166();
                     _loc11_.o17193 = _loc11_.o17193 + _loc13_;
                     o11453.o13930 = o11453.o13930 + _loc11_.o17193;
                     break;
                  case 9:
                     if(_loc15_ == 4)
                     {
                        _loc15_ = _loc15_;
                     }
                     _loc9_ = _loc11_.o9166();
                     _loc23_ = _loc19_ * _loc9_;
                     _loc19_ = _loc19_ + _loc23_;
                     _loc11_.o17193 = _loc23_;
                     o11453.o13930 = o11453.o13930 + _loc23_;
               }
            }
            _loc15_++;
         }
         var _loc20_:Number = o11453.o5250();
         var _loc7_:Number = o11453.o18562();
         var _loc16_:* = 0;
         if(Math.abs(_loc7_) > 0.001)
         {
            _loc5_ = o11453.o1938();
            _loc16_ = Number(_loc5_ * _loc7_);
            o11453.o4572.push(_loc16_);
            o11453.o19932.push("Equipment");
            o11453.o12852 = o11453.o12852 + _loc16_;
         }
         return o11453;
      }
      
      public function o97(param1:int, param2:o4117, param3:o14096) : Number
      {
         var _loc5_:o6421 = new o6421();
         var _loc7_:o125 = _loc5_.o12125(param2,22,param3);
         var _loc6_:o125 = _loc5_.o12125(param2,param1,param3);
         var _loc4_:Number = _loc6_.o9166();
         switch(int(param1) - 6)
         {
            case 0:
               _loc4_ = 1 / _loc4_;
               break;
            case 1:
               _loc4_ = _loc4_ * o4519.o32.o3817;
               break;
            case 2:
               _loc4_ = Math.floor(_loc4_);
               break;
            default:
               _loc4_ = Math.floor(_loc4_);
               break;
            case 4:
               _loc4_ = _loc5_.o14472(param2,param3);
         }
         return _loc4_;
      }
      
      public function o18951(param1:int, param2:o4117, param3:o14096) : Number
      {
         var _loc4_:Number = o5076(param1,param2,param3);
         var _loc5_:Number = o97(param1,param2,param3);
         _loc4_ = _loc4_ + _loc5_;
         switch(int(param1) - 14)
         {
            case 0:
               return _loc4_ + param2.o2169;
            case 1:
               return _loc4_ + param2.o4906;
            case 2:
               return _loc4_ + param2.o9420 + param2.o8036;
            case 3:
               return _loc4_ + param2.o6545 + param2.o5435;
            case 4:
               return _loc4_ + param2.o18541;
            case 5:
               return _loc4_ + param2.o9668 + 1;
            case 6:
               return 30 / (1 + _loc4_);
         }
      }
      
      private function o5076(param1:int, param2:o4117, param3:o14096) : Number
      {
         var _loc8_:* = null;
         var _loc7_:int = 0;
         var _loc10_:* = null;
         var _loc9_:* = null;
         var _loc4_:Number = NaN;
         var _loc6_:* = 0;
         var _loc11_:o125 = this.o12125(param2,param1,param3);
         var _loc5_:o6747 = new o6747();
         _loc7_ = 0;
         while(_loc7_ < 5)
         {
            _loc10_ = param2.o2657[_loc7_];
            if(_loc10_ == null)
            {
               _loc8_ = new o1253();
               _loc8_.o10239 = new o14809();
               _loc8_.o10239.o20559 = _loc7_;
            }
            else
            {
               _loc8_ = _loc10_;
            }
            _loc9_ = _loc5_.o20552(_loc8_.o10239.o20559,param2,param1,_loc8_);
            _loc4_ = _loc9_.o9166();
            _loc6_ = Number(_loc6_ + _loc4_);
            _loc7_++;
         }
         return _loc6_;
      }
      
      public function o14472(param1:o4117, param2:o14096) : Number
      {
         var _loc5_:o125 = this.o12125(param1,10,param2);
         var _loc9_:o125 = this.o12125(param1,22,param2);
         var _loc14_:Number = -_loc5_.o12852;
         var _loc6_:Number = -_loc5_.o12744;
         var _loc16_:Number = _loc5_.o12744;
         var _loc8_:Number = _loc9_.o12744;
         var _loc13_:Number = 1 + _loc8_;
         var _loc11_:Number = -_loc5_.o8872;
         var _loc4_:Number = -_loc5_.o3353;
         var _loc10_:Number = _loc9_.o13930;
         var _loc7_:Number = _loc9_.o12852;
         var _loc3_:Number = _loc9_.o8872;
         var _loc15_:Number = -_loc5_.o13930;
         var _loc12_:Number = _loc8_ + _loc6_ + _loc11_ + _loc4_ + _loc10_ + _loc7_ + _loc14_ + _loc15_;
         return _loc12_;
      }
      
      public function o11279(param1:o4117, param2:o14096) : Vector.<Number>
      {
         var _loc5_:o125 = this.o12125(param1,10,param2);
         var _loc8_:o125 = this.o12125(param1,22,param2);
         var _loc16_:Number = -_loc5_.o12852;
         var _loc6_:Number = -_loc5_.o12744;
         var _loc18_:Number = _loc5_.o12744;
         var _loc10_:Number = _loc8_.o12744;
         var _loc13_:Number = 1 + _loc10_;
         var _loc12_:Number = -_loc5_.o8872;
         var _loc4_:Number = -_loc5_.o3353;
         var _loc11_:Number = _loc8_.o13930;
         var _loc7_:Number = _loc8_.o12852;
         var _loc3_:Number = _loc8_.o8872;
         var _loc17_:Number = -_loc5_.o13930;
         var _loc19_:Number = _loc12_ + _loc4_ + _loc16_;
         var _loc15_:Number = _loc11_ + _loc7_ + _loc17_;
         var _loc14_:Number = _loc10_ + _loc6_;
         var _loc9_:Vector.<Number> = new Vector.<Number>();
         _loc9_.push(_loc19_ + _loc15_ + _loc14_);
         _loc9_.push(_loc19_);
         _loc9_.push(_loc15_);
         _loc9_.push(_loc14_);
         return _loc9_;
      }
   }
}
