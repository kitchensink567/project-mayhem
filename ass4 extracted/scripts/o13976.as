package
{
   use namespace b2internal;
   
   public class o13976
   {
      
      private static var o16913:o16958 = new o16958();
      
      private static var o16422:o1851 = new o1851();
       
      
      private var o13648:o18851;
      
      private var o4735;
      
      b2internal var o7878:Vector.<o14274>;
      
      private var o9460:int;
      
      public function o13976()
      {
         o13648 = new o18851();
         o7878 = new Vector.<o14274>();
         super();
      }
      
      public function o3836(param1:o18851, param2:Vector.<o16520>, param3:int, param4:*) : void
      {
         var _loc18_:* = null;
         var _loc21_:int = 0;
         var _loc57_:* = null;
         var _loc15_:* = null;
         var _loc46_:* = null;
         var _loc6_:* = null;
         var _loc10_:* = null;
         var _loc24_:* = null;
         var _loc27_:Number = NaN;
         var _loc60_:Number = NaN;
         var _loc35_:* = null;
         var _loc32_:* = null;
         var _loc54_:* = null;
         var _loc56_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc52_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc51_:* = null;
         var _loc40_:* = 0;
         var _loc31_:* = null;
         var _loc26_:* = null;
         var _loc43_:* = NaN;
         var _loc47_:* = NaN;
         var _loc48_:* = NaN;
         var _loc19_:* = NaN;
         var _loc42_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc13_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc44_:* = null;
         var _loc14_:* = null;
         var _loc61_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc58_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc55_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc59_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc9_:* = NaN;
         o13648.o18596(param1);
         o4735 = param4;
         o9460 = param3;
         while(o7878.length < o9460)
         {
            o7878[o7878.length] = new o14274();
         }
         _loc21_ = 0;
         while(_loc21_ < param3)
         {
            _loc18_ = param2[_loc21_];
            _loc46_ = _loc18_.o5573;
            _loc6_ = _loc18_.o18752;
            _loc10_ = _loc46_.o12319;
            _loc24_ = _loc6_.o12319;
            _loc27_ = _loc10_.o4879;
            _loc60_ = _loc24_.o4879;
            _loc35_ = _loc46_.o14645;
            _loc32_ = _loc6_.o14645;
            _loc54_ = _loc18_.o16208();
            _loc56_ = o14980.o14184(_loc46_.o14362(),_loc6_.o14362());
            _loc38_ = o14980.o4112(_loc46_.o616(),_loc6_.o616());
            _loc41_ = _loc35_.o18378.x;
            _loc52_ = _loc35_.o18378.y;
            _loc53_ = _loc32_.o18378.x;
            _loc33_ = _loc32_.o18378.y;
            _loc12_ = _loc35_.o11516;
            _loc30_ = _loc32_.o11516;
            o14980.o12199(_loc54_.o13593 > 0);
            o16913.o3836(_loc54_,_loc35_.o7718,_loc27_,_loc32_.o7718,_loc60_);
            _loc29_ = o16913.o17937.x;
            _loc17_ = o16913.o17937.y;
            _loc51_ = o7878[_loc21_];
            _loc51_.o6133 = _loc35_;
            _loc51_.o3428 = _loc32_;
            _loc51_.o12249 = _loc54_;
            _loc51_.o1654.x = _loc29_;
            _loc51_.o1654.y = _loc17_;
            _loc51_.o13134 = _loc54_.o13593;
            _loc51_.o12438 = _loc56_;
            _loc51_.o7742 = _loc38_;
            _loc51_.o19522.x = _loc54_.o17991.x;
            _loc51_.o19522.y = _loc54_.o17991.y;
            _loc51_.o15759.x = _loc54_.o11266.x;
            _loc51_.o15759.y = _loc54_.o11266.y;
            _loc51_.o30 = _loc27_ + _loc60_;
            _loc51_.type = _loc54_.o3804;
            _loc40_ = uint(0);
            while(_loc40_ < _loc51_.o13134)
            {
               _loc31_ = _loc54_.o6942[_loc40_];
               _loc26_ = _loc51_.o16255[_loc40_];
               _loc26_.o17624 = _loc31_.o17089;
               _loc26_.o13613 = _loc31_.o1881;
               _loc26_.o15759.o13101(_loc31_.o11266);
               var _loc62_:* = o16913.o6942[_loc40_].x - _loc35_.o19080.o9412.x;
               _loc26_.o3702.x = _loc62_;
               _loc43_ = _loc62_;
               _loc62_ = o16913.o6942[_loc40_].y - _loc35_.o19080.o9412.y;
               _loc26_.o3702.y = _loc62_;
               _loc47_ = _loc62_;
               _loc62_ = o16913.o6942[_loc40_].x - _loc32_.o19080.o9412.x;
               _loc26_.o5515.x = _loc62_;
               _loc48_ = _loc62_;
               _loc62_ = o16913.o6942[_loc40_].y - _loc32_.o19080.o9412.y;
               _loc26_.o5515.y = _loc62_;
               _loc19_ = _loc62_;
               _loc42_ = _loc43_ * _loc17_ - _loc47_ * _loc29_;
               _loc50_ = _loc48_ * _loc17_ - _loc19_ * _loc29_;
               _loc42_ = _loc42_ * _loc42_;
               _loc50_ = _loc50_ * _loc50_;
               _loc49_ = _loc35_.o15412 + _loc32_.o15412 + _loc35_.o4988 * _loc42_ + _loc32_.o4988 * _loc50_;
               _loc26_.o18840 = 1 / _loc49_;
               _loc16_ = _loc35_.o12897 * _loc35_.o15412 + _loc32_.o12897 * _loc32_.o15412;
               _loc16_ = _loc16_ + (_loc35_.o12897 * _loc35_.o4988 * _loc42_ + _loc32_.o12897 * _loc32_.o4988 * _loc50_);
               _loc26_.o20750 = 1 / _loc16_;
               _loc23_ = _loc17_;
               _loc13_ = -_loc29_;
               _loc37_ = _loc43_ * _loc13_ - _loc47_ * _loc23_;
               _loc36_ = _loc48_ * _loc13_ - _loc19_ * _loc23_;
               _loc37_ = _loc37_ * _loc37_;
               _loc36_ = _loc36_ * _loc36_;
               _loc39_ = _loc35_.o15412 + _loc32_.o15412 + _loc35_.o4988 * _loc37_ + _loc32_.o4988 * _loc36_;
               _loc26_.o552 = 1 / _loc39_;
               _loc26_.o7333 = 0;
               _loc11_ = _loc53_ + -_loc30_ * _loc19_ - _loc41_ - -_loc12_ * _loc47_;
               _loc22_ = _loc33_ + _loc30_ * _loc48_ - _loc52_ - _loc12_ * _loc43_;
               _loc28_ = _loc51_.o1654.x * _loc11_ + _loc51_.o1654.y * _loc22_;
               if(_loc28_ < -1)
               {
                  _loc26_.o7333 = _loc26_.o7333 + -_loc51_.o7742 * _loc28_;
               }
               _loc40_++;
            }
            if(_loc51_.o13134 == 2)
            {
               _loc44_ = _loc51_.o16255[0];
               _loc14_ = _loc51_.o16255[1];
               _loc61_ = _loc35_.o15412;
               _loc45_ = _loc35_.o4988;
               _loc58_ = _loc32_.o15412;
               _loc25_ = _loc32_.o4988;
               _loc7_ = _loc44_.o3702.x * _loc17_ - _loc44_.o3702.y * _loc29_;
               _loc8_ = _loc44_.o5515.x * _loc17_ - _loc44_.o5515.y * _loc29_;
               _loc20_ = _loc14_.o3702.x * _loc17_ - _loc14_.o3702.y * _loc29_;
               _loc55_ = _loc14_.o5515.x * _loc17_ - _loc14_.o5515.y * _loc29_;
               _loc5_ = _loc61_ + _loc58_ + _loc45_ * _loc7_ * _loc7_ + _loc25_ * _loc8_ * _loc8_;
               _loc59_ = _loc61_ + _loc58_ + _loc45_ * _loc20_ * _loc20_ + _loc25_ * _loc55_ * _loc55_;
               _loc34_ = _loc61_ + _loc58_ + _loc45_ * _loc7_ * _loc20_ + _loc25_ * _loc8_ * _loc55_;
               _loc9_ = 100;
               if(_loc5_ * _loc5_ < _loc9_ * (_loc5_ * _loc59_ - _loc34_ * _loc34_))
               {
                  _loc51_.K.o19549.o18596(_loc5_,_loc34_);
                  _loc51_.K.o20685.o18596(_loc34_,_loc59_);
                  _loc51_.K.o8330(_loc51_.o18840);
               }
               else
               {
                  _loc51_.o13134 = 1;
               }
            }
            _loc21_++;
         }
      }
      
      public function o8745(param1:o18851) : void
      {
         var _loc15_:* = null;
         var _loc13_:* = null;
         var _loc19_:* = null;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc8_:* = null;
         var _loc5_:* = null;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc12_:* = null;
         var _loc16_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc14_:* = null;
         _loc6_ = 0;
         while(_loc6_ < o9460)
         {
            _loc2_ = o7878[_loc6_];
            _loc8_ = _loc2_.o6133;
            _loc5_ = _loc2_.o3428;
            _loc22_ = _loc8_.o15412;
            _loc23_ = _loc8_.o4988;
            _loc17_ = _loc5_.o15412;
            _loc10_ = _loc5_.o4988;
            _loc18_ = _loc2_.o1654.x;
            _loc21_ = _loc2_.o1654.y;
            _loc7_ = _loc21_;
            _loc11_ = -_loc18_;
            if(param1.o1821)
            {
               _loc4_ = _loc2_.o13134;
               _loc3_ = 0;
               while(_loc3_ < _loc4_)
               {
                  _loc12_ = _loc2_.o16255[_loc3_];
                  _loc12_.o17624 = _loc12_.o17624 * param1.o12930;
                  _loc12_.o13613 = _loc12_.o13613 * param1.o12930;
                  _loc16_ = _loc12_.o17624 * _loc18_ + _loc12_.o13613 * _loc7_;
                  _loc20_ = _loc12_.o17624 * _loc21_ + _loc12_.o13613 * _loc11_;
                  _loc8_.o11516 = _loc8_.o11516 - _loc23_ * (_loc12_.o3702.x * _loc20_ - _loc12_.o3702.y * _loc16_);
                  _loc8_.o18378.x = _loc8_.o18378.x - _loc22_ * _loc16_;
                  _loc8_.o18378.y = _loc8_.o18378.y - _loc22_ * _loc20_;
                  _loc5_.o11516 = _loc5_.o11516 + _loc10_ * (_loc12_.o5515.x * _loc20_ - _loc12_.o5515.y * _loc16_);
                  _loc5_.o18378.x = _loc5_.o18378.x + _loc17_ * _loc16_;
                  _loc5_.o18378.y = _loc5_.o18378.y + _loc17_ * _loc20_;
                  _loc3_++;
               }
            }
            else
            {
               _loc4_ = _loc2_.o13134;
               _loc3_ = 0;
               while(_loc3_ < _loc4_)
               {
                  _loc14_ = _loc2_.o16255[_loc3_];
                  _loc14_.o17624 = 0;
                  _loc14_.o13613 = 0;
                  _loc3_++;
               }
            }
            _loc6_++;
         }
      }
      
      public function o13623() : void
      {
         var _loc16_:int = 0;
         var _loc23_:* = null;
         var _loc38_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc49_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc56_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc11_:* = null;
         var _loc52_:* = null;
         var _loc18_:int = 0;
         var _loc40_:* = null;
         var _loc33_:* = null;
         var _loc32_:* = null;
         var _loc8_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc43_:* = null;
         var _loc44_:* = null;
         var _loc57_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc54_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc9_:Number = NaN;
         var _loc53_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:int = 0;
         var _loc5_:* = null;
         var _loc47_:* = null;
         var _loc48_:Number = NaN;
         var _loc51_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc50_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc29_:* = NaN;
         var _loc55_:* = NaN;
         var _loc26_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc34_:* = NaN;
         var _loc37_:* = NaN;
         var _loc24_:* = NaN;
         _loc18_ = 0;
         while(_loc18_ < o9460)
         {
            _loc40_ = o7878[_loc18_];
            _loc33_ = _loc40_.o6133;
            _loc32_ = _loc40_.o3428;
            _loc8_ = _loc33_.o11516;
            _loc28_ = _loc32_.o11516;
            _loc43_ = _loc33_.o18378;
            _loc44_ = _loc32_.o18378;
            _loc57_ = _loc33_.o15412;
            _loc39_ = _loc33_.o4988;
            _loc54_ = _loc32_.o15412;
            _loc22_ = _loc32_.o4988;
            _loc27_ = _loc40_.o1654.x;
            _loc13_ = _loc40_.o1654.y;
            _loc19_ = _loc13_;
            _loc9_ = -_loc27_;
            _loc53_ = _loc40_.o12438;
            _loc16_ = 0;
            while(_loc16_ < _loc40_.o13134)
            {
               _loc23_ = _loc40_.o16255[_loc16_];
               _loc14_ = _loc44_.x - _loc28_ * _loc23_.o5515.y - _loc43_.x + _loc8_ * _loc23_.o3702.y;
               _loc42_ = _loc44_.y + _loc28_ * _loc23_.o5515.x - _loc43_.y - _loc8_ * _loc23_.o3702.x;
               _loc49_ = _loc14_ * _loc19_ + _loc42_ * _loc9_;
               _loc10_ = _loc23_.o552 * -_loc49_;
               _loc30_ = _loc53_ * _loc23_.o17624;
               _loc3_ = o10852.o2404(_loc23_.o13613 + _loc10_,-_loc30_,_loc30_);
               _loc10_ = _loc3_ - _loc23_.o13613;
               _loc25_ = _loc10_ * _loc19_;
               _loc56_ = _loc10_ * _loc9_;
               _loc43_.x = _loc43_.x - _loc57_ * _loc25_;
               _loc43_.y = _loc43_.y - _loc57_ * _loc56_;
               _loc8_ = _loc8_ - _loc39_ * (_loc23_.o3702.x * _loc56_ - _loc23_.o3702.y * _loc25_);
               _loc44_.x = _loc44_.x + _loc54_ * _loc25_;
               _loc44_.y = _loc44_.y + _loc54_ * _loc56_;
               _loc28_ = _loc28_ + _loc22_ * (_loc23_.o5515.x * _loc56_ - _loc23_.o5515.y * _loc25_);
               _loc23_.o13613 = _loc3_;
               _loc16_++;
            }
            _loc2_ = _loc40_.o13134;
            if(_loc40_.o13134 == 1)
            {
               _loc23_ = _loc40_.o16255[0];
               _loc14_ = _loc44_.x + -_loc28_ * _loc23_.o5515.y - _loc43_.x - -_loc8_ * _loc23_.o3702.y;
               _loc42_ = _loc44_.y + _loc28_ * _loc23_.o5515.x - _loc43_.y - _loc8_ * _loc23_.o3702.x;
               _loc35_ = _loc14_ * _loc27_ + _loc42_ * _loc13_;
               _loc10_ = -_loc23_.o18840 * (_loc35_ - _loc23_.o7333);
               _loc3_ = _loc23_.o17624 + _loc10_;
               _loc3_ = _loc3_ > 0?_loc3_:0;
               _loc10_ = _loc3_ - _loc23_.o17624;
               _loc25_ = _loc10_ * _loc27_;
               _loc56_ = _loc10_ * _loc13_;
               _loc43_.x = _loc43_.x - _loc57_ * _loc25_;
               _loc43_.y = _loc43_.y - _loc57_ * _loc56_;
               _loc8_ = _loc8_ - _loc39_ * (_loc23_.o3702.x * _loc56_ - _loc23_.o3702.y * _loc25_);
               _loc44_.x = _loc44_.x + _loc54_ * _loc25_;
               _loc44_.y = _loc44_.y + _loc54_ * _loc56_;
               _loc28_ = _loc28_ + _loc22_ * (_loc23_.o5515.x * _loc56_ - _loc23_.o5515.y * _loc25_);
               _loc23_.o17624 = _loc3_;
            }
            else
            {
               _loc5_ = _loc40_.o16255[0];
               _loc47_ = _loc40_.o16255[1];
               _loc48_ = _loc5_.o17624;
               _loc51_ = _loc47_.o17624;
               _loc41_ = _loc44_.x - _loc28_ * _loc5_.o5515.y - _loc43_.x + _loc8_ * _loc5_.o3702.y;
               _loc15_ = _loc44_.y + _loc28_ * _loc5_.o5515.x - _loc43_.y - _loc8_ * _loc5_.o3702.x;
               _loc50_ = _loc44_.x - _loc28_ * _loc47_.o5515.y - _loc43_.x + _loc8_ * _loc47_.o3702.y;
               _loc36_ = _loc44_.y + _loc28_ * _loc47_.o5515.x - _loc43_.y - _loc8_ * _loc47_.o3702.x;
               _loc29_ = Number(_loc41_ * _loc27_ + _loc15_ * _loc13_);
               _loc55_ = Number(_loc50_ * _loc27_ + _loc36_ * _loc13_);
               _loc26_ = _loc29_ - _loc5_.o7333;
               _loc31_ = _loc55_ - _loc47_.o7333;
               _loc11_ = _loc40_.K;
               _loc26_ = _loc26_ - (_loc11_.o19549.x * _loc48_ + _loc11_.o20685.x * _loc51_);
               _loc31_ = _loc31_ - (_loc11_.o19549.y * _loc48_ + _loc11_.o20685.y * _loc51_);
               _loc34_ = 0.001;
               _loc11_ = _loc40_.o18840;
               _loc37_ = Number(-(_loc11_.o19549.x * _loc26_ + _loc11_.o20685.x * _loc31_));
               _loc24_ = Number(-(_loc11_.o19549.y * _loc26_ + _loc11_.o20685.y * _loc31_));
               if(_loc37_ >= 0 && _loc24_ >= 0)
               {
                  _loc4_ = _loc37_ - _loc48_;
                  _loc1_ = _loc24_ - _loc51_;
                  _loc21_ = _loc4_ * _loc27_;
                  _loc12_ = _loc4_ * _loc13_;
                  _loc7_ = _loc1_ * _loc27_;
                  _loc20_ = _loc1_ * _loc13_;
                  _loc43_.x = _loc43_.x - _loc57_ * (_loc21_ + _loc7_);
                  _loc43_.y = _loc43_.y - _loc57_ * (_loc12_ + _loc20_);
                  _loc8_ = _loc8_ - _loc39_ * (_loc5_.o3702.x * _loc12_ - _loc5_.o3702.y * _loc21_ + _loc47_.o3702.x * _loc20_ - _loc47_.o3702.y * _loc7_);
                  _loc44_.x = _loc44_.x + _loc54_ * (_loc21_ + _loc7_);
                  _loc44_.y = _loc44_.y + _loc54_ * (_loc12_ + _loc20_);
                  _loc28_ = _loc28_ + _loc22_ * (_loc5_.o5515.x * _loc12_ - _loc5_.o5515.y * _loc21_ + _loc47_.o5515.x * _loc20_ - _loc47_.o5515.y * _loc7_);
                  _loc5_.o17624 = _loc37_;
                  _loc47_.o17624 = _loc24_;
               }
               else
               {
                  _loc37_ = Number(-_loc5_.o18840 * _loc26_);
                  _loc24_ = 0;
                  _loc29_ = 0;
                  _loc55_ = Number(_loc40_.K.o19549.y * _loc37_ + _loc31_);
                  if(_loc37_ >= 0 && _loc55_ >= 0)
                  {
                     _loc4_ = _loc37_ - _loc48_;
                     _loc1_ = _loc24_ - _loc51_;
                     _loc21_ = _loc4_ * _loc27_;
                     _loc12_ = _loc4_ * _loc13_;
                     _loc7_ = _loc1_ * _loc27_;
                     _loc20_ = _loc1_ * _loc13_;
                     _loc43_.x = _loc43_.x - _loc57_ * (_loc21_ + _loc7_);
                     _loc43_.y = _loc43_.y - _loc57_ * (_loc12_ + _loc20_);
                     _loc8_ = _loc8_ - _loc39_ * (_loc5_.o3702.x * _loc12_ - _loc5_.o3702.y * _loc21_ + _loc47_.o3702.x * _loc20_ - _loc47_.o3702.y * _loc7_);
                     _loc44_.x = _loc44_.x + _loc54_ * (_loc21_ + _loc7_);
                     _loc44_.y = _loc44_.y + _loc54_ * (_loc12_ + _loc20_);
                     _loc28_ = _loc28_ + _loc22_ * (_loc5_.o5515.x * _loc12_ - _loc5_.o5515.y * _loc21_ + _loc47_.o5515.x * _loc20_ - _loc47_.o5515.y * _loc7_);
                     _loc5_.o17624 = _loc37_;
                     _loc47_.o17624 = _loc24_;
                  }
                  else
                  {
                     _loc37_ = 0;
                     _loc24_ = Number(-_loc47_.o18840 * _loc31_);
                     _loc29_ = Number(_loc40_.K.o20685.x * _loc24_ + _loc26_);
                     _loc55_ = 0;
                     if(_loc24_ >= 0 && _loc29_ >= 0)
                     {
                        _loc4_ = _loc37_ - _loc48_;
                        _loc1_ = _loc24_ - _loc51_;
                        _loc21_ = _loc4_ * _loc27_;
                        _loc12_ = _loc4_ * _loc13_;
                        _loc7_ = _loc1_ * _loc27_;
                        _loc20_ = _loc1_ * _loc13_;
                        _loc43_.x = _loc43_.x - _loc57_ * (_loc21_ + _loc7_);
                        _loc43_.y = _loc43_.y - _loc57_ * (_loc12_ + _loc20_);
                        _loc8_ = _loc8_ - _loc39_ * (_loc5_.o3702.x * _loc12_ - _loc5_.o3702.y * _loc21_ + _loc47_.o3702.x * _loc20_ - _loc47_.o3702.y * _loc7_);
                        _loc44_.x = _loc44_.x + _loc54_ * (_loc21_ + _loc7_);
                        _loc44_.y = _loc44_.y + _loc54_ * (_loc12_ + _loc20_);
                        _loc28_ = _loc28_ + _loc22_ * (_loc5_.o5515.x * _loc12_ - _loc5_.o5515.y * _loc21_ + _loc47_.o5515.x * _loc20_ - _loc47_.o5515.y * _loc7_);
                        _loc5_.o17624 = _loc37_;
                        _loc47_.o17624 = _loc24_;
                     }
                     else
                     {
                        _loc37_ = 0;
                        _loc24_ = 0;
                        _loc29_ = _loc26_;
                        _loc55_ = _loc31_;
                        if(_loc29_ >= 0 && _loc55_ >= 0)
                        {
                           _loc4_ = _loc37_ - _loc48_;
                           _loc1_ = _loc24_ - _loc51_;
                           _loc21_ = _loc4_ * _loc27_;
                           _loc12_ = _loc4_ * _loc13_;
                           _loc7_ = _loc1_ * _loc27_;
                           _loc20_ = _loc1_ * _loc13_;
                           _loc43_.x = _loc43_.x - _loc57_ * (_loc21_ + _loc7_);
                           _loc43_.y = _loc43_.y - _loc57_ * (_loc12_ + _loc20_);
                           _loc8_ = _loc8_ - _loc39_ * (_loc5_.o3702.x * _loc12_ - _loc5_.o3702.y * _loc21_ + _loc47_.o3702.x * _loc20_ - _loc47_.o3702.y * _loc7_);
                           _loc44_.x = _loc44_.x + _loc54_ * (_loc21_ + _loc7_);
                           _loc44_.y = _loc44_.y + _loc54_ * (_loc12_ + _loc20_);
                           _loc28_ = _loc28_ + _loc22_ * (_loc5_.o5515.x * _loc12_ - _loc5_.o5515.y * _loc21_ + _loc47_.o5515.x * _loc20_ - _loc47_.o5515.y * _loc7_);
                           _loc5_.o17624 = _loc37_;
                           _loc47_.o17624 = _loc24_;
                        }
                     }
                  }
               }
            }
            _loc33_.o11516 = _loc8_;
            _loc32_.o11516 = _loc28_;
            _loc18_++;
         }
      }
      
      public function o17728() : void
      {
         var _loc4_:int = 0;
         var _loc1_:* = null;
         var _loc6_:* = null;
         var _loc2_:int = 0;
         var _loc5_:* = null;
         var _loc3_:* = null;
         _loc4_ = 0;
         while(_loc4_ < o9460)
         {
            _loc1_ = o7878[_loc4_];
            _loc6_ = _loc1_.o12249;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.o13134)
            {
               _loc5_ = _loc6_.o6942[_loc2_];
               _loc3_ = _loc1_.o16255[_loc2_];
               _loc5_.o17089 = _loc3_.o17624;
               _loc5_.o1881 = _loc3_.o13613;
               _loc2_++;
            }
            _loc4_++;
         }
      }
      
      public function o18754(param1:Number) : Boolean
      {
         var _loc11_:int = 0;
         var _loc2_:* = null;
         var _loc13_:* = null;
         var _loc6_:* = null;
         var _loc21_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc16_:* = null;
         var _loc14_:* = null;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc12_:* = 0;
         _loc11_ = 0;
         while(_loc11_ < o9460)
         {
            _loc2_ = o7878[_loc11_];
            _loc13_ = _loc2_.o6133;
            _loc6_ = _loc2_.o3428;
            _loc21_ = _loc13_.o12897 * _loc13_.o15412;
            _loc23_ = _loc13_.o12897 * _loc13_.o4988;
            _loc18_ = _loc6_.o12897 * _loc6_.o15412;
            _loc15_ = _loc6_.o12897 * _loc6_.o4988;
            o16422.o3836(_loc2_);
            _loc3_ = o16422.o17937;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.o13134)
            {
               _loc16_ = _loc2_.o16255[_loc4_];
               _loc14_ = o16422.o6942[_loc4_];
               _loc10_ = o16422.o5075[_loc4_];
               _loc20_ = _loc14_.x - _loc13_.o19080.o9412.x;
               _loc9_ = _loc14_.y - _loc13_.o19080.o9412.y;
               _loc8_ = _loc14_.x - _loc6_.o19080.o9412.x;
               _loc5_ = _loc14_.y - _loc6_.o19080.o9412.y;
               _loc12_ = _loc12_ < _loc10_?_loc12_:_loc10_;
               _loc7_ = o10852.o2404(param1 * (_loc10_ + 0.005),-0.2,0);
               _loc22_ = -_loc16_.o20750 * _loc7_;
               _loc17_ = _loc22_ * _loc3_.x;
               _loc19_ = _loc22_ * _loc3_.y;
               _loc13_.o19080.o9412.x = _loc13_.o19080.o9412.x - _loc21_ * _loc17_;
               _loc13_.o19080.o9412.y = _loc13_.o19080.o9412.y - _loc21_ * _loc19_;
               _loc13_.o19080.o12395 = _loc13_.o19080.o12395 - _loc23_ * (_loc20_ * _loc19_ - _loc9_ * _loc17_);
               _loc13_.o14187();
               _loc6_.o19080.o9412.x = _loc6_.o19080.o9412.x + _loc18_ * _loc17_;
               _loc6_.o19080.o9412.y = _loc6_.o19080.o9412.y + _loc18_ * _loc19_;
               _loc6_.o19080.o12395 = _loc6_.o19080.o12395 + _loc15_ * (_loc8_ * _loc19_ - _loc5_ * _loc17_);
               _loc6_.o14187();
               _loc4_++;
            }
            _loc11_++;
         }
         return _loc12_ > -1.5 * 0.005;
      }
   }
}
