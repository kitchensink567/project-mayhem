package
{
   import flash.utils.Dictionary;
   
   public class o15808
   {
       
      
      public function o15808(param1:o13848)
      {
         super();
      }
      
      public function o4706(param1:o2041, param2:o2041) : Vector.<o2041>
      {
         var _loc12_:* = undefined;
         var _loc15_:* = null;
         var _loc6_:* = undefined;
         var _loc5_:* = undefined;
         var _loc14_:Number = NaN;
         var _loc10_:Boolean = false;
         if(param1 == param2)
         {
            _loc12_ = Mem.create(this,Vector.<o2041>) as Vector.<o2041>;
            _loc12_.push(param1);
            return _loc12_;
         }
         var _loc7_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc3_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc11_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc9_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc4_:Vector.<o2041> = Mem.create(this,Vector.<o2041>) as Vector.<o2041>;
         var _loc8_:Vector.<o2041> = Mem.create(this,Vector.<o2041>) as Vector.<o2041>;
         _loc8_.push(param1);
         _loc7_[param1] = 0;
         _loc3_[param1] = o5770(param1,param2);
         _loc11_[param1] = _loc3_[param1];
         while(_loc8_.length > 0)
         {
            _loc15_ = o13592(_loc11_,_loc8_);
            if(_loc15_ == param2)
            {
               _loc6_ = o16342(_loc9_,param2);
               return _loc6_;
            }
            _loc8_.splice(_loc8_.indexOf(_loc15_),1);
            _loc4_.push(_loc15_);
            _loc5_ = _loc15_.o16079;
            var _loc17_:int = 0;
            var _loc16_:* = _loc5_;
            for each(var _loc13_ in _loc5_)
            {
               if(_loc4_.indexOf(_loc13_) == -1)
               {
                  _loc14_ = _loc7_[_loc15_] + 1;
                  _loc10_ = true;
                  if(_loc8_.indexOf(_loc13_) == -1)
                  {
                     _loc8_.push(_loc13_);
                     _loc10_ = true;
                  }
                  else if(_loc10_ < _loc7_[_loc13_])
                  {
                     _loc10_ = true;
                  }
                  else
                  {
                     _loc10_ = false;
                  }
                  if(_loc10_)
                  {
                     _loc9_[_loc13_] = _loc15_;
                     _loc7_[_loc13_] = _loc14_;
                     _loc3_[_loc13_] = o5770(_loc13_,param2);
                     _loc11_[_loc13_] = _loc7_[_loc13_] + _loc3_[_loc13_];
                  }
               }
            }
         }
         return null;
      }
      
      public function o16342(param1:Dictionary, param2:o2041) : Vector.<o2041>
      {
         var _loc3_:* = undefined;
         if(param1[param2] != null)
         {
            _loc3_ = o16342(param1,param1[param2]);
            _loc3_.push(param2);
            return _loc3_;
         }
         _loc3_ = Mem.create(this,Vector.<o2041>) as Vector.<o2041>;
         _loc3_.push(param2);
         return _loc3_;
      }
      
      public function o13592(param1:Dictionary, param2:Vector.<o2041>) : o2041
      {
         var _loc3_:* = param2[0];
         var _loc6_:int = 0;
         var _loc5_:* = param2;
         for each(var _loc4_ in param2)
         {
            if(param1[_loc4_] < param1[_loc3_])
            {
               _loc3_ = _loc4_;
            }
         }
         return _loc3_;
      }
      
      public function o5770(param1:o2041, param2:o2041) : Number
      {
         return Math.pow(param2.x - param1.x,2) + Math.pow(param2.y - param1.y,2);
      }
   }
}
