package
{
   import flash.display.DisplayObjectContainer;
   
   public class o14355
   {
      
      private static var o16448:Class = WorldWorker_swf$7d3a5c06abf1833f0a0db37228cbc3222127680311;
       
      
      public function o14355()
      {
         super();
      }
      
      public static function o11715(param1:Function, param2:DisplayObjectContainer = null) : o20139
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:* = null;
         if(Main.o15767)
         {
            _loc4_ = new o13407(new o16448());
            _loc5_ = new o1974(_loc4_.o5964,_loc4_.o17787);
            _loc5_.o16316 = param1;
            return _loc5_;
         }
         _loc3_ = new o5165();
         if(param2 != null)
         {
            param2.addChild(_loc3_);
         }
         return _loc3_;
      }
   }
}
