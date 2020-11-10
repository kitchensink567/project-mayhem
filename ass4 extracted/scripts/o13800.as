package
{
   public class o13800
   {
       
      
      public function o13800()
      {
         super();
      }
      
      public static function get o17371() : Boolean
      {
         return o15839().o19134;
      }
      
      public static function get o18381() : Boolean
      {
         return o15839().o18381;
      }
      
      public static function get o3765() : Boolean
      {
         return o15839().o3765;
      }
      
      public static function get o8459() : Boolean
      {
         return o15839().o8459;
      }
      
      public static function get o20129() : Boolean
      {
         return o15839().o20129;
      }
      
      public static function get o7140() : int
      {
         return o15839().o18327;
      }
      
      public static function get o2807() : int
      {
         return o15839().o14421;
      }
      
      public static function get o13009() : int
      {
         return o15839().o900;
      }
      
      public static function get o666() : int
      {
         return o15839().o13576;
      }
      
      public static function get o9692() : int
      {
         return o15839().o9692;
      }
      
      public static function get o17142() : int
      {
         return o15839().o9670;
      }
      
      public static function o15774(param1:Vector.<int> = null, param2:int = 0, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc6_:int = 0;
         var _loc7_:o16123 = new o16123(0);
         if(param1)
         {
            var _loc9_:int = 0;
            var _loc8_:* = param1;
            for each(var _loc5_ in param1)
            {
               _loc7_.value = _loc7_.value + o16475(null,_loc5_,param4);
            }
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < param2)
            {
               _loc7_.value = _loc7_.value + o16475(null,param3,param4);
               _loc6_++;
            }
         }
         return _loc7_.value;
      }
      
      public static function o16475(param1:Vector.<int> = null, param2:int = 0, param3:Boolean = false) : int
      {
         if(param1 && param1.length < 1)
         {
            return o15839().o216;
         }
         var _loc5_:o16123 = new o16123(0);
         var _loc4_:o16123 = new o16123(0);
         if(param1)
         {
            _loc4_.value = param1[0];
         }
         else
         {
            _loc4_.value = param2;
         }
         var _loc6_:* = _loc4_.value;
         switch(_loc6_)
         {
            case o4189.o19843:
               _loc5_.value = o15839().o19707;
               break;
            case o4189.o17868:
               _loc5_.value = o15839().o9048;
               break;
            case o4189.o20918:
               _loc5_.value = o15839().o5212;
               break;
            case o4189.o6765:
               _loc5_.value = o15839().o15993;
               break;
            case o4189.o16296:
               _loc5_.value = o15839().o12521;
               break;
            case o4189.o11328:
               _loc5_.value = o15839().o16323;
               break;
            case o4189.o15243:
               _loc5_.value = o15839().o12915;
               break;
            case o4189.o1897:
               _loc5_.value = o15839().o10729;
               break;
            case o4189.o12328:
               _loc5_.value = o15839().o8360;
               break;
            default:
               _loc5_.value = o15839().o216;
         }
         if(o4519.o13206 && o4519.o13206.o2685 && o4519.o13206.o2685.o4326 == 2 && _loc4_.value != o4189.o12328 && param3 == false)
         {
            _loc5_.value = _loc5_.value * o15839().o2680;
         }
         return _loc5_.value;
      }
      
      public static function o4513() : Boolean
      {
         switch(int(o4519.o13206.o2685.o4326) - 1)
         {
            case 0:
               if(o14200.o19505.o202.o10211 && o15839().o17507 == false)
               {
                  return false;
               }
               if(o15839().o19086 == false)
               {
                  return false;
               }
               break;
            case 1:
               if(o15839().o9777 == false)
               {
                  return false;
               }
               break;
            case 2:
            case 3:
            case 4:
               if(o15839().o732 == false)
               {
                  return false;
               }
               break;
            default:
            case 6:
               return false;
         }
         if(o15839().o18381 == false)
         {
            return false;
         }
         return true;
      }
      
      public static function o13588(param1:int, param2:int, param3:Boolean, param4:Boolean) : int
      {
         var _loc7_:Number = o4519.o8116.random.o10418(param1 * 137654);
         var _loc6_:o15787 = new o15787(0);
         var _loc5_:o15787 = new o15787(0);
         var _loc8_:o16123 = new o16123(0);
         if(_loc7_ * 100 > o15839().o122)
         {
            return o15839().o216;
         }
         switch(int(param2) - 10)
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
               _loc6_.value = o17773(param2,param3,param4);
               _loc5_.value = Math.ceil(_loc6_.value - (o15839().o12408 - 100) * -1 / 100 * _loc6_.value * _loc7_);
               if(_loc5_.value < 1)
               {
                  _loc5_.value = 1;
               }
               if(o4462() && o15839().o12325 > 1)
               {
                  _loc5_.value = _loc5_.value * (o15839().o12325 / o15839().o16032);
               }
               else if(o4519.o13206.o2685.o4326 == 1 && o15839().o7035 > 1)
               {
                  _loc5_.value = _loc5_.value * (o15839().o7035 / o15839().o16032);
               }
               else if(o4519.o13206.o2685.o4326 == 2 && o15839().o4602 > 1)
               {
                  _loc5_.value = _loc5_.value * (o15839().o4602 / o15839().o16032);
               }
               else if(o4626(o4519.o13206.o2685.o4326) && o15839().o14221 > 1)
               {
                  _loc5_.value = _loc5_.value * (o15839().o14221 / o15839().o16032);
               }
               else if(o15839().o9416 > 1)
               {
                  _loc5_.value = _loc5_.value * (o15839().o9416 / o15839().o16032);
               }
               _loc8_.value = o14200.o19505.o7923.o10005;
               o14200.o19505.o7923.o10005 = o14200.o19505.o7923.o10005 + _loc5_.value;
               if(o14200.o19505.o7923.o10005 >= o15839().o19685)
               {
                  o14200.o19505.o7923.o10005 = o15839().o19685;
                  _loc5_.value = o15839().o19685 - _loc8_.value;
                  if(_loc5_.value < 0)
                  {
                     _loc5_.value = 0;
                  }
                  o11407.o2565();
               }
               return _loc5_.value;
            default:
            case 6:
               return o15839().o216;
         }
      }
      
      private static function o4626(param1:int) : Boolean
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case 100:
            case 6:
            case 101:
            case 102:
            case 104:
            case 103:
               return true;
            default:
               return false;
         }
      }
      
      private static function o4462() : Boolean
      {
         switch(int(o4519.o13206.o2685.o4326) - 3)
         {
            case 0:
            case 1:
            case 2:
               return true;
            default:
            case 4:
               return false;
         }
      }
      
      private static function o17773(param1:int, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:int = 0;
         var _loc5_:* = o17439.o14628;
         for each(var _loc4_ in o17439.o14628)
         {
            if(_loc4_.type == param1 && _loc4_.o8472 == param3 && _loc4_.o9255 == param2)
            {
               return Math.ceil(_loc4_.o9172 / o15839().o18582);
            }
         }
         if(!(int(param1) - 16))
         {
            if(param3)
            {
               return o15839().o19413;
            }
            return o15839().o480;
         }
         return o15839().o216;
      }
      
      public static function o5504(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc5_:o2524 = o15839();
         var _loc6_:o16123 = new o16123(param2);
         if(param4 && param3 == 181 || param3 == 182 || param3 == 190)
         {
            var _loc7_:* = o15839().o14464;
            _loc6_.value = _loc7_;
            return _loc7_;
         }
         _loc7_ = param1;
         switch(_loc7_)
         {
            case o5050.o11502:
               return _loc6_.value / _loc5_.o20876;
            case o5050.o6066:
               return _loc6_.value / _loc5_.o19300;
            case o5050.o5336:
               return _loc6_.value / 2 * _loc5_.o2560;
            default:
               return o15839().o6693;
         }
      }
      
      public static function o12625(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc5_:o2524 = o15839();
         var _loc6_:o16123 = new o16123(param2);
         if(param4 && param3 == 181 || param3 == 182 || param3 == 190)
         {
            var _loc7_:* = o15839().o3508;
            _loc6_.value = _loc7_;
            return _loc7_;
         }
         _loc7_ = param1;
         switch(_loc7_)
         {
            case o5050.o11502:
               return _loc6_.value * _loc5_.o12673;
            case o5050.o6066:
               return _loc6_.value * _loc5_.o16353;
            case o5050.o5336:
               return _loc6_.value / 2 * _loc5_.o10726;
            default:
               return o15839().o6693;
         }
      }
      
      public static function o15839() : o2524
      {
         return o4519.o8116.o476.o15115;
      }
   }
}
