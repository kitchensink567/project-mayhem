package
{
   import flash.utils.Dictionary;
   
   public class o11995
   {
       
      
      public var o3915:Dictionary;
      
      private var o16770:o15787;
      
      private var o11635:o16123;
      
      public function o11995()
      {
         o3915 = new Dictionary();
         o16770 = new o15787(1);
         o11635 = new o16123(0);
         super();
      }
      
      public function o563() : Dictionary
      {
         var _loc1_:Dictionary = new Dictionary();
         var _loc4_:int = 0;
         var _loc3_:* = o3915;
         for(var _loc2_ in o3915)
         {
            _loc1_[_loc2_] = o3915[_loc2_];
         }
         return _loc1_;
      }
      
      public function o6575() : Vector.<int>
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         _loc1_ = 0;
         while(_loc1_ < 71)
         {
            _loc2_.push(o15613(_loc1_));
            _loc1_++;
         }
         return _loc2_;
      }
      
      public function get o20244() : Number
      {
         return o16770.value;
      }
      
      public function set o20244(param1:Number) : void
      {
         o16770.value = param1;
      }
      
      public function get o220() : int
      {
         return o11635.value;
      }
      
      public function set o220(param1:int) : void
      {
         o11635.value = param1;
      }
      
      public function o6185() : Boolean
      {
         return true;
      }
      
      public function o4671(param1:int) : int
      {
         if(o3915[param1] == null)
         {
            return 0;
         }
         return o3915[param1];
      }
      
      public function o19755(param1:int, param2:int, param3:Boolean = true) : void
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc7_:* = 0;
         var _loc6_:o4609 = o4519.o8116.profileData.o5292.o20827;
         var _loc5_:int = _loc6_.o320(o3915[param1]);
         o3915[param1] = param2;
         var _loc10_:int = _loc6_.o320(o3915[param1]);
         if(_loc10_ > _loc5_)
         {
            _loc8_ = _loc6_.o8206(param1);
            _loc7_ = _loc5_;
            while(_loc7_ < _loc10_)
            {
               if(_loc7_ < _loc8_.o9938.length)
               {
                  _loc9_ = _loc8_.o9938[_loc7_];
                  var _loc12_:int = 0;
                  var _loc11_:* = _loc9_.o8855;
                  for each(var _loc4_ in _loc9_.o8855)
                  {
                     _loc4_.o13260();
                  }
               }
               _loc7_++;
            }
         }
      }
      
      public function o17628(param1:int) : void
      {
         o3915[param1] = 0;
      }
      
      public function o143(param1:int, param2:Boolean) : void
      {
         var _loc3_:o4609 = o4519.o8116.profileData.o5292.o20827;
         o19755(param1,_loc3_.o9238(),param2);
      }
      
      public function o15613(param1:int) : int
      {
         var _loc2_:o4609 = o4519.o8116.profileData.o5292.o20827;
         return _loc2_.o320(o4671(param1));
      }
      
      public function o13628(param1:int) : Boolean
      {
         var _loc3_:o4609 = o4519.o8116.profileData.o5292.o20827;
         var _loc2_:int = o15613(param1);
         return _loc2_ >= _loc3_.o18156();
      }
      
      public function o14264() : Object
      {
         var _loc1_:Object = {};
         _loc1_[300] = o12552.o13366(o3915);
         _loc1_[302] = o20244;
         _loc1_[303] = o220;
         return _loc1_;
      }
      
      public function o8169(param1:Object) : void
      {
         var _loc2_:* = param1;
         o3915 = new Dictionary();
         if(_loc2_[300] != null)
         {
            o12552.o18306(_loc2_[300] as Array,o3915);
            o20244 = _loc2_[302];
            o220 = _loc2_[303];
         }
      }
      
      public function o5145(param1:int, param2:int = -1) : o7705
      {
         var _loc3_:o12557 = new o12557();
         _loc3_.o15765();
         return _loc3_.o13163(param1,param2);
      }
      
      public function o18221(param1:int, param2:int = -1) : o7705
      {
         var _loc3_:o12557 = new o12557();
         _loc3_.o13344();
         return _loc3_.o13163(param1,param2);
      }
      
      public function o9617(param1:int, param2:int) : void
      {
      }
      
      private function o11300(param1:int, param2:int, param3:o12557, param4:Boolean) : Boolean
      {
         var _loc8_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc10_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc7_:o4609 = o14200.o19505.o5292.o20827;
         var _loc5_:* = false;
         _loc8_ = param3.o13163(param2,param1);
         var _loc9_:* = o14200.o19505.o7923.level > 10;
         if(_loc8_.o5411 >= _loc8_.o14170)
         {
            if(param4)
            {
               if(param1 < 0)
               {
                  _loc11_ = _loc7_.o7544(param2);
               }
               else
               {
                  _loc11_ = _loc7_.o14852(param1,param2);
               }
            }
            else if(param1 < 0)
            {
               _loc11_ = _loc7_.o6120(param2);
            }
            else
            {
               _loc11_ = _loc7_.o6194(param1,param2);
            }
            if(_loc11_ == null)
            {
               return false;
            }
            _loc5_ = o4671(_loc11_.id) > 0;
            if(_loc5_ == false)
            {
               _loc12_ = _loc11_.o9938[0];
               this.o143(_loc11_.id,_loc9_);
               _loc10_ = true;
               if(_loc9_)
               {
                  o8339(_loc12_.o13404() + " : " + _loc11_.id.toString());
                  _loc6_ = o15788(_loc11_.id);
                  _loc13_ = _loc12_.o19262();
                  o8339(_loc6_.toString() + " : " + _loc13_.toString());
                  if(_loc6_ == false || _loc13_)
                  {
                     o4519.o10093.o16989.o12991(_loc11_,param2);
                     _loc10_ = false;
                  }
               }
               if(_loc10_)
               {
                  return false;
               }
               return true;
            }
         }
         return false;
      }
      
      private function o15788(param1:int) : Boolean
      {
         var _loc2_:o14200 = o14200.o19505;
         var _loc5_:int = 0;
         var _loc4_:* = _loc2_.data.o11400;
         for each(var _loc3_ in _loc2_.data.o11400)
         {
            if(_loc3_.o13012.o4671(param1) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o19556() : Boolean
      {
         var _loc5_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:o12557 = new o12557();
         _loc2_.o15765();
         var _loc4_:o12557 = new o12557();
         _loc4_.o13344();
         _loc5_ = 1;
         while(_loc5_ <= 3)
         {
            _loc3_ = 1;
            while(_loc3_ <= 12)
            {
               if(o11300(_loc3_,_loc5_,_loc2_,true))
               {
                  return true;
               }
               _loc3_++;
            }
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               if(o11300(_loc1_,_loc5_,_loc4_,false))
               {
                  return true;
               }
               _loc1_++;
            }
            if(o11300(-1,_loc5_,_loc2_,true))
            {
               return true;
            }
            if(o11300(-1,_loc5_,_loc4_,false))
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }
   }
}
