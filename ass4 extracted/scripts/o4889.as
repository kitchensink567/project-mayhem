package
{
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.utils.Dictionary;
   
   public class o4889
   {
      
      private static const o5277:String = "LKCJHH#l(*H@09gHLOIF6y*(@379oHDKFo7";
       
      
      private var o19419:o14200;
      
      public var o4848:o6701;
      
      private const o10287:int = 6;
      
      public var o3501:Boolean = true;
      
      public function o4889(param1:o14200, param2:String)
      {
         super();
         this.o19419 = param1;
         o4848 = new o6701("sas4G",o15416,1,param2);
      }
      
      public function get o4539() : NKGatewayUser
      {
         return o4848.o4539;
      }
      
      public function o14986(param1:NKGatewayUser) : void
      {
         value = param1;
         o3501 = value != null;
         o4848.o14986(value).defer(function():*
         {
            var /*UnknownSlot*/:* = function(param1:Boolean):void
            {
               o17756(o4848.o6216());
               if(o4519.o8116.o15020 != null)
               {
                  o4519.o8116.profileData.o5292.o16679.o840();
                  o4519.o10093.o19419.o5292.o12970.o840();
               }
               o4848.o18278.o3744();
            };
            return function(param1:Boolean):void
            {
               o17756(o4848.o6216());
               if(o4519.o8116.o15020 != null)
               {
                  o4519.o8116.profileData.o5292.o16679.o840();
                  o4519.o10093.o19419.o5292.o12970.o840();
               }
               o4848.o18278.o3744();
            };
         }());
      }
      
      private function o15416(param1:*) : void
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case 1:
               break;
            case 2:
         }
      }
      
      public function o7892(param1:int, param2:String, param3:int) : o9145
      {
         var _loc18_:* = null;
         var _loc8_:* = null;
         var _loc27_:* = null;
         var _loc20_:* = null;
         var _loc23_:int = 0;
         var _loc10_:* = null;
         var _loc22_:int = 0;
         var _loc30_:Boolean = false;
         var _loc11_:* = null;
         var _loc15_:int = 0;
         var _loc14_:int = 0;
         var _loc6_:o9145 = new o9145(o19419);
         _loc6_.o12110 = param2;
         _loc6_.o2274 = param3;
         var _loc24_:String = "";
         switch(int(_loc6_.o2274))
         {
            case 0:
               _loc24_ = "assault";
               break;
            case 1:
               _loc24_ = "medic";
               break;
            case 2:
               _loc24_ = "heavy";
         }
         var _loc7_:o17849 = o4519.o8116.o16619;
         var _loc5_:o2693 = o19419.o19552;
         _loc6_.o17638.o197(2,_loc5_.o3554("newCharacter.standardAmmo.smg"));
         _loc6_.o17638.o197(3,_loc5_.o3554("newCharacter.standardAmmo.assaultRifle"));
         _loc6_.o17638.o197(9,_loc5_.o3554("newCharacter.standardAmmo.lmg"));
         _loc6_.o17638.o197(4,_loc5_.o3554("newCharacter.standardAmmo.shotgun"));
         _loc6_.o17638.o197(6,_loc5_.o3554("newCharacter.standardAmmo.missile"));
         _loc6_.o17638.o197(1,0);
         _loc6_.o17638.o197(5,0);
         _loc6_.o17638.o197(8,0);
         _loc6_.o17638.o197(10,0);
         _loc6_.o17638.o197(11,0);
         var _loc16_:String = "newCharacter.characterClass." + _loc24_ + ".defaultWeapons";
         var _loc13_:Vector.<int> = _loc5_.o3791(_loc16_);
         var _loc32_:int = 0;
         var _loc31_:* = o4519.o8116.o1184.o6795;
         for each(var _loc28_ in o4519.o8116.o1184.o6795)
         {
            if(_loc13_.indexOf(_loc28_.id) >= 0)
            {
               _loc18_ = o4519.o8116.o1184.o17638[_loc28_.id];
               _loc8_ = new o10481(_loc28_,0);
               _loc27_ = new o14096().init(_loc8_,_loc18_,_loc7_,0,o19419.data.o20953());
               _loc20_ = _loc6_.o17638.o8567(_loc27_);
               _loc20_.o15851 = true;
               _loc6_.o1819().push(_loc27_);
            }
         }
         var _loc17_:Vector.<int> = _loc5_.o3791("newCharacter.defaultEquipment");
         _loc6_.o4256 = new Vector.<o1253>();
         var _loc34_:int = 0;
         var _loc33_:* = o4519.o8116.o9511.o4256;
         for each(var _loc19_ in o4519.o8116.o9511.o4256)
         {
            if(_loc17_.indexOf(_loc19_.id) >= 0)
            {
               _loc6_.o4256.push(new o1253().init(_loc19_,0,_loc7_,0,o19419.data.o8334()));
            }
         }
         _loc6_.o7993 = new Vector.<o14096>();
         var _loc26_:int = 0;
         var _loc25_:String = "newCharacter.characterClass." + _loc24_ + ".defaultEquippedWeapon";
         var _loc21_:Vector.<int> = _loc5_.o3791(_loc25_);
         var _loc9_:int = -1;
         if(_loc21_.length > 0)
         {
            _loc9_ = _loc21_[0];
            _loc21_.splice(0,1);
         }
         _loc23_ = 0;
         while(_loc23_ < _loc6_.o1819().length)
         {
            _loc10_ = _loc6_.o1819()[_loc23_];
            if(_loc26_ == 0)
            {
               if(_loc10_.o19940 && _loc10_.o2752.o5168 == false && _loc10_.o10748 == _loc9_)
               {
                  _loc6_.o7993.push(_loc10_);
                  _loc26_++;
                  break;
               }
            }
            _loc23_++;
         }
         _loc23_ = 0;
         while(_loc23_ < _loc6_.o1819().length)
         {
            _loc10_ = _loc6_.o1819()[_loc23_];
            if(_loc10_.o19940 == false && _loc10_.o2752.o5168 == false && _loc21_.indexOf(_loc10_.o10748) >= 0)
            {
               _loc6_.o7993.push(_loc10_);
               _loc26_++;
            }
            if(_loc26_ != 3)
            {
               _loc23_++;
               continue;
            }
            break;
         }
         while(_loc6_.o7993.length < 3)
         {
            _loc6_.o7993.push(null);
         }
         var _loc29_:Vector.<int> = _loc5_.o3791("newCharacter.defaultEquippedEquipment");
         _loc22_ = 0;
         while(_loc22_ < 5)
         {
            _loc30_ = false;
            _loc23_ = 0;
            while(_loc23_ < _loc6_.o4256.length)
            {
               _loc11_ = _loc6_.o4256[_loc23_];
               if(_loc11_.o8395 == _loc22_ && _loc29_.indexOf(_loc11_.o15372) >= 0)
               {
                  _loc6_.o420.push(_loc11_);
                  _loc30_ = true;
                  break;
               }
               _loc23_++;
            }
            if(_loc30_ == false)
            {
               _loc6_.o420.push(null);
            }
            _loc22_++;
         }
         _loc6_.o3525.o14271(1,_loc5_.o3554("newCharacter.defaultGrenades.m45"));
         _loc6_.o3525.o14271(2,_loc5_.o3554("newCharacter.defaultGrenades.cryo"));
         var _loc12_:Array = _loc5_.o9009("newCharacter.characterClass." + _loc24_ + ".defaultSkills").split(",");
         var _loc36_:int = 0;
         var _loc35_:* = _loc12_;
         for each(var _loc4_ in _loc12_)
         {
            _loc15_ = parseInt(_loc4_);
            _loc6_.o4500(_loc15_);
         }
         if(param1 >= o19419.data.o11400.length)
         {
            _loc14_ = o19419.data.o11400.length;
            while(_loc14_ < param1)
            {
               o19419.data.o11400.push(null);
               _loc14_++;
            }
         }
         _loc6_.o6333 = o4519.o8116.o476.o9095.o3662;
         _loc6_.o17808 = true;
         _loc6_.o10067();
         o19419.data.o11400[param1] = _loc6_;
         this.save();
         return _loc6_;
      }
      
      public function o13() : o16124
      {
         var promise:o16124 = new o16124();
         var o10585:o16124 = null;
         var o71:o16124 = null;
         o10585 = o4519.o8116.o970.o12798(6);
         o71 = o4519.o8116.o970.o13634(o4519.o8116.o4958);
         var o19165:Array = [o10585,o71];
         o19165.push(o4519.o8116.o1184.o17420());
         o15714.o18684(o19165,function(param1:Object, param2:Object, param3:Object):void
         {
            o18263 = param1;
            o12421 = param2;
            o2362 = param3;
            o19419.o19552 = o18263 as o2693;
            o4519.o8116.o20455(o4519.o8116.o5893,o19419.o19552.o14212,"game");
            var o4512:Dictionary = o4519.o8116.o4958.o9620;
            o4519.o8116.o9589.o4068();
            var o7860:Array = [];
            o7860.push(o4519.o8116.o4235.o6091());
            o7860.push(o4519.o8116.o9986.o17623());
            o7860.push(o4519.o8116.o9511.o3955());
            o7860.push(o4519.o8116.o15916.o8166());
            o7860.push(o4519.o8116.o970.o12798(10));
            o7860.push(o4519.o8116.o970.o12798(11));
            o7860.push(o4519.o8116.o970.o12798(12));
            o7860.push(o4519.o8116.o4812.o11463());
            o7860.push(o4519.o8116.o1184.o19348());
            o7860.push(o4519.o8116.o1184.o19373());
            o15714.o18684(o7860,function(param1:Object, param2:Object, param3:Object, param4:Object, param5:Object, param6:Object, param7:Object, param8:Object, param9:Object, param10:Object):void
            {
               var _loc12_:* = null;
               var _loc15_:o2693 = param7 as o2693;
               var _loc11_:o2693 = param5 as o2693;
               var _loc13_:o2693 = param6 as o2693;
               var _loc17_:int = 0;
               var _loc16_:* = _loc13_.o14212;
               for(var _loc14_ in _loc13_.o14212)
               {
                  _loc12_ = _loc13_.o14212[_loc14_];
                  if(_loc12_.indexOf("[CREDIT_TYPE]") != -1)
                  {
                     _loc12_ = _loc12_;
                  }
                  if(o4519.o17061)
                  {
                     _loc12_ = _loc12_.replace("[CREDIT_TYPE]","Kreds");
                  }
                  else
                  {
                     _loc12_ = _loc12_.replace("[CREDIT_TYPE]","NK Coins");
                  }
                  _loc13_.o14212[_loc14_] = _loc12_;
               }
               o19419.o5099 = _loc13_;
               o4519.o8116.o20455(o4519.o8116.o5893,_loc15_.o14212,"playerClass");
               o4519.o8116.o20455(o4519.o8116.o5893,_loc11_.o14212,"ammo");
               o4519.o8116.o20455(o4519.o8116.o5893,o19419.o5099.o14212,"localization");
               o19419.o5292.init(o19419.o19552,_loc15_,_loc11_);
               o19419.o5292.o6666 = new o6296();
               o19419.o5292.o6666.init(o19419.o19552);
               o19419.data.o11400 = new Vector.<o9145>();
               promise.data = o19419;
            });
         });
         return promise;
      }
      
      public function load() : o16124
      {
         var _loc1_:o16124 = new o16124();
         _loc1_.data = o19419;
         return _loc1_;
      }
      
      public function o19318(param1:int, param2:int = 0, param3:int = 0, param4:Boolean = false) : o14096
      {
         var _loc9_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc5_:* = null;
         var _loc11_:int = 0;
         var _loc10_:* = o4519.o8116.o1184.o6795;
         for each(var _loc6_ in o4519.o8116.o1184.o6795)
         {
            if(_loc6_.id == param1)
            {
               _loc9_ = o4519.o8116.o1184.o17638[_loc6_.id];
               _loc7_ = new o10481(_loc6_,param2 > 0?param2:o20852.o3471(1,10));
               _loc8_ = new o14096().init(_loc7_,_loc9_,o4519.o8116.o16619,param3 > 0?param3:o20852.random(3),o19419.data.o20953());
               _loc8_.o4339();
               if(param4)
               {
                  if(o12696.o20082())
                  {
                     _loc5_ = o14200.o19505.o5292.o10365.o2100(_loc7_.id);
                     if(_loc5_.o16173 != 0)
                     {
                        _loc8_.o4752 = _loc5_.o16173;
                     }
                  }
               }
               else
               {
                  _loc8_.o4752 = 0;
               }
               return _loc8_;
            }
         }
         return null;
      }
      
      public function o10221(param1:int, param2:Boolean = false) : o14096
      {
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc9_:int = 0;
         var _loc8_:* = o4519.o8116.o1184.o6795;
         for each(var _loc4_ in o4519.o8116.o1184.o6795)
         {
            if(_loc4_.id == param1)
            {
               _loc7_ = o4519.o8116.o1184.o17638[_loc4_.id];
               _loc5_ = new o10481(_loc4_,10);
               _loc6_ = new o14096().init(_loc5_,_loc7_,o4519.o8116.o16619,3,o19419.data.o20953());
               _loc6_.o4339();
               if(param2)
               {
                  if(o12696.o20082())
                  {
                     _loc3_ = o14200.o19505.o5292.o10365.o2100(_loc5_.id);
                     if(_loc3_.o16173 != 0)
                     {
                        _loc6_.o4752 = _loc3_.o16173;
                     }
                  }
               }
               else
               {
                  _loc6_.o4752 = 0;
               }
               return _loc6_;
            }
         }
         return null;
      }
      
      public function o11296(param1:o9145) : void
      {
         var _loc4_:* = null;
         var _loc3_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o1184.o6795;
         for each(var _loc2_ in o4519.o8116.o1184.o6795)
         {
            if(_loc2_.o5168 == false && _loc2_.o6947 == false && param1.o3326(_loc2_.id) == null)
            {
               _loc4_ = o10221(_loc2_.id);
               param1.o20444(_loc4_);
            }
         }
         this.save();
      }
      
      public function o15325(param1:o9145) : void
      {
         var _loc4_:* = null;
         var _loc3_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o1184.o6795;
         for each(var _loc2_ in o4519.o8116.o1184.o6795)
         {
            if(_loc2_.o5168 == false && _loc2_.o6947 == false && param1.o3326(_loc2_.id) == null)
            {
               if(_loc2_.id >= 141 && _loc2_.id < 183)
               {
                  _loc4_ = o10221(_loc2_.id);
                  param1.o20444(_loc4_);
               }
            }
         }
         this.save();
      }
      
      public function o455(param1:o9145) : void
      {
         var _loc4_:* = null;
         var _loc3_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o1184.o6795;
         for each(var _loc2_ in o4519.o8116.o1184.o6795)
         {
            if(_loc2_.o5168 == false && _loc2_.o6947 == false && param1.o3326(_loc2_.id) == null)
            {
               if(_loc2_.id == 183)
               {
                  _loc4_ = o10221(_loc2_.id);
                  param1.o20444(_loc4_);
               }
            }
         }
         this.save();
      }
      
      public function o8706(param1:o9145) : void
      {
         var _loc4_:* = null;
         var _loc3_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o1184.o6795;
         for each(var _loc2_ in o4519.o8116.o1184.o6795)
         {
            if(_loc2_.o5168 == false && _loc2_.o6947 == false && param1.o3326(_loc2_.id) == null)
            {
               if(_loc2_.id > 183)
               {
                  _loc4_ = o10221(_loc2_.id);
                  param1.o20444(_loc4_);
               }
            }
         }
         this.save();
      }
      
      public function o20444(param1:o9145, param2:o8925, param3:int, param4:int) : o14096
      {
         var _loc5_:* = null;
         var _loc6_:o17849 = o4519.o8116.o16619;
         if(param3 < 0)
         {
            param3 = 0;
         }
         else if(param3 > 12)
         {
            param3 = 12;
         }
         if(param4 < 0)
         {
            param4 = 0;
         }
         else if(param4 > 4)
         {
            param4 = 4;
         }
         var _loc9_:o15109 = o4519.o8116.o1184.o17638[param2.id];
         var _loc7_:o10481 = new o10481(param2,param3);
         var _loc8_:o14096 = new o14096().init(_loc7_,_loc9_,_loc6_,param4,o19419.data.o20953());
         _loc8_.o4339();
         param1.o20444(_loc8_);
         if(o12696.o20082())
         {
            _loc5_ = o14200.o19505.o5292.o10365.o2100(_loc7_.id);
            _loc8_.o4752 = _loc5_.o16173;
         }
         else
         {
            _loc8_.o4752 = 0;
         }
         return _loc8_;
      }
      
      public function o4938(param1:int, param2:int = 10, param3:int = 2) : o1253
      {
         var _loc4_:* = null;
         var _loc6_:o17849 = o4519.o8116.o16619;
         var _loc8_:int = 0;
         var _loc7_:* = o4519.o8116.o9511.o4256;
         for each(var _loc5_ in o4519.o8116.o9511.o4256)
         {
            if(_loc5_.id == param1)
            {
               _loc4_ = null;
               _loc4_ = new o1253().init(_loc5_,param2,_loc6_,param3,o19419.data.o8334());
               _loc4_.o1281();
               return _loc4_;
            }
         }
         return null;
      }
      
      public function o20934(param1:o9145) : void
      {
         var _loc2_:* = null;
         var _loc4_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o9511.o4256;
         for each(var _loc3_ in o4519.o8116.o9511.o4256)
         {
            if(param1.o16689(_loc3_.id) == null)
            {
               _loc2_ = null;
               _loc2_ = new o1253().init(_loc3_,10,_loc4_,2,o19419.data.o8334());
               _loc2_.o1281();
               param1.o4256.push(_loc2_);
            }
         }
         this.save();
      }
      
      public function o1816(param1:o9145) : void
      {
         var _loc2_:* = null;
         var _loc4_:o17849 = o4519.o8116.o16619;
         var _loc6_:int = 0;
         var _loc5_:* = o4519.o8116.o9511.o4256;
         for each(var _loc3_ in o4519.o8116.o9511.o4256)
         {
            if(_loc3_.id >= 173 && _loc3_.id < 216)
            {
               _loc2_ = null;
               _loc2_ = new o1253().init(_loc3_,10,_loc4_,2,o19419.data.o8334());
               _loc2_.o1281();
               param1.o4256.push(_loc2_);
            }
         }
         this.save();
      }
      
      public function o20282(param1:o9145) : void
      {
      }
      
      public function o16590(param1:o9145, param2:o12420, param3:int, param4:int) : o1253
      {
         var _loc6_:o17849 = o4519.o8116.o16619;
         if(param3 < 0)
         {
            param3 = 0;
         }
         else if(param3 > 12)
         {
            param3 = 12;
         }
         if(param4 < 0)
         {
            param4 = 0;
         }
         var _loc5_:o1253 = null;
         _loc5_ = new o1253().init(param2,param3,_loc6_,param4,o19419.data.o8334());
         param1.o2205(_loc5_);
         _loc5_.o1281();
         return _loc5_;
      }
      
      private function o17848(param1:o14096) : Object
      {
         var _loc2_:Object = {};
         _loc2_[1] = param1.o10748;
         _loc2_[2] = param1.o2752.grade;
         return _loc2_;
      }
      
      private function o16948(param1:String, param2:String) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         throw new Error("same id?");
      }
      
      private function o6063(param1:Dictionary) : Object
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc2_:Array = [];
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc8_:int = 0;
         var _loc7_:* = param1;
         for(var _loc4_ in param1)
         {
            _loc3_.push(_loc4_);
         }
         _loc3_.sort(o16948);
         var _loc10_:int = 0;
         var _loc9_:* = _loc3_;
         for each(_loc6_ in _loc3_)
         {
            _loc5_ = {};
            _loc5_[3] = _loc6_;
            _loc5_[4] = param1[_loc6_];
            if(param1[_loc6_] != null)
            {
               _loc2_.push(_loc5_);
            }
         }
         return _loc2_;
      }
      
      private function o17515(param1:Array, param2:Dictionary) : void
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_[3];
            _loc3_ = _loc5_[4];
            param2[_loc4_] = _loc3_;
         }
      }
      
      public function o2992() : void
      {
         o4848.o16445();
      }
      
      private function o19757() : Object
      {
         var _loc5_:* = null;
         var _loc9_:* = null;
         var _loc11_:Object = {};
         _loc11_[188] = true;
         _loc11_[118] = true;
         _loc11_[5] = true;
         _loc11_[6] = 6;
         _loc11_[224] = o19419.data.o911;
         _loc11_[500] = o19419.data.o433.o14264();
         _loc11_[504] = o19419.data.o13004.time;
         _loc11_[437] = o19419.data.o15459;
         _loc11_[527] = o19419.data.o12368.time;
         _loc11_[538] = o19419.data.o3811;
         _loc11_[539] = o19419.data.o13060;
         _loc11_[540] = o19419.data.o6234;
         _loc11_[541] = o19419.data.o7686;
         _loc11_[542] = o19419.data.o1553;
         var _loc2_:Array = [];
         var _loc13_:int = 0;
         var _loc12_:* = o19419.data.o13955;
         for each(var _loc3_ in o19419.data.o13955)
         {
            if(_loc3_.o11392)
            {
               _loc2_.push(_loc3_.o14264());
            }
         }
         _loc11_[233] = _loc2_;
         var _loc7_:Array = [];
         var _loc15_:int = 0;
         var _loc14_:* = o19419.data.o938;
         for each(var _loc1_ in o19419.data.o938)
         {
            _loc7_.push(_loc1_.o14264());
         }
         _loc11_[225] = _loc7_;
         if(o4519.o17061)
         {
            _loc11_[220] = o19419.data.o8732;
         }
         if(true && o4848.isGuest == false)
         {
            if(o4539 == null)
            {
               throw new Error("serialize: nkUser is null");
            }
            if(o4539.loginInfo == null)
            {
               throw new Error("serialize: nkUser.loginInfo is null");
            }
            if(o4539.loginInfo.id == null)
            {
               throw new Error("serialize: nkUser.loginInfo.id is null");
            }
            _loc11_[19] = o4539.loginInfo.id;
         }
         else if(_loc11_[221] == null)
         {
            o19419.o2554 = o18293.create();
            _loc11_[221] = o19419.o2554;
         }
         try
         {
            _loc5_ = [];
            var _loc17_:int = 0;
            var _loc16_:* = o19419.data.o20866;
            for each(var _loc10_ in o19419.data.o20866)
            {
               _loc5_.push(_loc10_.value);
            }
            _loc11_[8] = _loc5_;
            _loc11_[9] = o19419.data.o8118;
            _loc11_[13] = o19419.o11453.o14264();
            _loc11_[14] = o19419.o1317.o14264();
            _loc11_[11] = o19419.data.o15335;
            _loc11_[12] = o19419.data.o18325;
            _loc11_[305] = o19419.data.o11086;
            _loc9_ = [];
            var _loc19_:int = 0;
            var _loc18_:* = o19419.data.o5618;
            for each(var _loc8_ in o19419.data.o5618)
            {
               _loc9_.push(_loc8_.value);
            }
            _loc11_[20] = _loc9_;
            _loc11_[418] = o19419.data.o16940(o19419.data.o14403);
            _loc11_[419] = o19419.data.o16940(o19419.data.o1402);
         }
         catch(o16620:Error)
         {
            throw new Error("serialize A error");
         }
         var _loc4_:Array = [];
         var _loc21_:int = 0;
         var _loc20_:* = o19419.data.o11400;
         for each(var _loc6_ in o19419.data.o11400)
         {
            if(_loc6_ == null)
            {
               _loc4_.push(null);
            }
            else
            {
               _loc4_.push(_loc6_.o14264());
            }
         }
         _loc11_[15] = _loc4_;
         _loc11_[16] = o19419.data.o11993;
         _loc11_[21] = o6063(o19419.o14693);
         _loc11_[301] = o19419.data.o1843;
         _loc11_[242] = o19419.data.o9279;
         _loc11_[435] = o19419.data.o14296;
         _loc11_[520] = o19419.data.o18924;
         _loc11_[505] = o12552.o13366(o19419.data.o7209);
         _loc11_[525] = o19419.data.o10320;
         try
         {
            o19419.data.o15531();
         }
         catch(o16285:Error)
         {
            throw new Error("serialize onSave error");
         }
         return _loc11_;
      }
      
      private function o11053() : Object
      {
         return o19757();
      }
      
      private function o16315(param1:Object) : String
      {
         var _loc28_:* = null;
         var _loc23_:* = null;
         var _loc11_:* = null;
         var _loc24_:* = null;
         var _loc16_:* = null;
         var _loc5_:int = 0;
         var _loc22_:int = 0;
         var _loc12_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = undefined;
         var _loc26_:* = null;
         var _loc27_:* = undefined;
         var _loc15_:* = null;
         var _loc14_:* = null;
         _loc28_ = param1[19];
         if(_loc28_ != null)
         {
            _loc23_ = o4539.loginInfo.id;
            if(_loc23_ != _loc28_)
            {
               return "Save data error. Please contact support. \nInfo " + _loc28_ + ":" + _loc23_;
            }
         }
         o19419.o2187();
         o19419.o202.o11075 = -1;
         var _loc3_:o17849 = o4519.o8116.o16619;
         if(param1[224] != null)
         {
            o19419.data.o911 = param1[224];
         }
         if(param1[233] != null)
         {
            _loc11_ = param1[233];
            var _loc31_:int = 0;
            var _loc30_:* = _loc11_;
            for each(var _loc9_ in _loc11_)
            {
               o19419.data.o13955.push(o14801.o8169(_loc9_));
            }
         }
         if(param1[239] != null)
         {
            o19419.data.o2070 = param1[239];
         }
         else
         {
            o19419.data.o2070 = false;
         }
         o19419.data.o938 = new Vector.<o18960>();
         if(param1[225] != null)
         {
            _loc24_ = param1[225];
            var _loc33_:int = 0;
            var _loc32_:* = _loc24_;
            for each(var _loc19_ in _loc24_)
            {
               o19419.data.o938.push(o18960.o8169(_loc19_));
            }
         }
         if(param1[8] != null)
         {
            _loc16_ = param1[8];
            o19419.data.o20866 = new Vector.<o16123>();
            var _loc35_:int = 0;
            var _loc34_:* = _loc16_;
            for each(var _loc17_ in _loc16_)
            {
               o19419.data.o20866.push(new o16123(_loc17_));
            }
         }
         if(param1[9] != null)
         {
            o19419.data.o8118 = param1[9];
         }
         if(param1[11] != null)
         {
            o19419.data.o15335 = param1[11];
         }
         if(param1[12] != null)
         {
            o19419.data.o18325 = param1[12];
         }
         if(param1[305] != null)
         {
            o19419.data.o11086 = Math.round(param1[305]);
         }
         if(param1[13] != null)
         {
            o19419.o11453.o8169(param1[13]);
         }
         if(param1[14] != null)
         {
            o19419.o1317.o8169(param1[14]);
         }
         if(param1[437] != null)
         {
            o19419.data.o15459 = param1[437];
         }
         o19419.data.o11400 = new Vector.<o9145>();
         var _loc10_:Array = param1[15];
         if(_loc10_ != null)
         {
            var _loc37_:int = 0;
            var _loc36_:* = _loc10_;
            for each(var _loc29_ in _loc10_)
            {
               if(_loc29_ != null && _loc29_[55] == null)
               {
                  _loc29_ = null;
               }
               if(_loc29_ == null)
               {
                  o19419.data.o11400.push(null);
               }
               else
               {
                  o19419.data.o11400.push(new o9145(o19419).o8169(o19419,_loc29_));
               }
            }
         }
         else
         {
            o8339("new data. no characters");
         }
         if(param1[16] != null)
         {
            o19419.data.o11993 = param1[16];
         }
         o19419.o1029 = o19419.data.o11400.length == 0;
         var _loc8_:Array = param1[20];
         o19419.data.o5618 = new Vector.<o16123>();
         if(_loc8_ != null)
         {
            var _loc39_:int = 0;
            var _loc38_:* = _loc8_;
            for each(var _loc25_ in _loc8_)
            {
               o19419.data.o5618.push(new o16123(_loc25_));
            }
         }
         if(param1[21] != null)
         {
            o17515(param1[21],o19419.o14693);
         }
         else
         {
            o19419.o14693 = new Dictionary();
         }
         if(param1[188] == null)
         {
            _loc5_ = 0;
            _loc22_ = 0;
            var _loc41_:int = 0;
            var _loc40_:* = o19419.data.o11400;
            for each(var _loc2_ in o19419.data.o11400)
            {
               if(_loc2_ != null)
               {
                  _loc5_ = _loc5_ + _loc2_.o18704;
                  _loc22_ = _loc22_ + _loc2_.o6470;
               }
            }
            o19419.o11453.o564 = _loc5_;
            o19419.o11453.o12857 = _loc22_;
         }
         if(param1[301] != null)
         {
            o19419.data.o1843 = param1[301];
         }
         if(param1[242] != null)
         {
            o19419.data.o9279 = param1[242];
         }
         if(param1[418] == null)
         {
            _loc12_ = new Dictionary();
            _loc6_ = new Dictionary();
            o19419.data.o14403 = _loc12_;
            o19419.data.o1402 = _loc6_;
            var _loc47_:int = 0;
            var _loc46_:* = o19419.data.o11400;
            for each(_loc2_ in o19419.data.o11400)
            {
               if(_loc2_ != null)
               {
                  _loc4_ = _loc2_.o1819();
                  var _loc43_:int = 0;
                  var _loc42_:* = _loc4_;
                  for each(var _loc20_ in _loc4_)
                  {
                     if(_loc12_[_loc20_.o10748] == null)
                     {
                        _loc26_ = new o14432();
                        _loc26_.o2734(_loc20_);
                        _loc12_[_loc20_.o10748] = _loc26_;
                     }
                     else
                     {
                        _loc7_ = _loc12_[_loc20_.o10748];
                        _loc7_.o7658(_loc20_.grade,_loc20_.o5520,_loc20_.o4680);
                     }
                  }
                  _loc27_ = _loc2_.o12203();
                  var _loc45_:int = 0;
                  var _loc44_:* = _loc27_;
                  for each(var _loc21_ in _loc27_)
                  {
                     if(_loc6_[_loc21_.o15372] == null)
                     {
                        _loc7_ = new o15520();
                        _loc7_.o15382(_loc21_);
                        _loc6_[_loc21_.o15372] = _loc7_;
                     }
                     else
                     {
                        _loc7_ = _loc6_[_loc21_.o15372];
                        _loc7_.o7658(_loc21_.grade,_loc21_.o5520,_loc21_.o4680);
                     }
                  }
                  continue;
               }
            }
         }
         else
         {
            o19419.data.o14403 = new Dictionary();
            o19419.data.o1402 = new Dictionary();
            o19419.data.o18000(param1[418],o19419.data.o14403);
            o19419.data.o10040(param1[419],o19419.data.o1402);
         }
         o19419.data.o433 = new o19626();
         if(param1[500] != null)
         {
            if(param1[500] != null)
            {
               o19419.data.o433.o17060(param1[500]);
            }
         }
         if(param1[504] != null)
         {
            o19419.data.o12648(param1[504]);
         }
         if(param1[435] == null)
         {
            param1[435] = false;
         }
         else
         {
            o19419.data.o14296 = param1[435];
         }
         if(param1[520] == null)
         {
            param1[520] = false;
         }
         else
         {
            o19419.data.o18924 = param1[520];
         }
         if(param1[527] == null)
         {
            o19419.data.o12368.time = -1;
         }
         else
         {
            o19419.data.o12368.time = param1[527];
         }
         if(param1[505] == null)
         {
            o19419.data.o7209 = new Dictionary();
            _loc15_ = o14200.o19505.o5292.o8675;
            var _loc49_:int = 0;
            var _loc48_:* = _loc15_.o7446;
            for each(var _loc18_ in _loc15_.o7446)
            {
               _loc18_.o1718 = _loc18_.o20374();
               o19419.data.o7209[_loc18_.id] = _loc18_.o1718;
            }
         }
         else
         {
            o19419.data.o7209 = new Dictionary();
            o12552.o18306(param1[505],o19419.data.o7209);
            _loc14_ = o14200.o19505.o5292.o8675;
            var _loc51_:int = 0;
            var _loc50_:* = _loc14_.o7446;
            for each(var _loc13_ in _loc14_.o7446)
            {
               _loc13_.o1718 = o19419.data.o7209[_loc13_.id];
            }
         }
         if(param1[538] == null)
         {
            param1[538] = 0;
         }
         else
         {
            o19419.data.o3811 = param1[538];
         }
         if(param1[539] == null)
         {
            param1[539] = 0;
         }
         else
         {
            o19419.data.o13060 = param1[539];
         }
         if(param1[540] == null)
         {
            param1[540] = 0;
         }
         else
         {
            o19419.data.o6234 = param1[540];
         }
         if(param1[541] == null)
         {
            param1[541] = 0;
         }
         else if(param1[541] > 1000)
         {
            param1[541] = 0;
         }
         else
         {
            o19419.data.o7686 = param1[541];
         }
         if(param1[542] == null)
         {
            param1[542] = 0;
         }
         else
         {
            o19419.data.o1553 = param1[542];
         }
         o8339("deserialize: end");
         o8339("=====================");
         return null;
      }
      
      private function o17756(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         if(param1["userID"] != null)
         {
            throw new Error("Old data format. Data wipe required");
         }
         var _loc5_:String = param1[222];
         o19419.o2554 = param1[221];
         var _loc7_:int = param1[6];
         if(_loc7_ >= 6)
         {
            param1[222] = "";
            _loc2_ = new o18095();
            _loc4_ = "ERROR";
            try
            {
               _loc4_ = _loc2_.o19990(param1);
            }
            catch(o19631:Error)
            {
            }
            param1[222] = _loc5_;
            if(_loc4_ != _loc5_ && false)
            {
            }
         }
         var _loc6_:String = o16315(param1);
         if(_loc6_ != null)
         {
            throw new Error(_loc6_);
         }
      }
      
      public function save() : o16124
      {
         var _loc4_:* = null;
         if(this.o4848.isGuest && true && true && this.o4848.o5701() == false)
         {
            _loc4_ = new o16124();
            _loc4_.data = false;
            o4519.o10093.o4729();
            return _loc4_;
         }
         var _loc3_:Object = o11053();
         _loc3_[222] = "";
         var _loc1_:o18095 = new o18095();
         var _loc2_:String = _loc1_.o19990(_loc3_);
         _loc3_[222] = _loc2_;
         return o4848.save(_loc3_);
      }
   }
}
