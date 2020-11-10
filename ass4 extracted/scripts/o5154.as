package
{
   public class o5154
   {
       
      
      public var o10267:Vector.<o2736>;
      
      public function o5154(param1:o2693)
      {
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc4_:* = null;
         var _loc13_:int = 0;
         var _loc2_:int = 0;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc16_:* = null;
         var _loc3_:* = undefined;
         var _loc12_:* = null;
         var _loc15_:* = undefined;
         var _loc8_:* = null;
         o10267 = new Vector.<o2736>();
         super();
         var _loc5_:int = param1.o3554("levelPacks");
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = "levelPacks." + _loc7_.toString();
            _loc4_ = new o2736();
            _loc4_.id = param1.o3554(_loc6_ + ".id");
            _loc4_.o3330 = param1.o9009(_loc6_ + ".packName");
            _loc4_.o10387 = param1.o3554(_loc6_ + ".unlockLevel");
            _loc4_.o5820 = param1.o18357(_loc6_ + ".hidden");
            _loc13_ = param1.o3554(_loc6_ + ".levels");
            _loc4_.o19855 = new Vector.<o69>();
            _loc2_ = 0;
            while(_loc2_ < _loc13_)
            {
               _loc10_ = new o69();
               _loc10_.o5916 = _loc4_;
               _loc10_.o7023 = _loc2_;
               _loc10_.o5894 = _loc2_ + 1;
               _loc11_ = _loc6_ + ".levels." + _loc2_.toString();
               _loc10_.o18800 = param1.o3554(_loc11_ + ".levelId");
               _loc10_.o17861 = param1.o3554(_loc11_ + ".cash");
               _loc10_.o6393 = param1.o9009(_loc11_ + ".preMissionBrief");
               _loc10_.o7219 = param1.o9009(_loc11_ + ".frameLabel");
               _loc10_.o1007 = param1.o9009(_loc11_ + ".levelName");
               _loc10_.o10387 = param1.o3554(_loc11_ + ".unlockLevel");
               _loc10_.o16204 = param1.o9009(_loc11_ + ".missionFailedMessage");
               if(_loc10_.o16204 == null)
               {
                  _loc10_.o16204 = "";
               }
               _loc10_.o1745 = param1.o9009(_loc11_ + ".shortMissionFailedMessage");
               if(_loc10_.o1745 == null)
               {
                  _loc10_.o1745 = "";
               }
               _loc10_.o16372 = param1.o3554(_loc11_ + ".missionFailedImageFrameIndex");
               _loc10_.o13385 = param1.o18357(_loc11_ + ".showObjectiveAfterFirstCombotMessage");
               _loc16_ = param1.o9009(_loc11_ + ".introAnimation");
               _loc10_.o3807 = 0;
               if(_loc16_ != null)
               {
                  if(_loc16_ == "ONSLAUGHT")
                  {
                     _loc10_.o3807 = 1;
                  }
                  else if(_loc16_ == "VACCINE")
                  {
                     _loc10_.o3807 = 2;
                  }
                  else
                  {
                     throw new Error("Invalid intro key " + _loc16_);
                  }
               }
               _loc3_ = param1.o11136(_loc11_ + ".objectives");
               _loc10_.o19841 = new Vector.<String>();
               var _loc18_:int = 0;
               var _loc17_:* = _loc3_;
               for each(var _loc14_ in _loc3_)
               {
                  _loc12_ = _loc11_ + ".objectives." + _loc14_;
                  _loc10_.o19841.push(param1.o9009(_loc12_));
               }
               _loc15_ = param1.o18150(_loc11_ + ".preloadAssets");
               _loc10_.o8530 = new Vector.<String>();
               var _loc20_:int = 0;
               var _loc19_:* = _loc15_;
               for each(var _loc9_ in _loc15_)
               {
                  _loc8_ = _loc11_ + ".preloadAssets." + _loc9_;
                  _loc10_.o8530.push(param1.o9009(_loc8_));
               }
               _loc4_.o19855.push(_loc10_);
               _loc2_++;
            }
            this.o10267.push(_loc4_);
            _loc7_++;
         }
      }
      
      public function o17565(param1:int) : o69
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = this.o10267;
         for each(var _loc2_ in this.o10267)
         {
            _loc3_ = _loc2_.o17565(param1);
            if(_loc3_ != null)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function o946(param1:int) : o2736
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o10267;
         for each(var _loc2_ in this.o10267)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o12655() : Vector.<o69>
      {
         var _loc1_:* = null;
         var _loc4_:Vector.<o69> = new Vector.<o69>();
         if(o14200.o19505.o202.o18339 == 2)
         {
            var _loc8_:int = 0;
            var _loc7_:* = this.o10267;
            for each(var _loc3_ in this.o10267)
            {
               if(_loc3_.o3330 == "Nightmare")
               {
                  var _loc6_:int = 0;
                  var _loc5_:* = _loc3_.o19855;
                  for each(_loc1_ in _loc3_.o19855)
                  {
                     _loc4_.push(_loc1_);
                  }
                  continue;
               }
            }
         }
         else
         {
            var _loc12_:int = 0;
            var _loc11_:* = this.o10267;
            for each(var _loc2_ in this.o10267)
            {
               if(_loc2_.o5820 == false)
               {
                  var _loc10_:int = 0;
                  var _loc9_:* = _loc2_.o19855;
                  for each(_loc1_ in _loc2_.o19855)
                  {
                     _loc4_.push(_loc1_);
                  }
                  continue;
               }
            }
         }
         return _loc4_;
      }
      
      public function o14234() : Vector.<o69>
      {
         var _loc1_:* = null;
         var _loc3_:Vector.<o69> = new Vector.<o69>();
         var _loc2_:o2736 = this.o10267[1];
         var _loc5_:int = 0;
         var _loc4_:* = _loc2_.o19855;
         for each(_loc1_ in _loc2_.o19855)
         {
            _loc3_.push(_loc1_);
         }
         return _loc3_;
      }
      
      public function o14339(param1:o15723) : Vector.<o69>
      {
         var _loc2_:* = null;
         var _loc4_:Vector.<o69> = new Vector.<o69>();
         var _loc3_:o2736 = this.o10267[5];
         var _loc6_:int = 0;
         var _loc5_:* = _loc3_.o19855;
         for each(_loc2_ in _loc3_.o19855)
         {
            _loc4_.push(_loc2_);
            _loc2_.o1007 = _loc2_.o1007;
         }
         return _loc4_;
      }
      
      public function o4014() : Vector.<o2736>
      {
         var _loc2_:Vector.<o2736> = new Vector.<o2736>();
         var _loc4_:int = 0;
         var _loc3_:* = this.o10267;
         for each(var _loc1_ in this.o10267)
         {
            if(_loc1_.o5820 == false)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
      
      public function o12683() : Vector.<o69>
      {
         var _loc6_:* = undefined;
         var _loc4_:o14200 = o14200.o19505;
         var _loc3_:int = _loc4_.o202.o18339;
         if(_loc3_ == 5 || _loc3_ == 4 || _loc3_ == 3 || _loc3_ == 7)
         {
            _loc6_ = o14234();
         }
         else if(_loc4_.o202.o10220 != null)
         {
            _loc6_ = o14339(_loc4_.o202.o10220);
         }
         else
         {
            _loc6_ = o12655();
         }
         var _loc1_:Vector.<o69> = new Vector.<o69>();
         var _loc5_:int = o14200.o19505.o7923.level;
         var _loc8_:int = 0;
         var _loc7_:* = _loc6_;
         for each(var _loc2_ in _loc6_)
         {
            if(_loc5_ >= _loc2_.o10387)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function o20812(param1:Vector.<o69>) : Vector.<int>
      {
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_.push(_loc2_.o18800);
         }
         return _loc3_;
      }
      
      public function o3945(param1:o15723) : o2736
      {
         var _loc5_:o2736 = o946(6);
         var _loc4_:o2736 = new o2736();
         _loc4_.o5820 = false;
         _loc4_.id = _loc5_.id;
         _loc4_.o10387 = 0;
         _loc4_.o3330 = _loc5_.o3330;
         _loc4_.o19855 = new Vector.<o69>();
         var _loc2_:o5096 = o4519.o8116.o476.o15128.o13079(param1.o18339);
         var _loc7_:int = 0;
         var _loc6_:* = _loc5_.o19855;
         for each(var _loc3_ in _loc5_.o19855)
         {
            if(_loc2_.o2122.indexOf(_loc3_.o18800) >= 0)
            {
               _loc4_.o19855.push(_loc3_);
            }
         }
         return _loc4_;
      }
   }
}
