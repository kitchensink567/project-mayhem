package
{
   public class o15714
   {
       
      
      public function o15714()
      {
         super();
      }
      
      public static function o16380(param1:Function, param2:* = null) : void
      {
         var _loc3_:o18639 = Mem.create(o15714,o18639) as o18639;
         _loc3_.initialise(param1,param2);
      }
      
      public static function o15950(... rest) : void
      {
         var _loc3_:o18688 = Mem.create(o15714,o18688) as o18688;
         var _loc5_:int = 0;
         var _loc4_:* = rest;
         for each(var _loc2_ in rest)
         {
            _loc3_.o12369(_loc2_);
         }
      }
      
      public static function o690(param1:Array, param2:*) : void
      {
         var _loc4_:o18688 = Mem.create(o15714,o18688) as o18688;
         _loc4_.o183 = param2;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc4_.o12369(_loc3_);
         }
      }
      
      public static function o18684(param1:Array, param2:Function, param3:Boolean = false) : void
      {
         if(param1 == null || param1.length == 0)
         {
            param2(null);
            param2 = null;
            return;
         }
         var _loc4_:o5368 = Mem.create(o15714,o5368) as o5368;
         _loc4_.initialise(Vector.<o16124>(param1));
         var _loc5_:o6042 = new o6042(param1,param2,param3);
         _loc4_.defer(_loc5_.o5111);
      }
   }
}
