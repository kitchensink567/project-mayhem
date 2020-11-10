package
{
   public class o10176
   {
      
      private static var o7288:Boolean = true;
      
      private static var o20943:Array = [];
      
      private static var o9924:Array = [];
      
      private static var o10815:Array = [];
      
      private static var o10622:Array = [1,1.75,2.3,2.85];
      
      private static var o6711:int = -1;
      
      private static var o3686:int = -1;
      
      public static var o9745:Boolean = false;
       
      
      public function o10176()
      {
         super();
      }
      
      public static function init() : void
      {
         var _loc1_:int = 0;
         o20943[0] = 0;
         o20943[1] = 1;
         _loc1_ = 2;
         while(_loc1_ <= 100)
         {
            o20943[_loc1_] = int((o20943[_loc1_ - 1] + int((_loc1_ - 3) / 2) * 0.01 + 0.1 + 0.0001) * 100) / 100;
            _loc1_++;
         }
         o20943[2] = 1;
         var _loc2_:* = 3;
         var _loc3_:* = o20943[_loc2_] * 0.9;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 4;
         _loc2_ = o20943[_loc3_] * 0.9;
         o20943[_loc3_] = _loc2_;
         _loc2_ = 5;
         _loc3_ = o20943[_loc2_] * 0.9;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 6;
         _loc2_ = o20943[_loc3_] * 0.9;
         o20943[_loc3_] = _loc2_;
         _loc2_ = 7;
         _loc3_ = o20943[_loc2_] * 0.9;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 8;
         _loc2_ = o20943[_loc3_] * 0.9;
         o20943[_loc3_] = _loc2_;
         _loc2_ = 9;
         _loc3_ = o20943[_loc2_] * 0.9;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 10;
         _loc2_ = o20943[_loc3_] * 0.9;
         o20943[_loc3_] = _loc2_;
         _loc2_ = 11;
         _loc3_ = o20943[_loc2_] * 0.92;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 12;
         _loc2_ = o20943[_loc3_] * 0.94;
         o20943[_loc3_] = _loc2_;
         _loc2_ = 13;
         _loc3_ = o20943[_loc2_] * 0.96;
         o20943[_loc2_] = _loc3_;
         _loc3_ = 14;
         _loc2_ = o20943[_loc3_] * 0.98;
         o20943[_loc3_] = _loc2_;
         _loc1_ = 0;
         while(_loc1_ <= 100)
         {
            o20943[_loc1_] = int(o20943[_loc1_] * 100) / 100;
            _loc1_++;
         }
         o13699();
         o14794.init();
         o6711 = -1;
         o3686 = -1;
         o9745 = true;
         o6407();
         o13327();
      }
      
      public static function o10383(param1:Vector.<o13304>, param2:int = 0, param3:int = 0, param4:int = -1) : Vector.<o20743>
      {
         var _loc8_:int = 0;
         var _loc6_:int = 0;
         var _loc9_:* = undefined;
         var _loc7_:* = 0;
         _loc8_ = 0;
         while(_loc8_ < param1.length)
         {
            _loc7_ = Number(_loc7_ + param1[_loc8_].o16191);
            _loc8_++;
         }
         var _loc5_:Vector.<o20743> = new Vector.<o20743>();
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc5_ = _loc5_.concat(o10314(param1[_loc6_].o9899,param1[_loc6_].o16191,Math.ceil(param1[_loc6_].o16191 / _loc7_ * param2)));
            _loc6_++;
         }
         if(param4 != -1)
         {
            _loc9_ = new Vector.<o20743>();
            while(_loc5_.length > 0)
            {
               _loc9_.push(_loc5_.splice(o4519.o8116.random.o10418(param4) * _loc5_.length,1)[0]);
               param4++;
            }
            return _loc9_;
         }
         if(param3 != 0 && _loc5_.length > param3)
         {
            _loc5_ = _loc5_.slice(0,param3);
         }
         return _loc5_;
      }
      
      public static function o6572() : Number
      {
         return o20943[o13327()] * o10622[o6407() - 1];
      }
      
      private static function o13699() : void
      {
         o9924[0] = 15;
         o9924[1] = 20;
         o9924[2] = 25;
         o9924[3] = 30;
         o9924[5] = 35;
         o9924[4] = 40;
         o9924[8] = 30;
         o9924[9] = 30;
         o10815[0] = 35;
         o10815[1] = 40;
         o10815[2] = 45;
         o10815[3] = 50;
         o10815[5] = 55;
         o10815[4] = 60;
         o10815[8] = 50;
         o10815[9] = 50;
      }
      
      public static function o12064(param1:int) : int
      {
         if(param1 == 6 || param1 == 7)
         {
            return 1;
         }
         if(o10815[param1] == undefined || o9924[param1] == undefined)
         {
            return 0;
         }
         if(o13327() * o6407() < o9924[param1])
         {
            return 1;
         }
         if(o13327() * o6407() < o10815[param1])
         {
            return 2;
         }
         return 3;
      }
      
      public static function o18401(param1:int) : int
      {
         if(param1 == 6 || param1 == 7)
         {
            return 0;
         }
         if(o10815[param1] == undefined || o9924[param1] == undefined)
         {
            return 0;
         }
         if(o13327() * o6407() < o9924[param1])
         {
            return 0;
         }
         if(o13327() * o6407() < o10815[param1])
         {
            return 1;
         }
         return 2;
      }
      
      public static function o6407() : int
      {
         if(o6711 == -1 || o9745 == false)
         {
            if(o4519.o13206.multiplayer)
            {
               o6711 = o4519.o13206.o2685.o7629();
            }
            else
            {
               o6711 = 1;
            }
         }
         return o6711;
      }
      
      public static function o1660() : Number
      {
         return o10622[o6407() - 1];
      }
      
      public static function o10314(param1:int, param2:Number, param3:int = 0) : Vector.<o20743>
      {
         var _loc10_:int = 0;
         var _loc5_:int = 0;
         var _loc8_:Number = o6572();
         if(param1 >= o17439.o6648.length)
         {
            param1 = 0;
         }
         var _loc9_:int = o17439.o6648[param1].length;
         var _loc7_:Array = new Array(_loc9_);
         _loc10_ = 0;
         while(_loc10_ < _loc9_)
         {
            _loc7_[_loc10_] = 0;
            _loc10_++;
         }
         _loc7_[0] = _loc8_ * param2;
         var _loc12_:int = 0;
         var _loc11_:* = 0;
         if(param3 != 0)
         {
            _loc12_ = 0;
            _loc11_ = Number(o8422(param1,_loc12_,_loc12_ + 1));
            while(o13693(_loc7_) > param3 + _loc11_ / 2 && _loc12_ < o12064(param1))
            {
               _loc11_ = Number(o8422(param1,_loc12_,_loc12_ + 1));
               if(_loc7_[_loc12_] >= _loc11_)
               {
                  var _loc13_:* = _loc12_;
                  var _loc14_:* = _loc7_[_loc13_] - _loc11_;
                  _loc7_[_loc13_] = _loc14_;
                  _loc14_ = _loc7_;
                  _loc13_ = _loc12_ + 1;
                  var _loc15_:* = Number(_loc14_[_loc13_]) + 1;
                  _loc14_[_loc13_] = _loc15_;
                  continue;
               }
               _loc12_++;
               if(!(_loc12_ == _loc9_ - 1 || _loc7_[_loc12_] == 0))
               {
                  continue;
               }
               break;
            }
         }
         _loc12_ = 0;
         while(o18401(param1) > 0 && _loc12_ < o18401(param1) && _loc7_[_loc12_] > 0)
         {
            _loc11_ = Number(o8422(param1,_loc12_,_loc12_ + 1));
            if(_loc7_[_loc12_] >= _loc11_)
            {
               _loc14_ = _loc12_;
               _loc13_ = _loc7_[_loc14_] - _loc11_;
               _loc7_[_loc14_] = _loc13_;
               _loc15_ = _loc7_;
               _loc13_ = _loc12_ + 1;
               _loc14_ = Number(_loc15_[_loc13_]) + 1;
               _loc15_[_loc13_] = _loc14_;
               continue;
            }
            _loc7_[_loc12_] = 0;
            _loc12_++;
            if(!(_loc12_ == _loc9_ - 1 || _loc7_[_loc12_] == 0))
            {
               continue;
            }
            break;
         }
         _loc10_ = 0;
         while(_loc10_ < _loc7_.length)
         {
            _loc7_[_loc10_] = int(_loc7_[_loc10_]);
            _loc10_++;
         }
         var _loc4_:Vector.<o20743> = new Vector.<o20743>();
         var _loc6_:Class = o4519.o8116.o20291[o17439.o12681[param1]];
         _loc10_ = 0;
         while(_loc10_ < _loc7_.length)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc7_[_loc10_])
            {
               _loc4_.push(new o20743(_loc6_,_loc10_,null,0,null,0,0,true,true,0,param1));
               _loc5_++;
            }
            _loc10_++;
         }
         return _loc4_;
      }
      
      private static function o13693(param1:Array) : Number
      {
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = Number(_loc3_ + param1[_loc2_]);
            _loc2_++;
         }
         return _loc3_;
      }
      
      public static function o8422(param1:int, param2:int, param3:int) : Number
      {
         return o17439.o6648[param1][param3] / o17439.o6648[param1][param2];
      }
      
      public static function o13327() : int
      {
         var _loc2_:int = 0;
         if(o3686 == -1 || o9745 == false)
         {
            if(o4519.o13206.multiplayer)
            {
               _loc2_ = 0;
               var _loc4_:int = 0;
               var _loc3_:* = o4519.o13206.o2685.o10591;
               for each(var _loc1_ in o4519.o13206.o2685.o10591)
               {
                  _loc2_ = _loc2_ + _loc1_.level;
               }
               if(_loc2_ > 0)
               {
                  _loc2_ = _loc2_ / o4519.o13206.o2685.o7629();
               }
               o3686 = _loc2_;
            }
            else
            {
               o3686 = o4519.o32.level;
            }
         }
         return o3686;
      }
      
      public static function o8930(param1:Number, param2:int = -1, param3:int = -1, param4:Boolean = false, param5:Boolean = false) : Vector.<o20743>
      {
         var _loc18_:Number = NaN;
         var _loc16_:int = 0;
         var _loc9_:int = 0;
         var _loc7_:* = null;
         var _loc19_:Number = NaN;
         var _loc13_:int = 0;
         var _loc8_:int = 0;
         var _loc14_:int = 0;
         var _loc12_:Boolean = false;
         var _loc20_:Number = param1 * o6572();
         if(false && (param2 != -1 || param3 != -1))
         {
            _loc20_ = param1 * o20943[param2] * o10622[param3 - 1];
         }
         if(o4519.o13206.o4326 == 2)
         {
            _loc18_ = o13327() / 100 + 1.15 > 2?2:o13327() / 100 + 1.15;
            _loc20_ = _loc20_ * (_loc18_ > 2?2:_loc18_);
         }
         var _loc21_:Boolean = false;
         if(o4519.o13206.o2685.o4326 == 5 || o4519.o13206.o2685.o4326 == 4 || o4519.o13206.o2685.o4326 == 7 || o4519.o13206.o2685.o4326 == 3)
         {
            _loc21_ = true;
            _loc16_ = o17439.o19481.length - 1;
            while(_loc20_ < o17439.o19481[_loc16_ < 0?0:_loc16_].o9172)
            {
               _loc16_--;
               if(_loc16_ < 0)
               {
                  _loc16_ = 0;
                  break;
               }
            }
         }
         else
         {
            _loc16_ = o17439.o14628.length - 1;
            while(_loc20_ < o17439.o14628[_loc16_ < 0?0:_loc16_].o9172)
            {
               _loc16_--;
               if(_loc16_ < 0)
               {
                  _loc16_ = 0;
                  break;
               }
            }
         }
         var _loc17_:Number = o4519.o8116.random.o10418(348729);
         if(!param4 && !param5)
         {
            if(_loc17_ < 0.5)
            {
               _loc16_--;
            }
            if(_loc17_ < 0.28)
            {
               _loc16_--;
            }
            if(_loc17_ < 0.12)
            {
               _loc16_ = _loc16_ - 4;
            }
            if(_loc16_ < 0)
            {
               _loc16_ = 0;
            }
         }
         else if(param5)
         {
            _loc16_ = _loc16_ - 4;
         }
         var _loc15_:Vector.<o20743> = new Vector.<o20743>();
         var _loc6_:* = _loc20_;
         var _loc11_:* = _loc16_;
         var _loc10_:int = 0;
         while(true)
         {
            if(_loc21_)
            {
               _loc9_ = o17439.o19481[_loc11_ < 0?0:_loc11_].type;
               _loc7_ = o4519.o8116.o20291[o17439.o12681[_loc9_]];
               _loc19_ = o17439.o19481[_loc11_ < 0?0:_loc11_].o9172;
               _loc13_ = (_loc20_ - _loc19_) / _loc19_ * 4;
               _loc13_ = _loc13_ > 3?3:_loc13_;
               _loc13_ = _loc13_ < 0?0:_loc13_;
               _loc8_ = o17439.o19481[_loc11_ < 0?0:_loc11_].o8472 == true?1:0;
               _loc14_ = o17439.o19481[_loc11_ < 0?0:_loc11_].o9255 == true?2:1;
            }
            else
            {
               _loc9_ = o17439.o14628[_loc11_ < 0?0:_loc11_].type;
               _loc7_ = o4519.o8116.o20291[o17439.o12681[_loc9_]];
               _loc19_ = o17439.o14628[_loc11_ < 0?0:_loc11_].o9172;
               _loc13_ = (_loc20_ - _loc19_) / _loc19_ * 4;
               _loc13_ = _loc13_ > 3?3:_loc13_;
               _loc13_ = _loc13_ < 0?0:_loc13_;
               _loc8_ = o17439.o14628[_loc11_ < 0?0:_loc11_].o8472 == true?1:0;
               _loc14_ = o17439.o14628[_loc11_ < 0?0:_loc11_].o9255 == true?2:1;
            }
            _loc12_ = false;
            while(_loc6_ >= _loc19_)
            {
               _loc12_ = true;
               _loc6_ = Number(_loc6_ - _loc19_);
               _loc15_.push(new o20743(_loc7_,_loc8_ * 10 + _loc13_,null,0,null,0,0,false,true,_loc14_,_loc9_));
               if(!param4)
               {
                  continue;
               }
               break;
            }
            if(_loc12_)
            {
               _loc10_++;
            }
            _loc11_--;
            if(!(_loc11_ < 0 || _loc10_ >= 3))
            {
               if(!param4)
               {
                  if(_loc15_.length < 5)
                  {
                     continue;
                  }
                  break;
               }
               break;
            }
            break;
         }
         if(_loc15_.length > 0)
         {
            _loc15_[0].o1673 = true;
         }
         return _loc15_;
      }
      
      public static function o15062(param1:int) : Array
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:Array = [];
         _loc4_.push([0,o18401(0),o12064(0)]);
         _loc4_.push([1,o18401(1),o12064(1)]);
         _loc4_.push([3,o18401(3),o12064(3)]);
         _loc4_.push([2,o18401(2),o12064(2)]);
         _loc4_.push([4,o18401(4),o12064(4)]);
         _loc4_.push([5,o18401(5),o12064(5)]);
         _loc4_.push([8,o18401(8),o12064(8)]);
         if(param1 == 1054 || param1 == 1043)
         {
            _loc4_.push([6,0,1]);
            _loc4_.push([7,0,1]);
         }
         if(param1 == 1043)
         {
            _loc4_.push([16,0,1]);
         }
         if(!(o4519.o13206.o4326 == 1 && (param1 == 1054 || param1 == 1043)))
         {
            _loc3_ = 0;
            while(_loc3_ < o17439.o18061.length)
            {
               _loc2_ = o17439.o18061[_loc3_];
               _loc4_.push([_loc2_,0,1]);
               _loc3_++;
            }
            _loc4_.push([9,0,3]);
            _loc4_.push([15,0,5]);
         }
         return _loc4_;
      }
   }
}
