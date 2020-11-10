package
{
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o19626
   {
       
      
      private var o2781:int = -1;
      
      public var o1788:Dictionary;
      
      private var o10293:o16123;
      
      public function o19626()
      {
         o1788 = new Dictionary();
         o10293 = new o16123(0);
         super();
      }
      
      public static function o12803(param1:MovieClip) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < 1)
         {
            _loc4_ = param1.getChildByName("badge" + _loc3_.toString()) as MovieClip;
            _loc2_ = _loc4_.getChildByName("level") as MovieClip;
            _loc2_.gotoAndStop(1);
            _loc4_.visible = false;
            _loc3_++;
         }
      }
      
      public function get o12273() : int
      {
         var _loc1_:* = null;
         if(o2781 < 0)
         {
            _loc1_ = o14200.o19505.o5292.o16679.o9622();
            return _loc1_ == null?0:_loc1_.o19189;
         }
         return o2781;
      }
      
      public function get o14461() : int
      {
         return o10293.value;
      }
      
      public function set o14461(param1:int) : void
      {
         o10293.value = param1;
      }
      
      private function o9081(param1:int) : Vector.<o16123>
      {
         var _loc2_:int = 0;
         var _loc3_:Vector.<o16123> = o1788[param1] as Vector.<o16123>;
         if(_loc3_ == null)
         {
            _loc3_ = new Vector.<o16123>();
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc3_.push(new o16123(0));
               _loc2_++;
            }
            o1788[param1] = _loc3_;
         }
         return _loc3_;
      }
      
      public function o3053(param1:int, param2:int) : void
      {
         var _loc3_:Vector.<o16123> = o9081(param1);
         _loc3_[param2].value++;
      }
      
      public function o17753(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Vector.<o16123> = o9081(param1);
         _loc4_[param2].value = param3;
      }
      
      public function o18665() : void
      {
         o1788 = new Dictionary();
      }
      
      public function o14223(param1:int) : Vector.<int>
      {
         var _loc4_:Vector.<o16123> = o9081(param1);
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc6_:int = 0;
         var _loc5_:* = _loc4_;
         for each(var _loc2_ in _loc4_)
         {
            _loc3_.push(_loc2_.value);
         }
         return _loc3_;
      }
      
      public function o5233() : int
      {
         var _loc2_:o14200 = o14200.o19505;
         var _loc4_:int = 0;
         var _loc3_:* = _loc2_.o5292.o16679.o12738;
         for each(var _loc1_ in _loc2_.o5292.o16679.o12738)
         {
            if(_loc1_.o11392.type == 3)
            {
               return _loc1_.o19189;
            }
         }
         return 0;
      }
      
      public function o17060(param1:Object) : void
      {
         var _loc5_:* = null;
         var _loc8_:int = 0;
         var _loc7_:* = null;
         var _loc3_:* = null;
         var _loc6_:* = undefined;
         var _loc4_:int = 0;
         o1788 = new Dictionary();
         if([501] != null)
         {
            o14461 = param1[502];
            _loc5_ = param1[503];
            var _loc10_:int = 0;
            var _loc9_:* = _loc5_;
            for each(var _loc2_ in _loc5_)
            {
               _loc8_ = _loc2_[3];
               _loc7_ = o11614.o18106(_loc8_);
               if(_loc7_ != null)
               {
                  _loc3_ = _loc2_[4];
                  _loc6_ = new Vector.<o16123>();
                  _loc4_ = 0;
                  while(_loc4_ < 6)
                  {
                     _loc6_.push(new o16123(0));
                     _loc4_++;
                  }
                  _loc4_ = 0;
                  while(_loc4_ < _loc3_.length)
                  {
                     _loc6_[_loc4_].value = _loc3_[_loc4_];
                     _loc4_++;
                  }
                  o1788[_loc8_] = _loc6_;
               }
            }
         }
      }
      
      public function o9243() : Vector.<int>
      {
         var _loc1_:Vector.<int> = new Vector.<int>();
         var _loc4_:int = 0;
         var _loc3_:* = o1788;
         for(var _loc2_ in o1788)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function o14264() : Object
      {
         var _loc5_:* = undefined;
         var _loc2_:* = null;
         var _loc1_:* = null;
         var _loc6_:Object = {};
         _loc6_[502] = o14461;
         var _loc4_:Array = [];
         var _loc11_:int = 0;
         var _loc10_:* = o1788;
         for(var _loc7_ in o1788)
         {
            _loc5_ = o1788[_loc7_];
            _loc2_ = [];
            var _loc9_:int = 0;
            var _loc8_:* = _loc5_;
            for each(var _loc3_ in _loc5_)
            {
               _loc2_.push(_loc3_.value);
            }
            _loc1_ = {};
            _loc1_[3] = _loc7_;
            _loc1_[4] = _loc2_;
            _loc4_.push(_loc1_);
         }
         _loc6_[503] = _loc4_;
         return _loc6_;
      }
      
      public function o20663(param1:ByteArray) : void
      {
         var _loc5_:* = undefined;
         var _loc2_:o14200 = o14200.o19505;
         var _loc6_:o14801 = _loc2_.o5292.o16679.o9622();
         param1.writeInt(_loc6_ == null?0:_loc6_.o19189);
         param1.writeInt(o14461);
         var _loc3_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = o1788;
         for(var _loc8_ in o1788)
         {
            _loc3_++;
         }
         param1.writeInt(_loc3_);
         var _loc14_:int = 0;
         var _loc13_:* = o1788;
         for(var _loc7_ in o1788)
         {
            _loc5_ = o1788[_loc7_];
            param1.writeInt(_loc7_);
            param1.writeInt(_loc5_.length);
            var _loc12_:int = 0;
            var _loc11_:* = _loc5_;
            for each(var _loc4_ in _loc5_)
            {
               param1.writeInt(_loc4_.value);
            }
         }
      }
      
      public function o11672(param1:ByteArray) : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = undefined;
         var _loc7_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         o1788 = new Dictionary();
         o2781 = param1.readInt();
         o14461 = param1.readInt();
         var _loc3_:int = param1.readInt();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _loc6_ = new Vector.<o16123>();
            _loc7_ = param1.readInt();
            _loc5_ = param1.readInt();
            _loc2_ = 0;
            while(_loc2_ < _loc5_)
            {
               _loc6_.push(new o16123(param1.readInt()));
               _loc2_++;
            }
            o1788[_loc7_] = _loc6_;
            _loc4_++;
         }
      }
      
      public function o6366() : Dictionary
      {
         var _loc2_:* = undefined;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         var _loc5_:Dictionary = new Dictionary();
         var _loc3_:Vector.<int> = new Vector.<int>();
         var _loc10_:int = 0;
         var _loc9_:* = o1788;
         for(var _loc6_ in o1788)
         {
            _loc2_ = o14223(_loc6_);
            while(_loc3_.length < _loc2_.length)
            {
               _loc3_.push(0);
            }
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               var _loc7_:* = _loc4_;
               var _loc8_:* = _loc3_[_loc7_] + _loc2_[_loc4_];
               _loc3_[_loc7_] = _loc8_;
               _loc4_++;
            }
         }
         if(_loc3_.length > 0)
         {
            _loc1_ = 5;
            while(_loc1_ >= 0)
            {
               if(_loc3_[_loc1_] > 0)
               {
                  _loc5_[0] = _loc1_;
                  break;
               }
               _loc1_--;
            }
         }
         return _loc5_;
      }
      
      public function o8492(param1:o16681, param2:MovieClip) : void
      {
         var _loc10_:* = null;
         var _loc4_:* = null;
         var _loc7_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:Dictionary = o6366();
         o12803(param2);
         var _loc8_:Vector.<int> = o9243();
         _loc7_ = 0;
         while(_loc7_ < 1)
         {
            _loc10_ = param2.getChildByName("badge" + _loc7_.toString()) as MovieClip;
            _loc4_ = _loc10_.getChildByName("level") as MovieClip;
            _loc4_.gotoAndStop(1);
            _loc10_.visible = false;
            _loc7_++;
         }
         var _loc9_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:* = _loc5_;
         for(var _loc3_ in _loc5_)
         {
            _loc6_ = _loc5_[_loc3_];
            _loc10_ = param2.getChildByName("badge" + _loc9_.toString()) as MovieClip;
            _loc4_ = _loc10_.getChildByName("level") as MovieClip;
            _loc4_.gotoAndStop(_loc6_ + 1);
            param1.o5452(new o20636(_loc6_,_loc4_));
            _loc10_.visible = true;
            _loc9_++;
         }
      }
      
      public function o10128(param1:MovieClip) : void
      {
      }
      
      public function o10586() : Vector.<int>
      {
         var _loc1_:* = undefined;
         var _loc2_:int = 0;
         var _loc4_:Vector.<int> = o9243();
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:Vector.<int> = new Vector.<int>();
         while(_loc3_.length < 6)
         {
            _loc3_.push(0);
         }
         var _loc11_:int = 0;
         var _loc10_:* = o1788;
         for(var _loc7_ in o1788)
         {
            _loc1_ = this.o14223(_loc7_);
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               var _loc8_:* = _loc2_;
               var _loc9_:* = _loc3_[_loc8_] + _loc1_[_loc2_];
               _loc3_[_loc8_] = _loc9_;
               _loc2_++;
            }
         }
         return _loc3_;
      }
   }
}
