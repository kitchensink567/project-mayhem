package
{
   import flash.utils.Dictionary;
   
   public class o12552
   {
       
      
      public function o12552()
      {
         super();
      }
      
      public static function o13366(param1:Dictionary) : Object
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc2_:Array = [];
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for(_loc5_ in param1)
         {
            _loc4_ = {};
            _loc4_[3] = _loc5_;
            _loc3_ = param1[_loc5_];
            if(isNaN(param1[_loc5_]))
            {
               throw new Error("NaN");
            }
            _loc4_[4] = _loc3_;
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public static function o18306(param1:Array, param2:Dictionary) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_[3];
            _loc3_ = _loc5_[4];
            param2[_loc4_] = _loc3_;
         }
      }
      
      public static function o13173(param1:Dictionary) : Object
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:Array = [];
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for(_loc4_ in param1)
         {
            _loc3_ = {};
            _loc3_[3] = _loc4_;
            _loc3_[4] = (param1[_loc4_] as o16123).value;
            _loc2_.push(_loc3_);
         }
         return _loc2_;
      }
      
      public static function o20392(param1:Array, param2:Dictionary) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(_loc5_ in param1)
         {
            _loc4_ = _loc5_[3];
            _loc3_ = _loc5_[4];
            param2[_loc4_] = new o16123(_loc3_);
         }
      }
   }
}
