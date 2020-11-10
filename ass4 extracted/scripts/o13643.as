package
{
   public class o13643
   {
       
      
      private var o15246:o16123;
      
      private var o15654:o16123;
      
      private var o1425:o16123;
      
      private var o3963:o16123;
      
      private var o4131:o16123;
      
      public var o642:Vector.<o19082>;
      
      private var o9016:Vector.<o4162>;
      
      private var o2349:Vector.<o4162>;
      
      public var o4132:Vector.<o4162>;
      
      public var o11620:Vector.<o8925>;
      
      public var o4256:Vector.<o12420>;
      
      public function o13643()
      {
         o15246 = new o16123(0);
         o15654 = new o16123(0);
         o1425 = new o16123(0);
         o3963 = new o16123(0);
         o4131 = new o16123(0);
         super();
      }
      
      public function get o20174() : int
      {
         return o15246.value;
      }
      
      public function set o20174(param1:int) : void
      {
         o15246.value = param1;
      }
      
      public function get o12389() : int
      {
         return o15654.value;
      }
      
      public function set o12389(param1:int) : void
      {
         o15654.value = param1;
      }
      
      public function get o2471() : int
      {
         return o1425.value;
      }
      
      public function set o2471(param1:int) : void
      {
         o1425.value = param1;
      }
      
      public function get o2536() : int
      {
         return o3963.value;
      }
      
      public function set o2536(param1:int) : void
      {
         o3963.value = param1;
      }
      
      public function get o3455() : int
      {
         return o4131.value;
      }
      
      public function set o3455(param1:int) : void
      {
         o4131.value = param1;
      }
      
      public function o5743(param1:int) : Vector.<o19082>
      {
         var _loc4_:Vector.<o19082> = new Vector.<o19082>();
         var _loc3_:Vector.<int> = o4519.o8116.profileData.o5292.o12970.o5351;
         var _loc6_:int = 0;
         var _loc5_:* = o642;
         for each(var _loc2_ in o642)
         {
            if(param1 >= _loc2_.o14335 && param1 <= _loc2_.o883)
            {
               if(_loc2_.enabled)
               {
                  _loc4_.push(_loc2_);
               }
               else if(_loc2_.o18685)
               {
                  if(_loc3_.indexOf(_loc2_.o2296) >= 0)
                  {
                     _loc4_.push(_loc2_);
                  }
               }
            }
         }
         return _loc4_;
      }
      
      public function get o6449() : Vector.<o4162>
      {
         return o6653(o14200.o19505.o7923.level,0);
      }
      
      public function get o1368() : Vector.<o4162>
      {
         return o6653(o14200.o19505.o7923.level,2);
      }
      
      public function o6653(param1:int, param2:int) : Vector.<o4162>
      {
         var _loc6_:Vector.<o4162> = new Vector.<o4162>();
         var _loc3_:Vector.<int> = o4519.o8116.profileData.o5292.o12970.o5351;
         var _loc4_:Vector.<o4162> = param2 == 0?o9016:o2349;
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_;
         for each(var _loc5_ in _loc4_)
         {
            if(param1 >= _loc5_.o14335 && param1 <= _loc5_.o883)
            {
               if(_loc5_.enabled)
               {
                  _loc6_.push(_loc5_);
               }
               else if(_loc5_.o18685)
               {
                  if(_loc3_.indexOf(_loc5_.o2296) >= 0)
                  {
                     _loc6_.push(_loc5_);
                  }
               }
            }
         }
         return _loc6_;
      }
      
      public function o3100(param1:int) : o19082
      {
         var _loc4_:int = 0;
         var _loc3_:* = o642;
         for each(var _loc2_ in o642)
         {
            if(_loc2_.o2296 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o14690(param1:int) : o4162
      {
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = o9016;
         for each(_loc2_ in o9016)
         {
            if(_loc2_.o2296 == param1)
            {
               return _loc2_;
            }
         }
         var _loc6_:int = 0;
         var _loc5_:* = o2349;
         for each(_loc2_ in o2349)
         {
            if(_loc2_.o2296 == param1)
            {
               return _loc2_;
            }
         }
         var _loc8_:int = 0;
         var _loc7_:* = o4132;
         for each(_loc2_ in o4132)
         {
            if(_loc2_.o2296 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o12909(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = o2349;
         for each(_loc2_ in o2349)
         {
            if(_loc2_.o2296 == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o4291(param1:int) : int
      {
         var _loc3_:* = null;
         if(param1 == 618)
         {
            return o15246.value;
         }
         if(param1 == 627)
         {
            return o15654.value;
         }
         if(param1 == 666)
         {
            return o1425.value;
         }
         if(param1 == 667)
         {
            return o3963.value;
         }
         if(param1 == 668)
         {
            return o4131.value;
         }
         var _loc2_:o4162 = o14690(param1);
         if(_loc2_ == null)
         {
            _loc3_ = o3100(param1);
            if(_loc3_ == null)
            {
               throw new Error("Invalid product " + param1.toString());
            }
            return _loc3_.o302;
         }
         return _loc2_.o302;
      }
      
      private function o13146(param1:o16119, param2:o2693, param3:String, param4:int) : void
      {
         var _loc6_:* = null;
         var _loc5_:int = param2.o3554(param3);
         if(_loc5_ != 0)
         {
            _loc6_ = new o17450();
            _loc6_.o8497 = param4;
            _loc6_.grade = _loc5_;
            param1.o17656.push(_loc6_);
         }
      }
      
      private function o15004(param1:o10155, param2:o2693, param3:String, param4:int) : void
      {
         var _loc6_:* = null;
         var _loc5_:int = param2.o3554(param3);
         if(_loc5_ != 0)
         {
            _loc6_ = new o17450();
            _loc6_.o8497 = param4;
            _loc6_.grade = _loc5_;
            param1.o17656.push(_loc6_);
         }
      }
      
      private function o19875(param1:o2693, param2:o4162, param3:String, param4:int, param5:String) : void
      {
         var _loc6_:int = param1.o3554(param3 + "strongboxes." + param5);
         if(_loc6_ > 0)
         {
            param2.o8153(param4,_loc6_);
         }
      }
      
      public function init(param1:o2693) : void
      {
         var _loc15_:int = 0;
         var _loc6_:* = null;
         var _loc17_:* = null;
         var _loc16_:* = null;
         var _loc20_:* = null;
         var _loc13_:int = 0;
         var _loc10_:int = 0;
         var _loc2_:* = null;
         var _loc23_:* = null;
         var _loc11_:int = 0;
         var _loc24_:int = 0;
         var _loc14_:* = null;
         var _loc7_:* = null;
         var _loc22_:int = 0;
         var _loc3_:* = null;
         var _loc8_:int = 0;
         var _loc25_:int = 0;
         var _loc18_:int = 0;
         var _loc12_:String = "store.strongboxes";
         var _loc21_:String = "store.comboPacks";
         var _loc5_:int = param1.o3554(_loc12_);
         var _loc4_:int = param1.o3554(_loc21_);
         o642 = new Vector.<o19082>();
         _loc15_ = 0;
         while(_loc15_ < _loc5_)
         {
            _loc12_ = "store.strongboxes." + _loc15_.toString() + ".";
            _loc6_ = new o19082();
            _loc6_.o16582 = param1.o3554(_loc12_ + "chestType");
            _loc6_.name = param1.o9009(_loc12_ + "name");
            _loc6_.o6639 = param1.o3554(_loc12_ + "nkCoinCost");
            _loc6_.o302 = _loc6_.o15127;
            _loc6_.o14335 = param1.o3554(_loc12_ + "minimumLevel");
            _loc6_.o883 = param1.o3554(_loc12_ + "maximumLevel");
            _loc6_.o18685 = param1.o18357(_loc12_ + "limitedTime",false);
            _loc6_.enabled = param1.o18357(_loc12_ + "enabled",true);
            _loc6_.o1830 = param1.o3554(_loc12_ + "quantity");
            _loc6_.o2296 = param1.o3554(_loc12_ + "nkProductId");
            if(_loc6_.o883 <= 0)
            {
               _loc6_.o883 = 9999;
            }
            o642.push(_loc6_);
            _loc15_++;
         }
         o9016 = new Vector.<o4162>();
         o2349 = new Vector.<o4162>();
         o4132 = new Vector.<o4162>();
         _loc15_ = 0;
         while(_loc15_ < _loc4_)
         {
            _loc21_ = "store.comboPacks." + _loc15_ + ".";
            _loc17_ = new o4162();
            _loc17_.o15435 = param1.o9009(_loc21_ + "customImageFrameLabel");
            _loc17_.o12427 = param1.o3554(_loc21_ + "premiumNightmareTickets");
            _loc17_.o14636 = param1.o3554(_loc21_ + "allTurretsCount");
            _loc17_.o302 = _loc17_.o15127;
            _loc17_.o2000 = param1.o3554(_loc21_ + "uiFrameIndex");
            _loc17_.o14335 = param1.o3554(_loc21_ + "minimumLevel");
            _loc17_.o883 = param1.o3554(_loc21_ + "maximumLevel");
            _loc17_.o2296 = param1.o3554(_loc21_ + "nkProductId");
            _loc17_.o18685 = param1.o18357(_loc21_ + "limitedTime",false);
            _loc17_.o7962 = param1.o9009(_loc21_ + "description");
            _loc17_.o14822 = param1.o3554(_loc21_ + "jumpToLevel");
            _loc17_.o6639 = param1.o3554(_loc21_ + "nkCoinCost");
            _loc17_.enabled = param1.o18357(_loc21_ + "enabled",true);
            _loc17_.o12211 = param1.o18357(_loc21_ + "ignoreInventorySpace");
            _loc17_.o6727 = param1.o18357(_loc21_ + "isPremiumProduct");
            _loc17_.name = param1.o9009(_loc21_ + "name");
            if(_loc17_.o883 <= 0)
            {
               _loc17_.o883 = 9999;
            }
            _loc17_.o18409 = param1.o3554(_loc21_ + "sasCash");
            _loc17_.o17160 = param1.o3554(_loc21_ + "continueTokenQty");
            _loc16_ = param1.o9009(_loc21_ + "type");
            _loc17_.type = 0;
            if(_loc16_ != null)
            {
               if(_loc16_ == "RESPEC")
               {
                  _loc17_.type = 1;
               }
               else if(_loc16_ == "SAS_CASH")
               {
                  _loc17_.type = 2;
               }
               else if(_loc16_ == "UNLOCK_CHARACTER_SLOT")
               {
                  _loc17_.type = 3;
               }
               else
               {
                  throw new Error("Invalid combo pack type");
               }
            }
            _loc17_.o11620 = new Vector.<o16119>();
            _loc20_ = _loc21_ + "weapons";
            _loc13_ = param1.o3554(_loc20_);
            _loc10_ = 0;
            while(_loc10_ < _loc13_)
            {
               _loc20_ = _loc21_ + "weapons." + _loc10_.toString() + ".";
               _loc2_ = new o16119();
               _loc2_.o10748 = param1.o3554(_loc20_ + "weaponId");
               _loc2_.grade = param1.o3554(_loc20_ + "grade");
               _loc2_.o11314 = param1.o3554(_loc20_ + "augSlots");
               o13146(_loc2_,param1,_loc20_ + "augments.deadly",1);
               _loc17_.o11620.push(_loc2_);
               _loc10_++;
            }
            _loc17_.o4256 = new Vector.<o10155>();
            _loc23_ = _loc21_ + "equipment";
            _loc11_ = param1.o3554(_loc23_);
            _loc24_ = 0;
            while(_loc24_ < _loc11_)
            {
               _loc23_ = _loc21_ + "equipment." + _loc24_.toString() + ".";
               _loc14_ = new o10155();
               _loc14_.o15568 = param1.o3554(_loc23_ + "equipmentId");
               _loc14_.grade = param1.o3554(_loc23_ + "grade");
               _loc14_.o11314 = param1.o3554(_loc23_ + "augSlots");
               o15004(_loc14_,param1,_loc23_ + "augments.revitalising",19);
               o15004(_loc14_,param1,_loc23_ + "augments.bodyFueling",17);
               _loc17_.o4256.push(_loc14_);
               _loc24_++;
            }
            _loc7_ = _loc21_ + "turrets.";
            _loc22_ = param1.o3554(_loc7_ + "HVMHeavyMachineGun");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(4,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "cryoTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(5,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "heavyShotTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(6,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "missleTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(7,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "flameTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(8,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "zeusTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(9,_loc22_);
            }
            _loc22_ = param1.o3554(_loc7_ + "plasmaTurret");
            if(_loc22_ > 0)
            {
               _loc17_.o9673(10,_loc22_);
            }
            _loc3_ = _loc21_ + "grenades.";
            _loc8_ = param1.o3554(_loc3_ + "m45");
            if(_loc8_ > 0)
            {
               _loc17_.o1019(1,_loc8_);
            }
            _loc25_ = param1.o3554(_loc3_ + "cryo");
            if(_loc25_ > 0)
            {
               _loc17_.o1019(2,_loc25_);
            }
            o19875(param1,_loc17_,_loc21_,o4189.o11328,"promethium");
            o19875(param1,_loc17_,_loc21_,o4189.o15243,"thulium");
            o19875(param1,_loc17_,_loc21_,o4189.o1897,"nantonium");
            _loc17_.o5532 = param1.o3554(_loc21_ + "blackKeys");
            _loc17_.o7136 = param1.o3554(_loc21_ + "strongboxes.black");
            _loc17_.o18104 = param1.o3554(_loc21_ + "eliteCores");
            _loc17_.o10252 = param1.o3554(_loc21_ + "shardTokens");
            _loc18_ = param1.o3554(_loc21_ + "group");
            if(_loc18_ == 0)
            {
               o9016.push(_loc17_);
            }
            else if(_loc18_ == 1)
            {
               o2349.push(_loc17_);
            }
            else
            {
               o4132.push(_loc17_);
            }
            _loc15_++;
         }
         o11620 = new Vector.<o8925>();
         o4256 = new Vector.<o12420>();
         var _loc27_:int = 0;
         var _loc26_:* = o4519.o8116.o1184.o6795;
         for each(var _loc19_ in o4519.o8116.o1184.o6795)
         {
            if(_loc19_.o9396 && _loc19_.o13758 > 0)
            {
               o11620.push(_loc19_);
            }
         }
         o11620.sort(o1340);
         var _loc29_:int = 0;
         var _loc28_:* = o4519.o8116.o9511.o17794;
         for each(var _loc9_ in o4519.o8116.o9511.o17794)
         {
            if(_loc9_.o9396 && _loc9_.o13758 > 0)
            {
               o4256.push(_loc9_);
            }
         }
         o4256.sort(o15241);
         o4256 = o4256;
      }
      
      public function o18451(param1:Vector.<o4162>, param2:int) : int
      {
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_.o2296 == param2)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function o16665(param1:int) : void
      {
         var _loc3_:int = o18451(o9016,param1);
         var _loc2_:int = o18451(o2349,param1);
         if(_loc3_ >= 0)
         {
            o4132.push(o9016[_loc3_]);
            o9016.splice(_loc3_,1);
         }
         if(_loc2_ >= 0)
         {
            o4132.push(o9016[_loc2_]);
            o9016.splice(_loc2_,1);
         }
      }
      
      public function o5409(param1:int) : Vector.<o8925>
      {
         var _loc4_:Vector.<o8925> = new Vector.<o8925>();
         var _loc3_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = this.o11620;
         for each(var _loc2_ in this.o11620)
         {
            if(_loc2_.o13758 > param1)
            {
               _loc4_.push(_loc3_);
               _loc3_ = null;
               break;
            }
            _loc3_ = _loc2_;
         }
         if(_loc3_ != null)
         {
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public function o3463(param1:int, param2:int) : o12420
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = this.o4256;
         for each(var _loc3_ in this.o4256)
         {
            if(_loc3_.o20559 == param2 && _loc3_.o13758 > param1)
            {
               return _loc4_;
            }
            if(_loc3_.o20559 == param2)
            {
               _loc4_ = _loc3_;
            }
         }
         return _loc4_;
      }
      
      public function o10951(param1:int) : Vector.<o12420>
      {
         var _loc3_:int = 0;
         var _loc4_:Vector.<o12420> = new Vector.<o12420>();
         var _loc2_:o12420 = null;
         _loc3_ = 0;
         while(_loc3_ <= 4)
         {
            _loc2_ = o3463(param1,_loc3_);
            if(_loc2_ != null)
            {
               _loc4_.push(_loc2_);
            }
            _loc3_++;
         }
         return _loc4_;
      }
      
      private function o1340(param1:o8925, param2:o8925) : int
      {
         if(param1.o13758 < param2.o13758)
         {
            return -1;
         }
         if(param1.o13758 > param2.o13758)
         {
            return 1;
         }
         return 0;
      }
      
      private function o15241(param1:o12420, param2:o12420) : int
      {
         if(param1.o13758 < param2.o13758)
         {
            return -1;
         }
         if(param1.o13758 > param2.o13758)
         {
            return 1;
         }
         return 0;
      }
   }
}
