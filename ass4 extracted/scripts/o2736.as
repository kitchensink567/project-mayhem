package
{
   public class o2736
   {
       
      
      private var o17170:o16123;
      
      public var o3330:String;
      
      private var o2490:o16123;
      
      public var o19855:Vector.<o69>;
      
      public var o5820:Boolean = false;
      
      public function o2736()
      {
         o17170 = new o16123(0);
         o2490 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function get o10387() : int
      {
         return o2490.value;
      }
      
      public function set id(param1:int) : void
      {
         o17170.value = param1;
      }
      
      public function set o10387(param1:int) : void
      {
         o2490.value = param1;
      }
      
      public function o17565(param1:int) : o69
      {
         var _loc4_:int = 0;
         var _loc3_:* = o19855;
         for each(var _loc2_ in o19855)
         {
            if(_loc2_.o18800 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o12404(param1:o69) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o19855;
         for each(var _loc2_ in o19855)
         {
            if(_loc2_ == param1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
   }
}
