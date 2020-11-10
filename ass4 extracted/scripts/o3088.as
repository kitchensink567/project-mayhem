package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o3088 extends o8023
   {
       
      
      public var o16419:Dictionary;
      
      private var o19690:Boolean = false;
      
      public function o3088()
      {
         o16419 = new Dictionary();
         super();
      }
      
      public function o6091() : o16124
      {
         var promise:o16124 = new o16124();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(14);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            o16419 = new Dictionary();
            param1.position = 0;
            while(param1.bytesAvailable > 0)
            {
               _loc2_ = new o1587();
               _loc2_.load(param1);
               o16419[_loc2_.id] = _loc2_;
            }
            o19690 = true;
            promise.data = o16419;
         });
         return promise;
      }
      
      public function o4248(param1:int) : o1587
      {
         return o16419[param1] as o1587;
      }
   }
}
