package
{
   import flash.utils.Dictionary;
   
   public class o3262
   {
       
      
      private var o5650:Boolean = false;
      
      public var o20428:o19696;
      
      private var o10104:o15787;
      
      public var o11873:o19696;
      
      public var o16678:o19696;
      
      private var o10101:Vector.<o15787>;
      
      public var o1120:o19696;
      
      public var o9888:Vector.<o12078>;
      
      public var o15331:Vector.<o12078>;
      
      public var o3437:o19696;
      
      private var o14766:Vector.<o15787>;
      
      public var o9738:o11930;
      
      public var o20203:o626;
      
      private var o496:o16123;
      
      private var o1169:o16123;
      
      private var o9413:o16123;
      
      public function o3262()
      {
         o10104 = new o15787(0.5);
         o496 = new o16123(0);
         o1169 = new o16123(0);
         o9413 = new o16123(0);
         super();
      }
      
      public function get o19983() : Number
      {
         return o10104.value;
      }
      
      public function o5015() : int
      {
         return o10101.length;
      }
      
      public function o3352(param1:int) : Number
      {
         return o10101[param1].value;
      }
      
      public function o18954() : int
      {
         return o14766.length;
      }
      
      public function o4849(param1:int) : Number
      {
         return o14766[param1].value;
      }
      
      public function get o13682() : int
      {
         return o496.value;
      }
      
      public function get o15276() : int
      {
         return o1169.value;
      }
      
      public function get o744() : int
      {
         return o9413.value;
      }
      
      private function o16339(param1:o2693, param2:String) : Vector.<o15787>
      {
         var _loc5_:Vector.<o15787> = new Vector.<o15787>();
         var _loc4_:Vector.<Number> = param1.o11513(param2);
         var _loc7_:int = 0;
         var _loc6_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            _loc5_.push(new o15787(_loc3_));
         }
         return _loc5_;
      }
      
      public function init(param1:o2693) : void
      {
         var _loc2_:int = 0;
         o20428 = new o19696();
         o11873 = new o19696();
         o16678 = new o19696();
         o1120 = new o19696();
         o9888 = new Vector.<o12078>();
         o15331 = new Vector.<o12078>();
         o3437 = new o19696();
         o9738 = new o11930();
         o20203 = new o626();
         o20428.init(param1,"loot.claimStrongbox.strongboxChestTypeRates.");
         o10104.value = param1.o17521("loot.claimStrongbox.isWeaponChance");
         o11873.init(param1,"loot.claimStrongbox.gradeModNumD6.");
         o16678.init(param1,"loot.claimStrongbox.gradeModNumConst.");
         o10101 = o16339(param1,"loot.claimStrongbox.gradeRates");
         o1120.init(param1,"loot.claimStrongbox.playerRankMod.");
         o496.value = param1.o3554("loot.claimStrongbox.aboveTotal");
         o1169.value = param1.o3554("loot.claimStrongbox.belowTotalAddition");
         o9413.value = param1.o3554("loot.claimStrongbox.nantoniumBelowTotal");
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            o9888.push(new o12078().init(param1,"loot.claimStrongbox.weaponSlotChances." + _loc2_.toString() + "."));
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            o15331.push(new o12078().init(param1,"loot.claimStrongbox.equipmentSlotChances." + _loc2_.toString() + "."));
            _loc2_++;
         }
         o3437.init(param1,"loot.claimStrongbox.augmentationGradeD6.");
         o14766 = o16339(param1,"loot.claimStrongbox.gradeChances");
         o9738.init(param1);
         o20203.init(param1);
      }
      
      private function o12740(param1:Number, param2:Number) : void
      {
         if(Math.abs(param1 - param2) > 0.0001 || isNaN(param1) || isNaN(param2))
         {
            throw new Error("assert failed: " + param1.toString() + " != " + param2.toString());
         }
      }
      
      public function o17016() : void
      {
         o12740(o19983,0.5);
      }
      
      public function o18041() : Array
      {
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc3_:* = o10101;
         for each(var _loc1_ in o10101)
         {
            if(_loc1_.value == -1)
            {
               _loc2_.push(1.79769313486232e308);
            }
            else
            {
               _loc2_.push(_loc1_.value);
            }
         }
         return _loc2_;
      }
      
      public function o9715() : Array
      {
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         var _loc3_:* = o14766;
         for each(var _loc1_ in o14766)
         {
            if(_loc1_.value == -1)
            {
               _loc2_.push(1.79769313486232e308);
            }
            else
            {
               _loc2_.push(_loc1_.value);
            }
         }
         return _loc2_;
      }
      
      public function o12229(param1:Dictionary) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[o4189.o19843],-10);
         o12740(param1[o4189.o17868],0);
         o12740(param1[o4189.o20918],5);
         o12740(param1[o4189.o6765],10);
         o12740(param1[o4189.o16296],20);
         o12740(param1[o4189.o11328],25);
         o12740(param1[o4189.o15243],30);
         o12740(param1[o4189.o1897],40);
      }
      
      public function o2900(param1:Dictionary) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[o4189.o19843],4);
         o12740(param1[o4189.o17868],5);
         o12740(param1[o4189.o20918],7);
         o12740(param1[o4189.o6765],8);
         o12740(param1[o4189.o16296],10);
         o12740(param1[o4189.o11328],11);
         o12740(param1[o4189.o15243],13);
         o12740(param1[o4189.o1897],14);
      }
      
      public function o13708(param1:Dictionary) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[o4189.o19843],0);
         o12740(param1[o4189.o17868],0.02);
         o12740(param1[o4189.o20918],0.04);
         o12740(param1[o4189.o6765],0.06);
         o12740(param1[o4189.o16296],0.1);
         o12740(param1[o4189.o11328],0.15);
         o12740(param1[o4189.o15243],0.2);
         o12740(param1[o4189.o1897],0.25);
      }
      
      public function o15226(param1:Array) : void
      {
         var _loc2_:int = 0;
         if(o5650 == false)
         {
            return;
         }
         var _loc3_:Array = [0.15,0.27,0.39,0.51,0.62,0.72,0.81,0.88,0.94,0.98,1.79769313486232e308];
         if(_loc3_.length != param1.length)
         {
            throw new Error("Invalid testGradeRates");
         }
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            o12740(_loc3_[_loc2_],param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function o12944(param1:Dictionary) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[o4189.o19843],0);
         o12740(param1[o4189.o17868],0);
         o12740(param1[o4189.o20918],0);
         o12740(param1[o4189.o6765],0);
         o12740(param1[o4189.o16296],5);
         o12740(param1[o4189.o11328],8);
         o12740(param1[o4189.o15243],12);
         o12740(param1[o4189.o1897],20);
      }
      
      private function o5935(param1:Array, param2:Array) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[0],param2[0]);
         var _loc4_:Array = param1[1];
         var _loc3_:Array = param2[1];
         o12740(_loc4_[0],_loc3_[0]);
         o12740(_loc4_[1],_loc3_[1]);
         o12740(_loc4_[2],_loc3_[2]);
      }
      
      public function o3524(param1:Array) : void
      {
         var _loc3_:int = 0;
         if(o5650 == false)
         {
            return;
         }
         var _loc2_:Array = [[10,[0.8,0.2,0]],[30,[0.4,0.5,0.1]],[2147483647,[0.1,0.6,0.3]]];
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            o5935(_loc2_[_loc3_],param1[_loc3_]);
            _loc3_++;
         }
      }
      
      public function o8235(param1:Array) : void
      {
         var _loc3_:int = 0;
         if(o5650 == false)
         {
            return;
         }
         var _loc2_:Array = [[10,[0.8,0.2,0]],[30,[0.5,0.5,0]],[2147483647,[0.3,0.7,0]]];
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            o5935(_loc2_[_loc3_],param1[_loc3_]);
            _loc3_++;
         }
      }
      
      public function o13740(param1:Dictionary) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o12740(param1[o4189.o19843],5);
         o12740(param1[o4189.o17868],7);
         o12740(param1[o4189.o20918],8);
         o12740(param1[o4189.o6765],10);
         o12740(param1[o4189.o16296],13);
         o12740(param1[o4189.o11328],16);
         o12740(param1[o4189.o15243],20);
         o12740(param1[o4189.o1897],22);
      }
      
      public function o11283(param1:Array) : void
      {
         var _loc2_:int = 0;
         if(o5650 == false)
         {
            return;
         }
         var _loc3_:Array = [0.15,0.27,0.39,0.51,0.62,0.72,0.81,0.88,0.94,1.79769313486232e308];
         if(_loc3_.length != param1.length)
         {
            throw new Error("Invalid testGradeChances");
         }
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            o12740(_loc3_[_loc2_],param1[_loc2_]);
            _loc2_++;
         }
      }
      
      private function o19846(param1:Array, param2:int) : Number
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_[0] == param2)
            {
               return _loc3_[1];
            }
         }
         throw new Error("Value now found");
      }
      
      private function o1949(param1:Array, param2:int, param3:Number) : void
      {
         var _loc4_:Number = o19846(param1,param2);
         o12740(_loc4_,param3);
      }
      
      public function o10712(param1:Array) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o1949(param1,1,0.1);
         o1949(param1,2,0.2);
         o1949(param1,3,0.28);
         o1949(param1,4,0.36);
         o1949(param1,5,0.44);
         o1949(param1,6,0.52);
         o1949(param1,7,0.6);
         o1949(param1,8,0.68);
         o1949(param1,9,0.76);
         o1949(param1,10,0.84);
         o1949(param1,11,0.92);
      }
      
      public function o2054(param1:Array) : void
      {
         if(o5650 == false)
         {
            return;
         }
         o1949(param1,13,0.08);
         o1949(param1,14,0.16);
         o1949(param1,15,0.24);
         o1949(param1,22,0.32);
         o1949(param1,23,0.4);
         o1949(param1,24,0.48);
         o1949(param1,16,0.56);
         o1949(param1,17,0.64);
         o1949(param1,18,0.72);
         o1949(param1,19,0.8);
         o1949(param1,20,0.88);
         o1949(param1,25,0.95);
         o1949(param1,21,1);
      }
   }
}
