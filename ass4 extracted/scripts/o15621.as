package
{
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.utils.Dictionary;
   
   public class o15621 extends o8023
   {
      
      private static var o18030:o15621;
       
      
      private var o8058:Boolean = false;
      
      protected var o19656:Boolean = false;
      
      private var o12817:Boolean = false;
      
      protected var o15707:o13064;
      
      protected var o7183:Boolean = false;
      
      protected var o9805:Vector.<o444> = null;
      
      public function o15621()
      {
         super();
      }
      
      public static function o2610() : o15621
      {
         if(o18030 == null)
         {
            if(o4519.o17061)
            {
               o18030 = new o1065();
               return o18030;
            }
            o18030 = new o10590();
         }
         return o18030;
      }
      
      protected function o7241(param1:Error) : void
      {
         o14043.o11809(param1);
      }
      
      public function o14655(param1:NKGatewayUser, param2:o14200) : o16124
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      protected function o6821() : Vector.<o444>
      {
         if(o9805 == null)
         {
         }
         if(o4519.o8116.profileData.o15894.o4848.isGuest == false && o4519.o8116.profileData.data.o14296 == false)
         {
            o4519.o8116.profileData.data.o14296 = true;
            o11865(2000,"fake_maintenance_ID");
         }
         return o9805;
      }
      
      public function o11952() : Vector.<o444>
      {
         return o9805;
      }
      
      private function o1327(param1:o444) : Boolean
      {
         if(o19419.o12911(param1.o5689))
         {
            return true;
         }
         return o4794(param1.o5693);
      }
      
      private function o4794(param1:int) : Boolean
      {
         return param1 == 618 || param1 == 627 || param1 == 625 || param1 == 2;
      }
      
      private function o13996(param1:int) : Boolean
      {
         return o4794(param1) || param1 == 665 || param1 == 664;
      }
      
      protected function o6944(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = null;
         var _loc6_:o13643 = o19419.o5292.o3911;
         var _loc7_:* = param1;
         switch(_loc7_)
         {
            case 618:
               o19419.o5292.o3911.o20174 = param3;
               break;
            case 627:
               o19419.o5292.o3911.o12389 = param3;
               break;
            case 666:
               o19419.o5292.o3911.o2471 = param3;
               break;
            case 667:
               o19419.o5292.o3911.o2536 = param3;
               break;
            case 668:
               o19419.o5292.o3911.o3455 = param3;
         }
         var _loc5_:o19082 = _loc6_.o3100(param1);
         if(_loc5_ != null)
         {
            _loc5_.o6639 = param2;
            _loc5_.o302 = param3;
         }
         else
         {
            _loc4_ = _loc6_.o14690(param1);
            if(_loc4_ != null)
            {
               _loc4_.o6639 = param2;
               _loc4_.o302 = param3;
            }
         }
      }
      
      public function o19252() : Vector.<o444>
      {
         var _loc1_:Vector.<o444> = new Vector.<o444>();
         var _loc2_:Vector.<o444> = o6821();
         var _loc5_:int = 0;
         var _loc4_:* = _loc2_;
         for each(var _loc3_ in _loc2_)
         {
            if(_loc3_.o1830 > 0 && o1327(_loc3_) == false)
            {
               _loc1_.push(_loc3_);
            }
            else if(o19419.o12911(_loc3_.o5689) && o4794(_loc3_.o5693) == false)
            {
               o10444(_loc3_);
            }
         }
         return _loc1_;
      }
      
      public function o5828() : void
      {
         var _loc1_:Vector.<o444> = o6821();
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(o20543.o2882(_loc2_.o5693))
            {
               if(o19419.o12911(_loc2_.o5689))
               {
                  o8339("Remove applied tokens");
                  o10444(_loc2_);
               }
               else
               {
                  o8339("Apply missing tokens");
                  o7777(_loc2_);
               }
            }
         }
      }
      
      public function o12286() : void
      {
         var _loc1_:Vector.<o444> = o6821();
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(o19419.o12911(_loc2_.o5689) && o4794(_loc2_.o5693) == false && o20543.o1224(_loc2_.o5693) == false)
            {
               o10444(_loc2_);
            }
         }
      }
      
      public function o20638() : int
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<o444> = o6821();
         var _loc5_:int = 0;
         var _loc4_:* = _loc2_;
         for each(var _loc3_ in _loc2_)
         {
            if(_loc3_.o5693 == 625)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      protected function o8146(param1:String) : o444
      {
         var _loc3_:Vector.<o444> = o6821();
         var _loc2_:* = _loc3_;
         var _loc6_:int = 0;
         var _loc5_:* = _loc2_;
         for each(var _loc4_ in _loc2_)
         {
            if(_loc4_.o5689 == param1)
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      public function o15587() : void
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      public function o2214(param1:int, param2:String = null) : o444
      {
         if(param2 == null)
         {
            param2 = "";
         }
         var _loc3_:o444 = new o444();
         _loc3_.o6671(param1);
         _loc3_.o20414(1);
         _loc3_.o5689 = param2;
         return _loc3_;
      }
      
      public function o278() : int
      {
         var _loc3_:int = 0;
         var _loc1_:Vector.<o444> = o6821();
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(o19419.o12911(_loc2_.o5689) == false && o13996(_loc2_.o5693) == false)
            {
               _loc3_ = _loc3_ + _loc2_.o1830;
            }
         }
         return _loc3_;
      }
      
      public function o18555() : void
      {
      }
      
      public function set o19419(param1:o14200) : void
      {
      }
      
      public function get o19419() : o14200
      {
         return o4519.o8116.profileData;
      }
      
      public function set o16989(param1:o13064) : void
      {
         o15707 = param1;
      }
      
      public function get o16989() : o13064
      {
         return o15707;
      }
      
      protected function o11865(param1:int, param2:String) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(o19656)
         {
            return;
         }
         var _loc3_:o444 = this.o8146(param2);
         if(_loc3_ != null)
         {
            o7241(new Error("Purchase bug. Please contact support"));
            throw new Error("Purchase bug. Please contact support");
         }
         _loc3_ = o2214(param1,param2);
         o9805.push(_loc3_);
         if(o19419.o7923 != null)
         {
            o19419.o15894.o4848.o2719.o6651(_loc3_.o5693,o2057(_loc3_.o5693),_loc3_.o1830,o19419.o7923.level);
         }
         else
         {
            o19419.o15894.o4848.o2719.o6651(_loc3_.o5693,o2057(_loc3_.o5693),_loc3_.o1830,-1);
         }
         var _loc6_:Boolean = true;
         if(_loc3_.o5693 == 625)
         {
            dispatchData(new o19869(o19869.o391,_loc3_));
            return;
         }
         if(o18407(_loc3_) && o19419.o202.o18479 == false)
         {
            _loc6_ = false;
         }
         o8339("consumeProduct start: " + _loc6_);
         if(this.o19419.o7923 != null && _loc6_)
         {
            o7777(_loc3_);
         }
         if(_loc6_ == false)
         {
            _loc4_ = o19419.o5099.o9009("dialogMessage.unableToAssignStrongboxDuringGame.title");
            _loc5_ = o19419.o5099.o9009("dialogMessage.unableToAssignStrongboxDuringGame.message");
            o15707.o12407(_loc4_,_loc5_);
            dispatchData(new o19869(o19869.o391,_loc3_));
         }
      }
      
      public function o4291(param1:int) : int
      {
         return o19419.o5292.o3911.o4291(param1);
      }
      
      protected function get o4808() : int
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      public function o6950(param1:int) : void
      {
         var _loc2_:int = o4291(param1);
         var _loc3_:o444 = o2214(param1);
         if(isGuest)
         {
            dispatchData(new o19869(o19869.o17670,_loc3_,"Unable to purchase","You must log in to purchase items"));
            return;
         }
         if(o4808 < _loc2_)
         {
            dispatchData(new o19869(o19869.o17670,_loc3_,"Unable to purchase","You don\'t have enough coins to purchase this item"));
         }
         else
         {
            dispatchData(new o19869(o19869.o6389,_loc3_));
            o18167(_loc3_);
         }
      }
      
      protected function o18167(param1:o444) : void
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      public function o18802(param1:o444) : void
      {
         var _loc3_:int = 0;
         if(param1.o1830 < 1)
         {
            o7241(new Error("Must override"));
            throw new Error("Unable to consume strongbox?");
         }
         var _loc2_:o19082 = o19419.o5292.o3911.o3100(param1.o5693);
         if(_loc2_)
         {
            o19419.o202.o11362();
            _loc3_ = 0;
            while(_loc3_ < _loc2_.o1830)
            {
               o19419.o202.o11612(_loc2_.o9810,true);
               _loc3_++;
            }
            o19419.o202.o19266(o19419.o7923);
         }
      }
      
      public function o5780(param1:o444, param2:Boolean = false) : void
      {
         var _loc32_:* = null;
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc27_:* = null;
         var _loc22_:* = undefined;
         var _loc14_:* = null;
         var _loc34_:* = null;
         var _loc10_:* = null;
         var _loc20_:* = null;
         var _loc12_:* = null;
         var _loc16_:* = null;
         var _loc6_:* = null;
         var _loc28_:* = undefined;
         var _loc11_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = undefined;
         var _loc17_:int = 0;
         var _loc33_:int = 0;
         var _loc26_:* = undefined;
         var _loc19_:int = 0;
         var _loc21_:int = 0;
         var _loc31_:o4162 = o19419.o5292.o3911.o14690(param1.o5693);
         if(param1.o1830 < 1)
         {
            o7241(new Error("Unable to consume combo pack?"));
            throw new Error("Unable to consume combo pack?");
         }
         if(_loc31_.type == 0)
         {
            var _loc42_:int = 0;
            var _loc41_:* = _loc31_.o11620;
            for each(var _loc4_ in _loc31_.o11620)
            {
               _loc32_ = o4519.o8116.o1184.o11620[_loc4_.o10748];
               _loc9_ = o19419.o15894.o20444(o19419.o7923,_loc32_,_loc4_.grade,_loc4_.o11314);
               _loc9_.o2397 = true;
               _loc9_.o17656 = new Vector.<o3743>();
               var _loc36_:int = 0;
               var _loc35_:* = _loc4_.o17656;
               for each(var _loc30_ in _loc4_.o17656)
               {
                  _loc3_ = new o3743();
                  _loc27_ = o19419.o5292.o5812(_loc30_.o8497);
                  _loc3_.init(_loc27_,_loc30_.grade);
                  _loc9_.o17656.push(_loc3_);
               }
               if(param2)
               {
                  _loc22_ = o19419.data.o11400;
                  var _loc40_:int = 0;
                  var _loc39_:* = _loc22_;
                  for each(var _loc5_ in _loc22_)
                  {
                     if(_loc5_ && _loc5_ != o19419.o7923)
                     {
                        _loc14_ = o19419.o15894.o20444(_loc5_,_loc32_,_loc4_.grade,_loc4_.o11314);
                        _loc14_.o2397 = true;
                        _loc14_.o17656 = new Vector.<o3743>();
                        var _loc38_:int = 0;
                        var _loc37_:* = _loc4_.o17656;
                        for each(var _loc24_ in _loc4_.o17656)
                        {
                           _loc34_ = new o3743();
                           _loc10_ = o19419.o5292.o5812(_loc24_.o8497);
                           _loc34_.init(_loc10_,_loc24_.grade);
                           _loc14_.o17656.push(_loc34_);
                        }
                        continue;
                     }
                  }
                  continue;
               }
            }
            var _loc46_:int = 0;
            var _loc45_:* = _loc31_.o4256;
            for each(var _loc23_ in _loc31_.o4256)
            {
               _loc20_ = o4519.o8116.o9511.o4256[_loc23_.o15568];
               _loc12_ = o19419.o15894.o16590(o19419.o7923,_loc20_,_loc23_.grade,_loc23_.o11314);
               _loc12_.o2397 = true;
               _loc12_.o17656 = new Vector.<o3743>();
               var _loc44_:int = 0;
               var _loc43_:* = _loc23_.o17656;
               for each(var _loc29_ in _loc23_.o17656)
               {
                  _loc16_ = new o3743();
                  _loc6_ = o19419.o5292.o5812(_loc29_.o8497);
                  _loc16_.init(_loc6_,_loc29_.grade);
                  _loc12_.o17656.push(_loc16_);
               }
            }
            _loc28_ = _loc31_.o10787();
            var _loc48_:int = 0;
            var _loc47_:* = _loc28_;
            for each(var _loc15_ in _loc28_)
            {
               _loc11_ = o19419.o5292.o9063(_loc15_);
               _loc7_ = _loc31_.o17236(_loc15_);
               o19419.o7923.o3525.o780(_loc15_,_loc7_);
            }
            if(_loc31_.o14636 != 0)
            {
               var _loc50_:int = 0;
               var _loc49_:* = o19419.o5292.o19908;
               for each(var _loc18_ in o19419.o5292.o19908)
               {
                  o19419.o7923.o3525.o780(_loc18_.o2752.o5806,_loc31_.o14636);
               }
            }
            _loc8_ = _loc31_.o9974();
            var _loc52_:int = 0;
            var _loc51_:* = _loc8_;
            for each(var _loc25_ in _loc8_)
            {
               _loc17_ = _loc31_.o1417(_loc25_);
               o19419.o7923.o3525.o780(_loc25_,_loc17_);
            }
            if(_loc31_.o2296 == 2000)
            {
               o19419.o7923.o20170 = o19419.o7923.o20170 + o19419.o5292.o7392() * 10;
            }
            else
            {
               o19419.o7923.o20170 = o19419.o7923.o20170 + _loc31_.o18409;
            }
            if(o19419.o7923.level < _loc31_.o14822)
            {
               _loc33_ = o19419.o5292.o923.o10554(_loc31_.o14822);
               o19419.o7923.o7211 = _loc33_;
            }
            if(_loc31_.o12427 != 0)
            {
               o19419.data.o15459 = o19419.data.o15459 + _loc31_.o12427;
            }
            _loc26_ = _loc31_.o19860();
            if(_loc26_.length > 0)
            {
               o19419.o202.o11362();
               var _loc54_:int = 0;
               var _loc53_:* = _loc26_;
               for each(var _loc13_ in _loc26_)
               {
                  _loc19_ = _loc31_.o11289(_loc13_);
                  _loc21_ = 0;
                  while(_loc21_ < _loc19_)
                  {
                     o19419.o202.o11612(o4189.o4718(_loc13_),true);
                     _loc21_++;
                  }
               }
               o19419.o202.o19266(o19419.o7923);
            }
            o19419.data.o911 = o19419.data.o911 + _loc31_.o17160;
            o19419.o7923.o5532 = o19419.o7923.o5532 + _loc31_.o5532;
            o19419.o7923.o201(_loc31_.o7136);
            o19419.o7923.o18104 = o19419.o7923.o18104 + _loc31_.o18104;
            o19419.o7923.o10252 = o19419.o7923.o10252 + _loc31_.o10252;
            o19419.data.o1553 = o19419.data.o1553 + _loc31_.o10252;
         }
         else if(_loc31_.type == 1)
         {
            o19419.o7923.o8271();
         }
         else if(_loc31_.type == 2)
         {
            if(_loc31_.o2296 == 623)
            {
               o19419.o7923.o20170 = o19419.o7923.o20170 + o19419.o5292.o120();
            }
            else
            {
               o19419.o7923.o20170 = o19419.o7923.o20170 + _loc31_.o18409;
            }
         }
      }
      
      private function o18407(param1:o444) : Boolean
      {
         return o20543.o18407(param1);
      }
      
      private function o17755() : Array
      {
         return o20543.o17755();
      }
      
      protected function o3465(param1:o444) : o16124
      {
         var _loc4_:o16124 = new o16124();
         _loc4_.data = false;
         o8339("onApplyProduct");
         if(param1.o1830 != 1)
         {
            o7241(new Error("Apply product bug: Can only apply one item"));
            throw new Error("Apply product bug: Can only apply one item");
         }
         if(o19419.o7923 == null)
         {
            return _loc4_;
         }
         var _loc3_:Array = o17755();
         var _loc2_:o4162 = o19419.o5292.o3911.o14690(param1.o5693);
         if(o18407(param1))
         {
            o18802(param1);
         }
         else if(param1.o5693 == 602)
         {
            o19419.o7923.o7768++;
         }
         else if(param1.o5693 == 666)
         {
            o19419.data.o15459 = o19419.data.o15459 + o14576.o8340;
            o19419.o7923.o12332 = 0;
         }
         else if(param1.o5693 == 667)
         {
            o19419.o7923.o5532 = o19419.o7923.o5532 + 1;
         }
         else if(param1.o5693 == 668)
         {
            o19419.o7923.o5532 = o19419.o7923.o5532 + 5;
         }
         else if(param1.o5693 == 625)
         {
            param1 = param1;
         }
         else if(!(param1.o5693 == 618 || param1.o5693 == 627))
         {
            if(param1.o5693 == 670)
            {
               o19419.o7923.o201();
            }
            else if(param1.o5693 == 671)
            {
               o19419.o7923.o18104++;
            }
            else if(_loc2_.o6727 && _loc3_.indexOf(param1.o5693) >= 0)
            {
               o5780(param1,_loc2_.o6727);
            }
            else if(_loc3_.indexOf(param1.o5693) >= 0)
            {
               o5780(param1);
            }
            else
            {
               o7241(new Error("Apply product bug: Invalid product id: " + param1.o5693.toString()));
               throw new Error("Apply product bug: Invalid product id: " + param1.o5693.toString());
            }
         }
         if(o12817)
         {
            _loc4_ = o19419.o2324();
         }
         else
         {
            _loc4_ = o19419.saveData();
         }
         return _loc4_;
      }
      
      protected function get isGuest() : Boolean
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      private function o2057(param1:int) : String
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc5_:o444 = new o444();
         _loc5_.o6671(param1);
         var _loc4_:Array = o17755();
         if(o18407(_loc5_))
         {
            _loc3_ = o19419.o5292.o3911.o3100(_loc5_.o5693);
            return _loc3_.name;
         }
         if(_loc5_.o5693 == 602)
         {
            return "Respec";
         }
         if(_loc5_.o5693 == 618)
         {
            return "Continue game";
         }
         if(_loc5_.o5693 == 627)
         {
            return "Instant revive";
         }
         if(_loc5_.o5693 == 666)
         {
            return "Nightmare cooldown";
         }
         if(_loc5_.o5693 == 667)
         {
            return "Black key";
         }
         if(_loc5_.o5693 == 668)
         {
            return "Black key five pack";
         }
         if(_loc4_.indexOf(_loc5_.o5693) >= 0)
         {
            _loc2_ = o19419.o5292.o3911.o14690(_loc5_.o5693);
            return _loc2_.name;
         }
         return "???";
      }
      
      protected function o15349(param1:o444) : void
      {
         var _loc2_:int = 0;
         if(o20543.o1224(param1.o5693))
         {
            return;
         }
         var _loc5_:int = 0;
         var _loc4_:* = o9805;
         for each(var _loc3_ in o9805)
         {
            if(_loc3_.o5689 == param1.o5689)
            {
               o9805.splice(_loc2_,1);
               return;
            }
         }
         o7241(new Error("Remove consume: item not found"));
         throw new Error("Remove consume: item not found");
      }
      
      protected function o11850(param1:o444) : void
      {
         o7241(new Error("Must override"));
         throw new Error("Must override");
      }
      
      protected function o19045(param1:o444) : void
      {
         o8339("debugItemRemovedFromInventoryComplete: " + param1.o5693);
      }
      
      protected function o14609(param1:o444, param2:String, param3:String) : void
      {
         o8339("debugItemRemovedFromInventoryError: " + param1.o5693 + "\n" + param2 + "\n" + param3);
      }
      
      public function o7777(param1:o444) : void
      {
         o14660 = param1;
         if(o14660.o1830 != 1)
         {
            o7241(new Error("Remove item from inventory bug: Can only consume one item"));
            throw new Error("Remove item from inventory bug: Can only consume one item");
         }
         o8339("consumeProduct");
         if(!isGuest)
         {
            if(o14660.o5693 == 2)
            {
               o8339("GLOBAL_SAS_CASH removed from game");
               dispatchData(new o19869(o19869.o391,o14660));
               o15349(o14660);
               return;
            }
            if(o19419.o16796(o14660.o5689))
            {
               o3465(o14660).defer(function(param1:Boolean):void
               {
                  dispatchData(new o19869(o19869.o391,o14660));
                  if(param1)
                  {
                     o10444(o14660);
                  }
               });
            }
            else
            {
               o10444(o14660);
            }
         }
      }
      
      private function o10444(param1:o444) : void
      {
         var _loc2_:Boolean = o20543.o1224(param1.o5693);
         if(_loc2_ == false || _loc2_ == false && param1.o4114 == false)
         {
            o11850(param1);
         }
      }
      
      public function o3744() : void
      {
         var _loc16_:int = 0;
         var _loc17_:* = null;
         var _loc8_:* = null;
         var _loc4_:* = null;
         var _loc15_:Boolean = false;
         var _loc10_:* = null;
         var _loc9_:* = null;
         if(o19419 == null)
         {
            return;
         }
         var _loc13_:Vector.<o444> = this.o9805;
         var _loc14_:Vector.<o18960> = o19419.data.o938;
         var _loc11_:o444 = null;
         var _loc19_:* = 0;
         var _loc18_:* = _loc14_;
         for each(var _loc1_ in _loc14_)
         {
            _loc16_ = _loc1_.o5693;
            _loc17_ = _loc1_.o5689;
            _loc11_ = new o444();
            _loc11_.o5689 = _loc17_;
            _loc11_.o6671(_loc16_);
            _loc11_.o20414(1);
            _loc11_.o4114 = true;
            _loc13_.push(_loc11_);
         }
         var _loc5_:Boolean = false;
         if(o19419.o4539)
         {
            _loc8_ = new Dictionary();
            var _loc21_:int = 0;
            var _loc20_:* = o15621.o2610().o11952();
            for each(var _loc7_ in o15621.o2610().o11952())
            {
               if(_loc7_ && o20543.o1224(_loc7_.o5693))
               {
                  if(_loc8_[_loc7_.o5693] == null)
                  {
                     _loc8_[_loc7_.o5693] = 1;
                  }
                  else
                  {
                     _loc19_ = _loc7_.o5693;
                     _loc18_ = _loc8_[_loc19_] + 1;
                     _loc8_[_loc19_] = _loc18_;
                  }
               }
            }
            if(o14200.o19505 && o14200.o19505.data && o14200.o19505.data.o11400)
            {
               var _loc25_:int = 0;
               var _loc24_:* = o14200.o19505.data.o11400;
               for each(var _loc3_ in o14200.o19505.data.o11400)
               {
                  _loc4_ = new Dictionary();
                  if(_loc3_ && _loc3_.o11620)
                  {
                     var _loc23_:int = 0;
                     var _loc22_:* = _loc3_.o11620;
                     for each(var _loc12_ in _loc3_.o11620)
                     {
                        if(_loc12_ && _loc12_.o2752.o19901)
                        {
                           if(_loc4_[_loc12_.o10748] == null)
                           {
                              _loc4_[_loc12_.o10748] = 1;
                           }
                           else
                           {
                              _loc18_ = _loc12_.o10748;
                              _loc19_ = _loc4_[_loc18_] + 1;
                              _loc4_[_loc18_] = _loc19_;
                           }
                        }
                     }
                  }
                  _loc15_ = o18385(_loc3_,_loc8_,_loc4_);
                  if(_loc15_)
                  {
                     _loc5_ = true;
                  }
               }
            }
            o16346(_loc8_,_loc4_);
            if(_loc5_)
            {
               o14200.o19505.saveData();
            }
            var _loc29_:int = 0;
            var _loc28_:* = _loc8_;
            for(var _loc6_ in _loc8_)
            {
               _loc10_ = "";
               _loc9_ = o19419.o5292.o3911.o14690(_loc6_);
               if(_loc9_)
               {
                  var _loc27_:int = 0;
                  var _loc26_:* = _loc9_.o11620;
                  for each(var _loc2_ in _loc9_.o11620)
                  {
                     _loc10_ = _loc10_ + (_loc2_.o10748.toString() + " ");
                  }
                  continue;
               }
            }
         }
      }
      
      private function o16346(param1:Dictionary, param2:Dictionary) : void
      {
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = param2;
         for(var _loc4_ in param2)
         {
            if(param1[_loc4_] == null)
            {
               _loc3_ = _loc3_ + param2[_loc4_];
            }
         }
         if(_loc3_ > 0)
         {
            o11407.o13644(_loc3_);
         }
      }
      
      private function o18385(param1:o9145, param2:Dictionary, param3:Dictionary) : Boolean
      {
         var _loc12_:* = null;
         var _loc6_:int = 0;
         var _loc14_:int = 0;
         var _loc13_:* = null;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc10_:* = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc7_:Boolean = false;
         var _loc20_:int = 0;
         var _loc19_:* = param2;
         for(var _loc8_ in param2)
         {
            if(param2[_loc8_] >= 1)
            {
               _loc12_ = o19419.o5292.o3911.o14690(_loc8_);
               if(_loc12_ && _loc12_.o11620)
               {
                  var _loc18_:int = 0;
                  var _loc17_:* = _loc12_.o11620;
                  for each(var _loc4_ in _loc12_.o11620)
                  {
                     if(param3[_loc4_.o10748] == null || param2[_loc8_] != param3[_loc4_.o10748])
                     {
                        if(param3[_loc4_.o10748] == null)
                        {
                           _loc6_ = param2[_loc8_];
                        }
                        else
                        {
                           _loc6_ = param2[_loc8_] - param3[_loc4_.o10748];
                        }
                        if(_loc6_ < 0)
                        {
                           o11407.o9053(1);
                        }
                        else
                        {
                           _loc14_ = 0;
                           while(_loc14_ < _loc6_)
                           {
                              _loc13_ = o4519.o8116.o1184.o11620[_loc4_.o10748];
                              _loc9_ = o19419.o15894.o20444(param1,_loc13_,_loc4_.grade,_loc4_.o11314);
                              _loc9_.o2397 = true;
                              _loc9_.o17656 = new Vector.<o3743>();
                              var _loc16_:int = 0;
                              var _loc15_:* = _loc4_.o17656;
                              for each(var _loc11_ in _loc4_.o17656)
                              {
                                 _loc5_ = new o3743();
                                 _loc10_ = o19419.o5292.o5812(_loc11_.o8497);
                                 _loc5_.init(_loc10_,_loc11_.grade);
                                 _loc9_.o17656.push(_loc5_);
                              }
                              _loc7_ = true;
                              _loc14_++;
                           }
                        }
                        continue;
                     }
                  }
                  continue;
               }
               continue;
            }
         }
         return _loc7_;
      }
      
      private function o18488(param1:o9145, param2:int) : Boolean
      {
         var _loc13_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc15_:* = null;
         var _loc8_:* = null;
         var _loc14_:* = null;
         var _loc5_:* = null;
         var _loc12_:o4162 = o19419.o5292.o3911.o14690(param2);
         if(_loc12_)
         {
            var _loc19_:int = 0;
            var _loc18_:* = _loc12_.o11620;
            for each(var _loc3_ in _loc12_.o11620)
            {
               _loc13_ = o4519.o8116.o1184.o11620[_loc3_.o10748];
               _loc7_ = o19419.o15894.o20444(param1,_loc13_,_loc3_.grade,_loc3_.o11314);
               _loc7_.o2397 = true;
               _loc7_.o17656 = new Vector.<o3743>();
               var _loc17_:int = 0;
               var _loc16_:* = _loc3_.o17656;
               for each(var _loc11_ in _loc3_.o17656)
               {
                  _loc4_ = new o3743();
                  _loc9_ = o19419.o5292.o5812(_loc11_.o8497);
                  _loc4_.init(_loc9_,_loc11_.grade);
                  _loc7_.o17656.push(_loc4_);
               }
            }
            var _loc23_:int = 0;
            var _loc22_:* = _loc12_.o4256;
            for each(var _loc6_ in _loc12_.o4256)
            {
               _loc15_ = o4519.o8116.o9511.o4256[_loc6_.o15568];
               _loc8_ = o19419.o15894.o16590(param1,_loc15_,_loc6_.grade,_loc6_.o11314);
               _loc8_.o2397 = true;
               _loc8_.o17656 = new Vector.<o3743>();
               var _loc21_:int = 0;
               var _loc20_:* = _loc6_.o17656;
               for each(var _loc10_ in _loc6_.o17656)
               {
                  _loc14_ = new o3743();
                  _loc5_ = o19419.o5292.o5812(_loc10_.o8497);
                  _loc14_.init(_loc5_,_loc10_.grade);
                  _loc8_.o17656.push(_loc14_);
               }
            }
         }
         return false;
      }
   }
}
