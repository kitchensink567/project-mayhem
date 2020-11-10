package
{
   public class o14094
   {
       
      
      public var o19740:Vector.<o1492>;
      
      public var o20479:Vector.<o1492>;
      
      public var o17516:Vector.<o1492>;
      
      public var o15554:Vector.<o1492>;
      
      public function o14094(param1:o2693)
      {
         super();
         o19740 = o2569(param1,"base",3);
         o20479 = o2569(param1,"medic",1);
         o17516 = o2569(param1,"assault",0);
         o15554 = o2569(param1,"heavy",2);
      }
      
      private function o641(param1:o2693, param2:String) : Number
      {
         var _loc3_:* = Number(param1.o17521(param2));
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         return _loc3_;
      }
      
      private function o10657(param1:o2693, param2:String) : Boolean
      {
         var _loc3_:String = param1.o9009(param2);
         if(_loc3_ == null)
         {
            return false;
         }
         _loc3_ = _loc3_.toLowerCase();
         return _loc3_ != "false";
      }
      
      private function o2569(param1:o2693, param2:String, param3:int) : Vector.<o1492>
      {
         var _loc6_:int = 0;
         var _loc15_:* = null;
         var _loc14_:* = null;
         var _loc16_:int = 0;
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc19_:* = null;
         var _loc4_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc9_:* = null;
         var _loc11_:Number = NaN;
         var _loc18_:String = "skills." + param2;
         var _loc17_:int = param1.o3554(_loc18_);
         var _loc10_:Vector.<o1492> = new Vector.<o1492>();
         _loc6_ = 0;
         while(_loc6_ < _loc17_)
         {
            _loc14_ = _loc18_ + "." + _loc6_.toString() + ".";
            _loc16_ = param1.o3554(_loc14_ + "skillId");
            switch(int(_loc16_) - 15)
            {
               case 0:
                  _loc13_ = new o2469();
                  _loc13_.o12894 = param1.o17521(_loc14_ + "healAmountPerLevel");
                  _loc15_ = _loc13_;
                  break;
               default:
               default:
                  _loc15_ = new o1492();
                  break;
               case 3:
               default:
               default:
               default:
               default:
               default:
               default:
               default:
               default:
               default:
                  _loc7_ = new o1207();
                  _loc7_.o155 = param1.o3554(_loc14_ + "dropMedkits");
                  _loc7_.o9299 = param1.o3554(_loc14_ + "increaseDropMedkits");
                  _loc7_.o20532 = param1.o3554(_loc14_ + "indcreaseDropMedkitsPerSkillPoints");
                  _loc15_ = _loc7_;
                  break;
               case 13:
                  _loc8_ = new o6346();
                  _loc8_.o1543 = param1.o3554(_loc14_ + "changeIncreaseAmountLevel");
                  _loc8_.o808 = param1.o17521(_loc14_ + "nextIncreaseAmount");
                  _loc15_ = _loc8_;
                  break;
               case 14:
                  _loc19_ = new o2492();
                  _loc19_.o18721 = param1.o17521(_loc14_ + "arc");
                  _loc19_.o12412 = param1.o17521(_loc14_ + "increaseArc");
                  _loc15_ = _loc19_;
                  break;
               case 15:
                  _loc9_ = new o9875();
                  _loc9_.o2310 = param1.o17521(_loc14_ + "augmentationXPBonusPerLevel");
                  _loc15_ = _loc9_;
                  break;
               case 16:
                  _loc5_ = new o8755();
                  _loc5_.o8203 = param1.o17521(_loc14_ + "minHealth");
                  _loc15_ = _loc5_;
                  break;
               case 17:
                  _loc4_ = new o3695();
                  _loc4_.o16926 = param1.o17521(_loc14_ + "killZombieCount");
                  _loc4_.o20874 = param1.o17521(_loc14_ + "killZombiesTimeLimit");
                  _loc15_ = _loc4_;
                  break;
               case 18:
                  _loc12_ = new o19648();
                  _loc12_.o8536 = param1.o17521(_loc14_ + "increaseHealth");
                  _loc12_.o11243 = param1.o17521(_loc14_ + "health");
                  _loc15_ = _loc12_;
            }
            _loc15_.o10374 = _loc16_;
            _loc15_.o4978 = param3;
            _loc15_.name = param1.o9009(_loc14_ + "name");
            _loc15_.o1267 = param1.o9009(_loc14_ + "passive") != "false";
            _loc15_.o7792 = param1.o9009(_loc14_ + "gameDesc");
            _loc15_.o8398 = param1.o9009(_loc14_ + "details");
            _loc15_.o10387 = param1.o3554(_loc14_ + "unlockLevel");
            _loc15_.o17265 = param1.o9009(_loc14_ + "skillLevelDesc");
            _loc15_.o11846 = o641(param1,_loc14_ + "energyCost");
            _loc15_.o7249 = o641(param1,_loc14_ + "energyCostReductionPerSkillPoint");
            _loc15_.o2074 = o641(param1,_loc14_ + "minEnergyCost");
            _loc15_.o20290.value = o641(param1,_loc14_ + "amount");
            _loc15_.o16409.value = o641(param1,_loc14_ + "increaseAmount");
            _loc15_.o14045.value = o641(param1,_loc14_ + "increaseAmountPerLevels");
            _loc15_.o1922.value = o641(param1,_loc14_ + "radius");
            _loc15_.o9216.value = o641(param1,_loc14_ + "increaseRadius");
            _loc15_.o7369.value = o641(param1,_loc14_ + "duration");
            _loc15_.o9825.value = o641(param1,_loc14_ + "increaseDuration");
            _loc15_.o20049.value = o641(param1,_loc14_ + "pulseInterval");
            _loc15_.o13611.value = o641(param1,_loc14_ + "chance");
            _loc15_.o20583.value = o641(param1,_loc14_ + "increaseChance");
            _loc15_.o5472.value = o641(param1,_loc14_ + "damage");
            _loc15_.o10232.value = o641(param1,_loc14_ + "increaseDamage");
            _loc15_.o18372 = o10657(param1,_loc14_ + "diminishing");
            _loc15_.o18500 = o641(param1,_loc14_ + "cooldown");
            _loc11_ = param1.o17521(_loc14_ + "maxAmount");
            if(false == isNaN(_loc11_))
            {
               _loc15_.o7640 = _loc11_;
            }
            _loc10_.push(_loc15_);
            _loc6_++;
         }
         return _loc10_;
      }
      
      private function o18174(param1:Vector.<o1492>, param2:int) : o1492
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_.o10374 == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function o11241(param1:int) : o1492
      {
         var _loc2_:o1492 = null;
         _loc2_ = o18174(o19740,param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = o18174(o20479,param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = o18174(o15554,param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = o18174(o17516,param1);
         return _loc2_;
      }
   }
}
