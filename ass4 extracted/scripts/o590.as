package
{
   import flash.utils.Dictionary;
   
   public class o590
   {
       
      
      private var o18982:o9764;
      
      public var o10608:o9145;
      
      private var o19231:Dictionary;
      
      private const o1033:int = 100;
      
      public function o590(param1:o9145, param2:o9764)
      {
         var _loc5_:* = null;
         var _loc8_:int = 0;
         var _loc7_:* = null;
         var _loc3_:* = null;
         super();
         this.o10608 = param1;
         this.o18982 = param2;
         o19231 = new Dictionary();
         var _loc12_:int = 0;
         var _loc11_:* = param2.o3440;
         for each(var _loc4_ in param2.o3440)
         {
            _loc5_ = new Dictionary();
            this.o19231[_loc4_.o15322] = _loc5_;
            _loc8_ = 0;
            while(_loc8_ < param2.o12100)
            {
               _loc7_ = new Dictionary();
               _loc5_[_loc8_ + 1] = _loc7_;
               var _loc10_:int = 0;
               var _loc9_:* = param2.o2920;
               for each(var _loc6_ in param2.o2920)
               {
                  _loc3_ = new o6679();
                  _loc3_.o3440 = _loc4_;
                  _loc3_.o11119 = _loc4_.o15322;
                  _loc3_.o3 = _loc6_;
                  _loc3_.o11570 = _loc8_ + 1;
                  _loc7_[_loc6_] = _loc3_;
               }
               _loc8_++;
            }
         }
      }
      
      public function o197(param1:int, param2:int) : void
      {
         o18554(param1,1,1).o5109 = param2;
      }
      
      public function o1686(param1:Object) : void
      {
         var _loc8_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:int = 0;
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         var _loc5_:Array = param1 as Array;
         var _loc11_:int = 0;
         var _loc10_:* = _loc5_;
         for each(var _loc9_ in _loc5_)
         {
            _loc8_ = _loc9_[91];
            _loc4_ = _loc9_[92];
            _loc6_ = _loc9_[93];
            _loc7_ = _loc9_[94];
            _loc3_ = _loc9_[95];
            _loc2_ = this.o18554(_loc8_,_loc4_,_loc6_);
            if(_loc2_ != null)
            {
               _loc2_.o5109 = _loc7_;
               _loc2_.o17383 = _loc3_;
               if(_loc9_[96] != null)
               {
                  _loc2_.o15851 = _loc9_[96];
               }
            }
         }
      }
      
      public function o8169(param1:Object) : void
      {
         o1686(param1);
      }
      
      public function o19599() : Object
      {
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc7_:Array = [];
         var _loc14_:int = 0;
         var _loc13_:* = o19231;
         for(var _loc6_ in o19231)
         {
            _loc5_ = o19231[_loc6_];
            var _loc12_:int = 0;
            var _loc11_:* = _loc5_;
            for(var _loc2_ in _loc5_)
            {
               _loc8_ = _loc5_[_loc2_];
               var _loc10_:int = 0;
               var _loc9_:* = _loc8_;
               for(var _loc4_ in _loc8_)
               {
                  _loc1_ = _loc8_[_loc4_] as o6679;
                  _loc3_ = {};
                  _loc3_[91] = _loc6_;
                  _loc3_[92] = _loc2_;
                  _loc3_[93] = _loc4_;
                  _loc3_[94] = _loc1_.o5109;
                  _loc3_[95] = _loc1_.o17383;
                  _loc3_[96] = _loc1_.o15851;
                  _loc7_.push(_loc3_);
               }
            }
         }
         return _loc7_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
      
      public function o18554(param1:int, param2:int, param3:int) : o6679
      {
         var _loc5_:Dictionary = o19231[param1];
         var _loc6_:Dictionary = _loc5_[param2];
         if(_loc6_ == null)
         {
            return null;
         }
         var _loc4_:o6679 = _loc6_[param3] as o6679;
         if(_loc4_ == null)
         {
            throw new Error("Ammo not found (" + param1.toString() + ", " + param2.toString() + ", " + param3.toString() + ")");
         }
         return _loc4_;
      }
      
      public function o6879(param1:o6679) : void
      {
         var _loc5_:int = param1.o11119;
         var _loc2_:int = param1.o11570;
         var _loc3_:int = param1.o3;
         var _loc4_:Dictionary = o19231[_loc5_];
         var _loc6_:Dictionary = _loc4_[_loc2_];
         _loc6_[_loc3_] = param1;
      }
      
      public function o8567(param1:o14096) : o6679
      {
         if(param1 == null)
         {
            throw new Error("Null weapon");
         }
         if(param1.o457 == null)
         {
            throw new Error("Null ammo def. Check load order");
         }
         return o18554(param1.o2752.o6365,param1.o2752.o11570,param1.o2752.o3);
      }
      
      public function o20403(param1:o14096) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:o6679 = this.o8567(param1);
         var _loc4_:Number = this.o18982.o13727(_loc2_,false);
         if(o10608.o7683(_loc4_))
         {
            _loc3_ = _loc2_.o3440.o20235;
            _loc2_.o5109 = _loc2_.o5109 + _loc3_;
            return true;
         }
         return false;
      }
      
      public function o16196(param1:o14096) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:o6679 = this.o8567(param1);
         var _loc4_:Number = this.o18982.o13727(_loc2_,true);
         if(o10608.o7683(_loc4_))
         {
            _loc3_ = _loc2_.o3440.o20235;
            _loc2_.o17383 = _loc2_.o17383 + _loc3_;
            return true;
         }
         return false;
      }
      
      public function o5391(param1:o14096) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:o6679 = this.o8567(param1);
         var _loc4_:Number = this.o18982.o13727(_loc2_,false);
         if(o10608.o7683(_loc4_ * 100))
         {
            _loc3_ = _loc2_.o3440.o20235;
            _loc2_.o5109 = _loc2_.o5109 + _loc3_ * 100;
            return true;
         }
         return false;
      }
      
      public function o7826(param1:o14096) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:o6679 = this.o8567(param1);
         var _loc4_:Number = this.o18982.o13727(_loc2_,true);
         if(o10608.o7683(_loc4_ * 100))
         {
            _loc3_ = _loc2_.o3440.o20235;
            _loc2_.o17383 = _loc2_.o17383 + _loc3_ * 100;
            return true;
         }
         return false;
      }
   }
}
