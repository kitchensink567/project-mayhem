package
{
   import flash.utils.Dictionary;
   
   public class o12557
   {
       
      
      public var data:Dictionary;
      
      public function o12557()
      {
         super();
      }
      
      public function o13163(param1:int, param2:int = -1) : o7705
      {
         var _loc3_:o825 = data[param2] as o825;
         return _loc3_.o19126(param1);
      }
      
      public function o15765() : void
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc10_:* = false;
         var _loc9_:o7705 = new o7705();
         var _loc2_:Vector.<int> = o14200.o19505.o5292.o20827.o15285;
         var _loc1_:Dictionary = o14200.o19505.data.o14403;
         var _loc8_:Vector.<o8347> = o4519.o8116.o1184.o6795;
         this.data = new Dictionary();
         var _loc6_:* = new o825();
         data[-1] = _loc6_;
         _loc7_ = 1;
         while(_loc7_ <= 12)
         {
            data[_loc7_] = new o825();
            _loc7_++;
         }
         var _loc13_:int = 0;
         var _loc12_:* = _loc8_;
         for each(_loc3_ in _loc8_)
         {
            if(_loc3_.o5168 == false && _loc3_.o6947 == false && _loc3_.o11412 != 13)
            {
               if(_loc2_.indexOf(_loc3_.id) < 0)
               {
                  _loc11_ = _loc3_.o11570;
                  _loc4_ = data[_loc3_.o6365] as o825;
                  _loc6_.o19126(_loc11_).o14170++;
                  _loc4_.o19126(_loc11_).o14170++;
                  if(_loc11_ != 1)
                  {
                     if(_loc1_[_loc3_.id] != null)
                     {
                        _loc4_.o19126(_loc11_).o5411++;
                        _loc6_.o19126(_loc11_).o5411++;
                     }
                  }
                  else
                  {
                     _loc10_ = _loc1_[_loc3_.id] != null;
                     if(_loc10_ == false && _loc3_.o13099 != null)
                     {
                        _loc3_ = _loc3_.o13099;
                        _loc10_ = _loc1_[_loc3_.id] != null;
                        if(_loc10_ == false && _loc3_.o13099 != null)
                        {
                           _loc3_ = _loc3_.o13099;
                           _loc10_ = _loc1_[_loc3_.id] != null;
                        }
                     }
                     if(_loc10_)
                     {
                        _loc4_.o19126(_loc11_).o5411++;
                        _loc6_.o19126(_loc11_).o5411++;
                     }
                  }
               }
            }
         }
         _loc6_ = _loc6_;
      }
      
      public function o13344() : void
      {
         var _loc4_:* = null;
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc6_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = false;
         var _loc8_:o7705 = new o7705();
         var _loc2_:Dictionary = o14200.o19505.data.o1402;
         var _loc7_:Vector.<o14809> = o4519.o8116.o9511.o17794;
         this.data = new Dictionary();
         data[-1] = new o825();
         _loc6_ = 0;
         while(_loc6_ < 5)
         {
            data[_loc6_] = new o825();
            _loc6_++;
         }
         var _loc5_:o825 = data[-1] as o825;
         var _loc12_:int = 0;
         var _loc11_:* = _loc7_;
         for each(_loc1_ in _loc7_)
         {
            if(_loc1_.o11412 != 13)
            {
               _loc10_ = _loc1_.o18072;
               _loc3_ = data[_loc1_.o20559] as o825;
               _loc5_.o19126(_loc10_).o14170++;
               _loc3_.o19126(_loc10_).o14170++;
               if(_loc10_ != 1)
               {
                  if(_loc2_[_loc1_.id] != null)
                  {
                     _loc3_.o19126(_loc10_).o5411++;
                     _loc5_.o19126(_loc10_).o5411++;
                  }
               }
               else
               {
                  _loc9_ = _loc2_[_loc1_.id] != null;
                  if(_loc9_ == false && _loc1_.o671 != null)
                  {
                     _loc1_ = _loc1_.o671;
                     _loc9_ = _loc2_[_loc1_.id] != null;
                     if(_loc9_ == false && _loc1_.o671 != null)
                     {
                        _loc1_ = _loc1_.o671;
                        _loc9_ = _loc2_[_loc1_.id] != null;
                     }
                  }
                  if(_loc9_)
                  {
                     _loc3_.o19126(_loc10_).o5411++;
                     _loc5_.o19126(_loc10_).o5411++;
                  }
               }
            }
         }
      }
   }
}
