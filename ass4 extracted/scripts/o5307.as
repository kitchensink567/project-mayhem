package
{
   import flash.utils.Dictionary;
   
   public class o5307
   {
       
      
      public var o12151:Vector.<o5246>;
      
      public var o4255:Vector.<int>;
      
      public var o3504:Dictionary;
      
      public function o5307()
      {
         super();
      }
      
      public function o13079(param1:int) : o5096
      {
         return o3504[param1];
      }
      
      private function o16747(param1:Array) : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:Vector.<int> = new Vector.<int>();
         var _loc8_:int = 0;
         var _loc7_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc2_ = _loc3_["id"];
            _loc5_ = _loc3_["weight"];
            _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               _loc6_.push(_loc2_);
               _loc4_++;
            }
         }
         return _loc6_;
      }
      
      private function o10355(param1:Array) : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<int> = new Vector.<int>();
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc2_ = _loc3_["id"];
            _loc4_ = _loc3_["weight"];
            if(_loc4_ > 0)
            {
               _loc5_.push(_loc2_);
            }
         }
         return _loc5_;
      }
      
      public function o18048(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc8_:int = 0;
         var _loc2_:* = null;
         var _loc4_:Array = param1["activeContracts"];
         o3504 = new Dictionary();
         o12151 = new Vector.<o5246>();
         var _loc7_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = _loc4_;
         for each(var _loc5_ in _loc4_)
         {
            _loc3_ = new o5246();
            _loc3_.o4312 = _loc5_["duration"];
            _loc3_.o56 = _loc5_["interval"];
            _loc3_.enabled = _loc5_["enabled"];
            _loc3_.o4312 = _loc3_.o4312 * 60;
            _loc3_.o56 = _loc3_.o56 * 60;
            if(_loc3_.o56 < _loc3_.o4312)
            {
               throw new Error("Interval must be greater than duration");
            }
            this.o12151.push(_loc3_);
            _loc7_++;
         }
         o4255 = o16747(param1["contractWeights"]);
         var _loc12_:int = 0;
         var _loc11_:* = param1["contractWeights"];
         for each(var _loc6_ in param1["contractWeights"])
         {
            _loc8_ = _loc6_["id"];
            _loc2_ = new o5096();
            _loc2_.o2122 = o10355(_loc6_["mapWeights"]);
            _loc2_.o12494 = _loc8_;
            _loc2_.o7294 = o16747(_loc6_["manufactureWeights"]);
            _loc2_.o16271 = o16747(_loc6_["mapWeights"]);
            o3504[_loc8_] = _loc2_;
         }
      }
   }
}
