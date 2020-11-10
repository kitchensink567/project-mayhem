package
{
   use namespace b2internal;
   
   public class o586
   {
      
      private static var o8593:o6306 = new o6306();
       
      
      private var o4735;
      
      private var o16596:o14709;
      
      private var o5390:o13976;
      
      b2internal var o9760:Vector.<o5173>;
      
      b2internal var o4193:Vector.<o16520>;
      
      b2internal var o12376:Vector.<o2748>;
      
      b2internal var o3965:int;
      
      b2internal var o17068:int;
      
      b2internal var o13994:int;
      
      private var o87:int;
      
      b2internal var o11172:int;
      
      b2internal var o12343:int;
      
      public function o586()
      {
         super();
         o9760 = new Vector.<o5173>();
         o4193 = new Vector.<o16520>();
         o12376 = new Vector.<o2748>();
      }
      
      public function o3836(param1:int, param2:int, param3:int, param4:*, param5:o14709, param6:o13976) : void
      {
         var _loc7_:int = 0;
         o87 = param1;
         o11172 = param2;
         o12343 = param3;
         o3965 = 0;
         o13994 = 0;
         o17068 = 0;
         o4735 = param4;
         o16596 = param5;
         o5390 = param6;
         _loc7_ = o9760.length;
         while(_loc7_ < param1)
         {
            o9760[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = o4193.length;
         while(_loc7_ < param2)
         {
            o4193[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = o12376.length;
         while(_loc7_ < param3)
         {
            o12376[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function o13552() : void
      {
         o3965 = 0;
         o13994 = 0;
         o17068 = 0;
      }
      
      public function o6052(param1:o18851, param2:o20021, param3:Boolean) : void
      {
         var _loc7_:int = 0;
         var _loc4_:int = 0;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc8_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc17_:Boolean = false;
         var _loc12_:* = false;
         var _loc6_:Boolean = false;
         var _loc11_:* = NaN;
         var _loc10_:* = NaN;
         var _loc14_:* = NaN;
         _loc7_ = 0;
         while(_loc7_ < o3965)
         {
            _loc9_ = o9760[_loc7_];
            if(_loc9_.o20697() == o5173.o8639)
            {
               _loc9_.o18378.x = _loc9_.o18378.x + param1.o10009 * (param2.x + _loc9_.o15412 * _loc9_.o10225.x);
               _loc9_.o18378.y = _loc9_.o18378.y + param1.o10009 * (param2.y + _loc9_.o15412 * _loc9_.o10225.y);
               _loc9_.o11516 = _loc9_.o11516 + param1.o10009 * _loc9_.o4988 * _loc9_.o12252;
               _loc9_.o18378.o5041(o10852.o2404(1 - param1.o10009 * _loc9_.o11665,0,1));
               _loc9_.o11516 = _loc9_.o11516 * o10852.o2404(1 - param1.o10009 * _loc9_.o10978,0,1);
            }
            _loc7_++;
         }
         o5390.o3836(param1,o4193,o13994,o4735);
         var _loc15_:o13976 = o5390;
         _loc15_.o8745(param1);
         _loc7_ = 0;
         while(_loc7_ < o17068)
         {
            _loc5_ = o12376[_loc7_];
            _loc5_.o8745(param1);
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < param1.o6387)
         {
            _loc4_ = 0;
            while(_loc4_ < o17068)
            {
               _loc5_ = o12376[_loc4_];
               _loc5_.o13623(param1);
               _loc4_++;
            }
            _loc15_.o13623();
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < o17068)
         {
            _loc5_ = o12376[_loc7_];
            _loc5_.o17728();
            _loc7_++;
         }
         _loc15_.o17728();
         _loc7_ = 0;
         while(_loc7_ < o3965)
         {
            _loc9_ = o9760[_loc7_];
            if(_loc9_.o20697() != o5173.o16684)
            {
               _loc8_ = param1.o10009 * _loc9_.o18378.x;
               _loc16_ = param1.o10009 * _loc9_.o18378.y;
               if(_loc8_ * _loc8_ + _loc16_ * _loc16_ > 4)
               {
                  _loc9_.o18378.o5775();
                  _loc9_.o18378.x = _loc9_.o18378.x * (2 * param1.o4515);
                  _loc9_.o18378.y = _loc9_.o18378.y * (2 * param1.o4515);
               }
               _loc13_ = param1.o10009 * _loc9_.o11516;
               if(_loc13_ * _loc13_ > 2.46740110027234)
               {
                  if(_loc9_.o11516 < 0)
                  {
                     _loc9_.o11516 = -1.5707963267949 * param1.o4515;
                  }
                  else
                  {
                     _loc9_.o11516 = 1.5707963267949 * param1.o4515;
                  }
               }
               _loc9_.o19080.o1302.o13101(_loc9_.o19080.o9412);
               _loc9_.o19080.o17036 = _loc9_.o19080.o12395;
               _loc9_.o19080.o9412.x = _loc9_.o19080.o9412.x + param1.o10009 * _loc9_.o18378.x;
               _loc9_.o19080.o9412.y = _loc9_.o19080.o9412.y + param1.o10009 * _loc9_.o18378.y;
               _loc9_.o19080.o12395 = _loc9_.o19080.o12395 + param1.o10009 * _loc9_.o11516;
               _loc9_.o14187();
            }
            _loc7_++;
         }
         _loc7_ = 0;
         while(_loc7_ < param1.o15205)
         {
            _loc17_ = _loc15_.o18754(0.2);
            _loc12_ = true;
            _loc4_ = 0;
            while(_loc4_ < o17068)
            {
               _loc5_ = o12376[_loc4_];
               _loc6_ = _loc5_.o18754(0.2);
               _loc12_ = _loc12_ && _loc6_;
               _loc4_++;
            }
            if(!(_loc17_ && _loc12_))
            {
               _loc7_++;
               continue;
            }
            break;
         }
         o16101(_loc15_.o7878);
         if(param3)
         {
            _loc11_ = 1.79769313486232e308;
            _loc10_ = 0.0001;
            _loc14_ = 0.00121846967914683;
            _loc7_ = 0;
            while(_loc7_ < o3965)
            {
               _loc9_ = o9760[_loc7_];
               if(_loc9_.o20697() != o5173.o16684)
               {
                  if((_loc9_.o20198 & o5173.o8336) == 0)
                  {
                     _loc9_.o13081 = 0;
                     _loc11_ = 0;
                  }
                  if((_loc9_.o20198 & o5173.o8336) == 0 || _loc9_.o11516 * _loc9_.o11516 > _loc14_ || o10852.o10111(_loc9_.o18378,_loc9_.o18378) > _loc10_)
                  {
                     _loc9_.o13081 = 0;
                     _loc11_ = 0;
                  }
                  else
                  {
                     _loc9_.o13081 = _loc9_.o13081 + param1.o10009;
                     _loc11_ = Number(o10852.o4883(_loc11_,_loc9_.o13081));
                  }
               }
               _loc7_++;
            }
            if(_loc11_ >= 0.5)
            {
               _loc7_ = 0;
               while(_loc7_ < o3965)
               {
                  _loc9_ = o9760[_loc7_];
                  _loc9_.o17676(false);
                  _loc7_++;
               }
            }
         }
      }
      
      public function o17475(param1:o18851) : void
      {
         var _loc9_:int = 0;
         var _loc2_:int = 0;
         var _loc10_:* = null;
         var _loc8_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc5_:* = false;
         var _loc3_:Boolean = false;
         o5390.o3836(param1,o4193,o13994,o4735);
         var _loc7_:o13976 = o5390;
         _loc9_ = 0;
         while(_loc9_ < o17068)
         {
            o12376[_loc9_].o8745(param1);
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < param1.o6387)
         {
            _loc7_.o13623();
            _loc2_ = 0;
            while(_loc2_ < o17068)
            {
               o12376[_loc2_].o13623(param1);
               _loc2_++;
            }
            _loc9_++;
         }
         _loc9_ = 0;
         while(_loc9_ < o3965)
         {
            _loc10_ = o9760[_loc9_];
            if(_loc10_.o20697() != o5173.o16684)
            {
               _loc8_ = param1.o10009 * _loc10_.o18378.x;
               _loc11_ = param1.o10009 * _loc10_.o18378.y;
               if(_loc8_ * _loc8_ + _loc11_ * _loc11_ > 4)
               {
                  _loc10_.o18378.o5775();
                  _loc10_.o18378.x = _loc10_.o18378.x * (2 * param1.o4515);
                  _loc10_.o18378.y = _loc10_.o18378.y * (2 * param1.o4515);
               }
               _loc6_ = param1.o10009 * _loc10_.o11516;
               if(_loc6_ * _loc6_ > 2.46740110027234)
               {
                  if(_loc10_.o11516 < 0)
                  {
                     _loc10_.o11516 = -1.5707963267949 * param1.o4515;
                  }
                  else
                  {
                     _loc10_.o11516 = 1.5707963267949 * param1.o4515;
                  }
               }
               _loc10_.o19080.o1302.o13101(_loc10_.o19080.o9412);
               _loc10_.o19080.o17036 = _loc10_.o19080.o12395;
               _loc10_.o19080.o9412.x = _loc10_.o19080.o9412.x + param1.o10009 * _loc10_.o18378.x;
               _loc10_.o19080.o9412.y = _loc10_.o19080.o9412.y + param1.o10009 * _loc10_.o18378.y;
               _loc10_.o19080.o12395 = _loc10_.o19080.o12395 + param1.o10009 * _loc10_.o11516;
               _loc10_.o14187();
            }
            _loc9_++;
         }
         var _loc4_:* = 0.75;
         _loc9_ = 0;
         while(_loc9_ < param1.o15205)
         {
            _loc12_ = _loc7_.o18754(_loc4_);
            _loc5_ = true;
            _loc2_ = 0;
            while(_loc2_ < o17068)
            {
               _loc3_ = o12376[_loc2_].o18754(0.2);
               _loc5_ = _loc5_ && _loc3_;
               _loc2_++;
            }
            if(!(_loc12_ && _loc5_))
            {
               _loc9_++;
               continue;
            }
            break;
         }
         o16101(_loc7_.o7878);
      }
      
      public function o16101(param1:Vector.<o14274>) : void
      {
         var _loc4_:int = 0;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc3_:int = 0;
         if(o16596 == null)
         {
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < o13994)
         {
            _loc2_ = o4193[_loc4_];
            _loc5_ = param1[_loc4_];
            _loc3_ = 0;
            while(_loc3_ < _loc5_.o13134)
            {
               o8593.o5847[_loc3_] = _loc5_.o16255[_loc3_].o17624;
               o8593.o19241[_loc3_] = _loc5_.o16255[_loc3_].o13613;
               _loc3_++;
            }
            o16596.o537(_loc2_,o8593);
            _loc4_++;
         }
      }
      
      public function o20577(param1:o5173) : void
      {
         param1.o14973 = o3965;
         o3965 = Number(o3965) + 1;
         o9760[Number(o3965)] = param1;
      }
      
      public function o6465(param1:o16520) : void
      {
         o13994 = Number(o13994) + 1;
         o4193[Number(o13994)] = param1;
      }
      
      public function o20609(param1:o2748) : void
      {
         o17068 = Number(o17068) + 1;
         o12376[Number(o17068)] = param1;
      }
   }
}
