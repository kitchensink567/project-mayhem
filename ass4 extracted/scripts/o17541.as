package
{
   import flash.utils.Dictionary;
   
   public class o17541
   {
      
      private static var o10696:Dictionary = new Dictionary();
       
      
      public function o17541()
      {
         super();
      }
      
      public static function o13617(param1:*, param2:int = 1) : o14748
      {
         var _loc3_:* = null;
         var _loc4_:Dictionary = o10696[param1];
         if(_loc4_ == null)
         {
            _loc4_ = new Dictionary();
            _loc3_ = new o14748(param1,param2);
            _loc3_.frame = param2;
            _loc4_[param2] = _loc3_;
            o10696[param1] = _loc4_;
            return _loc3_;
         }
         _loc3_ = _loc4_[param2];
         if(_loc3_ == null)
         {
            _loc3_ = new o14748(param1,param2);
            _loc3_.frame = param2;
            _loc4_[param2] = _loc3_;
            o10696[param1] = _loc4_;
         }
         return _loc3_;
      }
      
      public static function clear() : void
      {
         var _loc6_:int = 0;
         var _loc5_:* = o10696;
         for each(var _loc2_ in o10696)
         {
            var _loc4_:int = 0;
            var _loc3_:* = _loc2_;
            for each(var _loc1_ in _loc2_)
            {
               _loc1_.o19115();
            }
            _loc2_ = null;
         }
         o10696 = new Dictionary();
      }
   }
}
