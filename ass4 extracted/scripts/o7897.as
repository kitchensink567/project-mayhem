package
{
   public class o7897
   {
       
      
      public var o12853:String = null;
      
      public var o5252:String = null;
      
      public var o17615:String = null;
      
      public function o7897()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc2_:* = null;
         var _loc8_:int = 0;
         o17615 = "";
         var _loc13_:int = 0;
         var _loc12_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc9_ = _loc3_[o9115.date];
            _loc5_ = _loc3_[o9115.o17977];
            _loc4_ = _loc3_[o9115.o8398];
            if(_loc8_ == 0)
            {
               o12853 = _loc9_;
               o5252 = _loc5_;
            }
            _loc6_ = _loc4_.split("[NL]");
            _loc4_ = "";
            _loc2_ = String.fromCharCode(149);
            _loc2_ = "*";
            var _loc11_:int = 0;
            var _loc10_:* = _loc6_;
            for each(var _loc7_ in _loc6_)
            {
               if(_loc7_.length == 0)
               {
                  _loc4_ = _loc4_ + ("   " + _loc7_ + "\n");
               }
               else
               {
                  _loc4_ = _loc4_ + ("   " + _loc2_ + " " + _loc7_ + "\n");
               }
            }
            o17615 = o17615 + ("<FONT COLOR=\'#FFFFFF\'>" + _loc9_ + "</FONT>" + "\n" + "<FONT SIZE=\'11\'>" + _loc4_ + "</FONT>\n\n");
            _loc8_++;
         }
      }
   }
}
