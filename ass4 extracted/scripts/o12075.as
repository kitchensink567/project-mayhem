package
{
   public class o12075
   {
       
      
      public function o12075()
      {
         super();
      }
      
      public static function o7521(param1:Vector.<o18509>) : Vector.<Vector.<o18509>>
      {
         var _loc2_:* = null;
         var _loc4_:Vector.<Vector.<o18509>> = Mem.create(o12075,Vector.<Vector.<o18509>>) as Vector.<Vector.<o18509>>;
         var _loc7_:o7406 = new o7406(param1);
         var _loc5_:Array = o20938.o5908(_loc7_);
         if(_loc5_ == null)
         {
            _loc7_ = new o7406(param1.concat().reverse());
            _loc5_ = o20938.o5908(_loc7_);
         }
         var _loc3_:Vector.<Vector.<o18509>> = new Vector.<Vector.<o18509>>();
         if(_loc5_.length > 0)
         {
            _loc2_ = o20938.o13361(_loc5_);
            var _loc9_:int = 0;
            var _loc8_:* = _loc2_;
            for each(var _loc6_ in _loc2_)
            {
               _loc4_.push(_loc6_.o2625);
            }
         }
         return _loc4_;
      }
   }
}
