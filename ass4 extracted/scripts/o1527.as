package
{
   public class o1527
   {
      
      public static const o5164:int = -1;
      
      public static const o12302:int = 0;
       
      
      public function o1527()
      {
         super();
      }
      
      public static function o15317(param1:int, param2:*) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc4_:o14128 = null;
         if(o4519.o8116.o476.o16679 == null)
         {
            return _loc5_;
         }
         var _loc7_:int = 0;
         var _loc6_:* = o14200.o19505.o5292.o16679.o12738;
         for each(var _loc3_ in o14200.o19505.o5292.o16679.o12738)
         {
            _loc4_ = _loc3_.o11392 as o14128;
            if(_loc4_)
            {
               if(_loc4_.o12187(param1,param2))
               {
                  _loc5_ = true;
               }
            }
         }
         return _loc5_;
      }
   }
}
