package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o3986 extends o8023
   {
       
      
      public var o17656:Dictionary;
      
      private var o19969:Boolean = false;
      
      public function o3986()
      {
         o17656 = new Dictionary();
         super();
      }
      
      private function o12254() : void
      {
         throw new Error("call preloadAugments");
      }
      
      public function o4530(param1:int) : o16124
      {
         id = param1;
         var promise:o16124 = new o16124();
         if(o19969)
         {
            promise.data = o17656[id];
            return promise;
         }
         throw new Error("call preloadAugments");
      }
      
      public function o11969(param1:int, param2:int) : o16124
      {
         var _loc3_:* = null;
         var _loc4_:o16124 = new o16124();
         var _loc5_:Boolean = false;
         var _loc8_:int = 0;
         var _loc7_:* = o17656;
         for(var _loc6_ in o17656)
         {
            _loc3_ = o17656[_loc6_];
            if(_loc3_.type == param1 && _loc3_.grade == param2)
            {
               _loc4_.data = _loc3_.id;
               _loc5_ = true;
               break;
            }
         }
         if(_loc5_ == false)
         {
            _loc4_.data = -1;
         }
         return _loc4_;
      }
      
      public function o17623() : o16124
      {
         var promise:o16124 = new o16124();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(15);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            param1.position = 0;
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o2347();
               _loc2_.load(param1);
               o17656[_loc2_.id] = _loc2_;
            }
            o19969 = true;
            promise.data = o17656;
         });
         return promise;
      }
   }
}
