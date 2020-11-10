package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o7944 extends o8023
   {
       
      
      public var o4256:Dictionary;
      
      public var o17794:Vector.<o14809>;
      
      private var o6045:Boolean = false;
      
      public function o7944()
      {
         o4256 = new Dictionary();
         super();
      }
      
      private function o4649() : void
      {
         throw new Error("call preloadEquipment");
      }
      
      public function o12203(param1:int) : o16124
      {
         id = param1;
         var promise:o16124 = new o16124();
         if(o6045)
         {
            promise.data = o4256[id];
            return promise;
         }
         throw new Error("call preloadEquipment");
      }
      
      public function o3955() : o16124
      {
         var promise:o16124 = new o16124();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(13);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            o17794 = new Vector.<o14809>();
            param1.position = 0;
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o14809();
               _loc2_.load(param1);
               o4256[_loc2_.id] = _loc2_;
               o17794.push(_loc2_);
            }
            o6045 = true;
            promise.data = o4256;
         });
         return promise;
      }
      
      public function o7612() : void
      {
         var _loc5_:* = null;
         var _loc1_:* = null;
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:Dictionary = new Dictionary();
         var _loc9_:Dictionary = new Dictionary();
         var _loc6_:o17849 = o4519.o8116.o16619;
         var _loc11_:int = 0;
         var _loc10_:* = o4256;
         for each(_loc5_ in o4256)
         {
            if(_loc5_.o18072 == 1)
            {
               _loc2_[_loc6_.o9009(_loc5_.name)] = _loc5_;
            }
            else if(_loc5_.o18072 == 2)
            {
               _loc3_[_loc6_.o9009(_loc5_.name)] = _loc5_;
            }
            else if(_loc5_.o18072 == 3)
            {
               _loc9_[_loc6_.o9009(_loc5_.name)] = _loc5_;
            }
         }
         var _loc13_:int = 0;
         var _loc12_:* = _loc3_;
         for(var _loc7_ in _loc3_)
         {
            _loc1_ = _loc2_[_loc7_];
            _loc4_ = _loc3_[_loc7_];
            _loc8_ = _loc9_[_loc7_];
            if(_loc1_ != null)
            {
               _loc1_.o671 = _loc4_;
               _loc4_.o5551 = _loc1_;
            }
            if(_loc8_ != null)
            {
               _loc8_.o5551 = _loc4_;
               _loc4_.o671 = _loc8_;
            }
         }
      }
   }
}
