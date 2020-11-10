package
{
   public class o6042
   {
       
      
      public var call:Function;
      
      public var o20630:Array;
      
      public var o13301:Boolean;
      
      public function o6042(param1:Array, param2:Function, param3:Boolean = false)
      {
         super();
         this.o20630 = param1;
         this.call = param2;
         this.o13301 = param3;
      }
      
      public function o5111() : void
      {
         var _loc1_:* = null;
         var _loc2_:Array = Mem.create(this,Array) as Array;
         var _loc4_:int = 0;
         var _loc3_:* = o20630;
         for each(_loc1_ in o20630)
         {
            _loc2_.push(_loc1_.data);
         }
         call.apply(null,_loc2_);
         if(o13301)
         {
            var _loc6_:int = 0;
            var _loc5_:* = o20630;
            for each(_loc1_ in o20630)
            {
               _loc1_.o19115();
            }
         }
         call = null;
         o20630 = null;
      }
   }
}
