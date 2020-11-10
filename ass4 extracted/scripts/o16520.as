package
{
   use namespace b2internal;
   
   public class o16520
   {
      
      b2internal static var o15000:uint = 1;
      
      b2internal static var o2568:uint = 2;
      
      b2internal static var o19486:uint = 4;
      
      b2internal static var o12949:uint = 8;
      
      b2internal static var o1782:uint = 16;
      
      b2internal static var o4089:uint = 32;
      
      b2internal static var o4832:uint = 64;
      
      private static var o14961:o1255 = new o1255();
       
      
      b2internal var o20198:uint;
      
      b2internal var o3174:o16520;
      
      b2internal var o1570:o16520;
      
      b2internal var o5825:o684;
      
      b2internal var o6844:o684;
      
      b2internal var o5573:o11359;
      
      b2internal var o18752:o11359;
      
      b2internal var o19876:o19967;
      
      b2internal var o15865:o19967;
      
      b2internal var o15899:Number;
      
      public function o16520()
      {
         o5825 = new o684();
         o6844 = new o684();
         o19876 = new o19967();
         o15865 = new o19967();
         super();
      }
      
      public function o16208() : o19967
      {
         return o19876;
      }
      
      public function o10385(param1:o16958) : void
      {
         var _loc3_:o5173 = o5573.o15686();
         var _loc2_:o5173 = o18752.o15686();
         var _loc5_:o17586 = o5573.o4861();
         var _loc4_:o17586 = o18752.o4861();
         param1.o3836(o19876,_loc3_.o13749(),_loc5_.o4879,_loc2_.o13749(),_loc4_.o4879);
      }
      
      public function o4979() : Boolean
      {
         return (o20198 & o1782) == o1782;
      }
      
      public function o18258() : Boolean
      {
         return (o20198 & o2568) == o2568;
      }
      
      public function o12083(param1:Boolean) : void
      {
         if(param1)
         {
            o20198 = o20198 | o15000;
         }
         else
         {
            o20198 = o20198 & ~o15000;
         }
      }
      
      public function o13437() : Boolean
      {
         return (o20198 & o15000) == o15000;
      }
      
      public function o4004(param1:Boolean) : void
      {
         if(param1)
         {
            o20198 = o20198 | o4089;
         }
         else
         {
            o20198 = o20198 & ~o4089;
         }
      }
      
      public function o13755() : Boolean
      {
         return (o20198 & o4089) == o4089;
      }
      
      public function o10535() : o16520
      {
         return o1570;
      }
      
      public function o18972() : o11359
      {
         return o5573;
      }
      
      public function o13950() : o11359
      {
         return o18752;
      }
      
      public function o1389() : void
      {
         o20198 = o20198 | o4832;
      }
      
      b2internal function o6246(param1:o11359 = null, param2:o11359 = null) : void
      {
         o20198 = o4089;
         if(!param1 || !param2)
         {
            o5573 = null;
            o18752 = null;
            return;
         }
         if(param1.o13437() || param2.o13437())
         {
            o20198 = o20198 | o15000;
         }
         var _loc4_:o5173 = param1.o15686();
         var _loc3_:o5173 = param2.o15686();
         if(_loc4_.o20697() != o5173.o8639 || _loc4_.o1115() || _loc3_.o20697() != o5173.o8639 || _loc3_.o1115())
         {
            o20198 = o20198 | o2568;
         }
         o5573 = param1;
         o18752 = param2;
         o19876.o13593 = 0;
         o3174 = null;
         o1570 = null;
         o5825.o9663 = null;
         o5825.o3388 = null;
         o5825.o3176 = null;
         o5825.o3316 = null;
         o6844.o9663 = null;
         o6844.o3388 = null;
         o6844.o3176 = null;
         o6844.o3316 = null;
      }
      
      b2internal function o1797(param1:o14709) : void
      {
         var _loc10_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc15_:* = null;
         var _loc6_:int = 0;
         var _loc16_:* = null;
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc13_:* = null;
         var _loc12_:o19967 = o15865;
         o15865 = o19876;
         o19876 = _loc12_;
         o20198 = o20198 | o4089;
         var _loc11_:* = false;
         var _loc14_:* = (o20198 & o1782) == o1782;
         var _loc7_:o5173 = o5573.o14645;
         var _loc5_:o5173 = o18752.o14645;
         var _loc2_:Boolean = o5573.o13186.o15642(o18752.o13186);
         if(o20198 & o15000)
         {
            if(_loc2_)
            {
               _loc10_ = o5573.o4861();
               _loc8_ = o18752.o4861();
               _loc9_ = _loc7_.o13749();
               _loc15_ = _loc5_.o13749();
               _loc11_ = Boolean(o17586.o15642(_loc10_,_loc9_,_loc8_,_loc15_));
            }
            o19876.o13593 = 0;
         }
         else
         {
            if(_loc7_.o20697() != o5173.o8639 || _loc7_.o1115() || _loc5_.o20697() != o5173.o8639 || _loc5_.o1115())
            {
               o20198 = o20198 | o2568;
            }
            else
            {
               o20198 = o20198 & ~o2568;
            }
            if(_loc2_)
            {
               o5562();
               _loc11_ = o19876.o13593 > 0;
               _loc6_ = 0;
               while(_loc6_ < o19876.o13593)
               {
                  _loc16_ = o19876.o6942[_loc6_];
                  _loc16_.o17089 = 0;
                  _loc16_.o1881 = 0;
                  _loc4_ = _loc16_.o2773;
                  _loc3_ = 0;
                  while(_loc3_ < o15865.o13593)
                  {
                     _loc13_ = o15865.o6942[_loc3_];
                     if(_loc13_.o2773.key == _loc4_.key)
                     {
                        _loc16_.o17089 = _loc13_.o17089;
                        _loc16_.o1881 = _loc13_.o1881;
                        break;
                     }
                     _loc3_++;
                  }
                  _loc6_++;
               }
            }
            else
            {
               o19876.o13593 = 0;
            }
            if(_loc11_ != _loc14_)
            {
               _loc7_.o17676(true);
               _loc5_.o17676(true);
            }
         }
         if(_loc11_)
         {
            o20198 = o20198 | o1782;
         }
         else
         {
            o20198 = o20198 & ~o1782;
         }
         if(_loc14_ == false && _loc11_ == true)
         {
            param1.o15039(this);
         }
         if(_loc14_ == true && _loc11_ == false)
         {
            param1.o19222(this);
         }
         if((o20198 & o15000) == 0)
         {
            param1.o14137(this,o15865);
         }
      }
      
      b2internal function o5562() : void
      {
      }
      
      b2internal function o4197(param1:o12048, param2:o12048) : Number
      {
         o14961.o9917.o18596(o5573.o4861());
         o14961.o5256.o18596(o18752.o4861());
         o14961.o16794 = param1;
         o14961.o10099 = param2;
         o14961.o3445 = 0.005;
         return o18876.o5835(o14961);
      }
   }
}
