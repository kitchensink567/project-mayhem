package
{
   import flash.utils.ByteArray;
   
   public class o6883 extends o8023
   {
       
      
      public var o19457:Vector.<o3667>;
      
      private var o15688:Boolean = false;
      
      public function o6883()
      {
         o19457 = new Vector.<o3667>();
         super();
      }
      
      public function o11118(param1:int) : o3667
      {
         var _loc4_:int = 0;
         var _loc3_:* = o19457;
         for each(var _loc2_ in o19457)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o8166() : o16124
      {
         var promise:o16124 = new o16124();
         var o5174:o16124 = null;
         o5174 = o4519.o8116.o970.o17485(16);
         o5174.defer(function(param1:ByteArray):void
         {
            var _loc2_:* = null;
            var _loc3_:int = 0;
            try
            {
               param1.position = 0;
               while(param1.bytesAvailable > 0)
               {
                  _loc2_ = new o3667();
                  _loc2_.load(param1);
                  o19457.push(_loc2_);
                  _loc3_++;
               }
               o15688 = true;
               promise.data = o19457;
               return;
            }
            catch(o19631:Error)
            {
               o19457 = new Vector.<o3667>();
               throw new Error("MapSummaryManager maps.bin format updated. Need to resave all maps. Map index: " + _loc3_.toString());
            }
         });
         return promise;
      }
   }
}
