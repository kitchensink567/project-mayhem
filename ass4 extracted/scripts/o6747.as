package
{
   import flash.utils.Dictionary;
   
   public class o6747
   {
       
      
      private var o11453:o9213;
      
      public function o6747()
      {
         super();
      }
      
      public function o15712(param1:o4117, param2:o1253) : void
      {
         var _loc3_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc7_:o3743 = param2.o13234(o11453.o7246);
         var _loc4_:Number = _loc7_ == null?0:_loc7_.o4589.o4036[_loc7_.grade - 1].o18619;
         var _loc5_:o14809 = param2.o10239 as o14809;
         if(param2.o10239 is o7126)
         {
            _loc5_ = (param2.o10239 as o7126).parent as o14809;
         }
         switch(int(o11453.o7246) - 10)
         {
            case 0:
               if(_loc5_.o10720 < 0)
               {
                  o11453.o8872 = -_loc5_.o10720;
               }
               break;
            default:
               if(_loc5_.o10720 < 0)
               {
                  o11453.o8872 = -_loc5_.o10720;
               }
               break;
            default:
               if(_loc5_.o10720 < 0)
               {
                  o11453.o8872 = -_loc5_.o10720;
               }
               break;
            case 3:
               o11453.o8872 = _loc5_.o5822;
               o11453.o5502 = o11453.o8872 * param2.o13296;
               break;
            case 4:
               o11453.o8872 = _loc5_.o16041;
               o11453.o5502 = o11453.o8872 * param2.o13296;
               break;
            case 5:
               o11453.o8872 = _loc5_.o5317;
               o11453.o5502 = o11453.o8872 * param2.o13296;
               break;
            case 6:
               _loc8_ = param1.o9420 + param1.o8036;
               o11453.o8872 = _loc5_.energy * _loc8_;
               break;
            case 7:
               _loc3_ = param1.o6545 + param1.o5435;
               o11453.o8872 = _loc5_.o11243 * _loc3_;
               break;
            case 8:
               o11453.o8872 = _loc5_.o1937;
               break;
            case 9:
               o11453.o8872 = _loc5_.o8514;
               break;
            case 10:
               o11453.o8872 = _loc5_.o331;
               break;
            case 11:
               o11453.o8872 = _loc5_.o15818;
               break;
            case 12:
               if(_loc5_.o10720 > 0)
               {
                  o11453.o8872 = _loc5_.o10720;
               }
               break;
            case 13:
               o11453.o8872 = _loc5_.o19483;
               break;
            case 14:
               o11453.o8872 = _loc5_.o5725;
               break;
            case 15:
               o11453.o8872 = -_loc5_.o20957;
         }
         var _loc9_:Number = o11453.o8872 + o11453.o5502;
         switch(int(o11453.o7246) - 13)
         {
            case 0:
            case 1:
            case 2:
               if(_loc7_ != null)
               {
                  _loc6_ = _loc7_.grade;
                  _loc10_ = o4519.o8116.profileData.o5292.o4032[param2.o10239.o20559];
                  _loc10_ = _loc10_ * _loc6_;
                  o11453.o3353 = _loc9_ * _loc4_ + _loc10_ - _loc9_;
               }
               break;
            case 3:
               if(_loc7_ != null)
               {
                  o11453.o3353 = (_loc4_ - 1) * _loc8_;
               }
               break;
            case 4:
               if(_loc7_ != null)
               {
                  o11453.o3353 = (_loc4_ - 1) * _loc3_;
               }
               break;
            case 5:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 6:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 7:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
                  break;
               }
               break;
            case 8:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 9:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 10:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 11:
               if(_loc7_ != null)
               {
                  o11453.o3353 = _loc4_;
               }
               break;
            case 12:
               if(_loc7_ != null)
               {
                  o11453.o3353 = -_loc4_;
               }
         }
      }
      
      private function o519(param1:o4117, param2:Number, param3:o20074) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:* = 0;
         var _loc6_:* = param3.o16146;
         switch(_loc6_)
         {
            case 7:
               if(o11453.o7246 == 13 || o11453.o7246 == 15 || o11453.o7246 == 14)
               {
                  _loc5_ = param3.apply(1);
                  return param2 * (param3.apply(1) - 1);
               }
               return 0;
            case 8:
               if(o11453.o7246 == 16)
               {
                  _loc5_ = param3.apply(0);
                  param1.o8036 = _loc5_;
                  return 0;
               }
               return 0;
            case 3:
               if(o11453.o7246 == 17)
               {
                  _loc5_ = param3.apply(0);
                  param1.o5435 = _loc5_;
                  return 0;
               }
               return 0;
            case 5:
               if(o11453.o7246 == 18)
               {
                  _loc5_ = param3.apply(0);
                  param1.o18541 = _loc5_;
                  return 0;
               }
               return 0;
            case 9:
               if(o11453.o7246 == 19)
               {
                  _loc5_ = param3.apply(0);
                  param1.o9668 = _loc5_;
                  return 0;
               }
               return 0;
            case 23:
               if(o11453.o7246 == 10)
               {
                  _loc4_ = Number(param2 * -param3.o18177);
                  return _loc4_;
               }
               return 0;
            case 16:
               if(o11453.o7246 == 20)
               {
                  _loc4_ = Number(param2 * param3.o18177);
                  return _loc4_;
               }
               return 0;
            case 43:
               if(o11453.o7246 == 14)
               {
                  _loc5_ = param3.apply(0);
                  param1.o2169 = _loc5_;
                  return 0;
               }
               return 0;
            case 41:
               if(o11453.o7246 == 15)
               {
                  _loc5_ = param3.apply(0);
                  param1.o4906 = _loc5_;
                  return 0;
               }
               return 0;
            default:
               return 0;
         }
      }
      
      private function o13716(param1:o4117, param2:int, param3:Number, param4:Dictionary) : void
      {
         var _loc10_:* = null;
         var _loc7_:* = null;
         var _loc9_:int = 0;
         var _loc6_:Vector.<o20074> = new Vector.<o20074>();
         var _loc12_:* = 0;
         var _loc8_:* = 0;
         var _loc11_:o14094 = o14200.o19505.o5292.o6055;
         var _loc16_:int = 0;
         var _loc15_:* = param4;
         for(var _loc5_ in param4)
         {
            _loc9_ = param4[_loc5_];
            if(_loc9_ > 0)
            {
               _loc7_ = _loc11_.o11241(_loc5_);
               if(_loc7_.o1267 != false)
               {
                  _loc6_ = _loc7_.o5395(_loc9_);
                  var _loc14_:int = 0;
                  var _loc13_:* = _loc6_;
                  for each(_loc10_ in _loc6_)
                  {
                     _loc12_ = Number(o519(param1,param3,_loc10_));
                     o11453.o7607.push(_loc12_);
                     o11453.o20004.push(_loc7_.name);
                     _loc8_ = Number(_loc8_ + _loc12_);
                  }
                  continue;
               }
               continue;
            }
         }
         o11453.o12744 = _loc8_;
      }
      
      public function o3044(param1:o4117) : void
      {
         var _loc2_:Number = o11453.o1938();
         switch(int(o11453.o7246) - 10)
         {
            case 0:
               o13716(param1,23,_loc2_,param1.o2671);
               break;
            default:
               o13716(param1,23,_loc2_,param1.o2671);
               break;
            default:
               o13716(param1,23,_loc2_,param1.o2671);
               break;
            case 3:
               o13716(param1,24,_loc2_,param1.o2671);
               break;
            case 4:
               o13716(param1,43,_loc2_,param1.o2671);
               break;
            case 5:
               o13716(param1,41,_loc2_,param1.o2671);
               break;
            case 6:
               o13716(param1,8,_loc2_,param1.o2671);
               break;
            case 7:
               o13716(param1,3,_loc2_,param1.o2671);
               break;
            case 8:
               o13716(param1,5,_loc2_,param1.o2671);
               break;
            case 9:
               o13716(param1,9,_loc2_,param1.o2671);
               break;
            case 10:
               o13716(param1,16,_loc2_,param1.o2671);
         }
      }
      
      private function o18525(param1:o1253, param2:o6993, param3:int, param4:o125) : Number
      {
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc6_:int = 0;
         var _loc5_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc11_:* = 0;
         var _loc10_:Number = o11453.o1938();
         _loc6_ = 0;
         while(_loc6_ < param3)
         {
            if(_loc6_ < param2.o9938.length)
            {
               _loc8_ = param2.o9938[_loc6_];
               if(param2.o2409 == 4 || param2.o2409 == 7)
               {
                  var _loc13_:int = 0;
                  var _loc12_:* = _loc8_.o8855;
                  for each(_loc7_ in _loc8_.o8855)
                  {
                     if(_loc7_.id == 20)
                     {
                        _loc7_ = _loc7_;
                        _loc5_ = -(_loc7_ as o365).o88;
                        if(param4 != null && Math.abs(_loc5_) > 0.001 && param4.o7246 == 10)
                        {
                           _loc5_ = _loc5_ * (param4.o8872 + param4.o3353);
                           _loc11_ = Number(_loc11_ + _loc5_);
                        }
                     }
                     else if(_loc7_.id == 6)
                     {
                        if(param4 == null || param4.o7246 == 9)
                        {
                           o11453.o10825.value = _loc7_.o10468(o11453.o7246,param1,0);
                        }
                     }
                     else
                     {
                        _loc9_ = _loc7_.o10468(o11453.o7246,param1,_loc10_);
                        _loc11_ = Number(_loc11_ + _loc9_);
                     }
                  }
               }
            }
            _loc6_++;
         }
         return _loc11_;
      }
      
      public function o7504(param1:o1253, param2:o6993, param3:int, param4:o125) : Number
      {
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc5_:o14200 = o4519.o8116.profileData;
         var _loc9_:* = 0;
         var _loc8_:o4609 = _loc5_.o5292.o20827;
         if(param3 > 0)
         {
            if(param2.o2409 == 4 && _loc8_.o9445(param1.o10239.o20559) == param2)
            {
               _loc9_ = Number(_loc9_ + o18525(param1,param2,param3,param4));
            }
            else if(param2.o2409 == 7)
            {
               if(_loc8_.o6194(param1.o10239.o20559,1) == param2 || _loc8_.o6194(param1.o10239.o20559,2) == param2 || _loc8_.o6194(param1.o10239.o20559,3) == param2)
               {
                  _loc9_ = Number(_loc9_ + o18525(param1,param2,param3,param4));
               }
            }
         }
         return _loc9_;
      }
      
      public function o15455(param1:o4117, param2:o1253, param3:o125) : void
      {
         var _loc5_:* = null;
         var _loc4_:o14200 = o14200.o19505;
         var _loc7_:* = 0;
         var _loc6_:* = 0;
         var _loc9_:int = 0;
         var _loc8_:* = _loc4_.o5292.o20827.o20687;
         for each(_loc5_ in _loc4_.o5292.o20827.o20687)
         {
            _loc7_ = Number(o7504(param2,_loc5_,param1.o16992[_loc5_.id],param3));
            if(Math.abs(_loc7_) > 0.001)
            {
               o11453.o4572.push(_loc7_);
               if(_loc5_.o2409 == 7)
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
      
      public function o20552(param1:int, param2:o4117, param3:int, param4:o1253, param5:o125 = null) : o9213
      {
         o11453 = new o9213();
         if(param4 == null)
         {
            return null;
         }
         if(param1 == 0 && param3 == 5)
         {
            param1 = param1;
         }
         o11453.o7246 = param3;
         o11453.o4256 = param4;
         o11453 = new o9213();
         o11453.o7246 = param3;
         if(param3 == 16 || param3 == 17)
         {
            o3044(param2);
            o15712(param2,param4);
         }
         else
         {
            o15712(param2,param4);
            o3044(param2);
         }
         o15455(param2,param4,param5);
         var _loc6_:Number = o11453.o1938();
         return o11453;
      }
   }
}
