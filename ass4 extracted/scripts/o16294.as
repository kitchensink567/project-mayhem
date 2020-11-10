package
{
   import flash.utils.ByteArray;
   
   public class o16294
   {
      
      private static var o9721:Array = null;
      
      private static var c20973:Class = §stringMap_enc_bin$44cf828a23c4ba59a1c66e4b38f39ed7-1178961835§;
       
      
      public function o16294()
      {
         super();
      }
      
      public static function o8087(param1:int) : String
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = null;
         if(o9721 == null)
         {
            _loc2_ = new c20973() as ByteArray;
            _loc3_ = "";
            _loc5_ = 0;
            while(_loc5_ < _loc2_.length)
            {
               _loc3_ = _loc3_ + String.fromCharCode((_loc2_.readByte() + _loc5_) % 256);
               _loc5_++;
            }
            _loc4_ = "";
            var _loc8_:int = 0;
            var _loc7_:* = [35,95,83,84,82,95,35];
            for each(var _loc6_ in [35,95,83,84,82,95,35])
            {
               _loc4_ = _loc4_ + String.fromCharCode(_loc6_);
            }
            o9721 = _loc3_.split(_loc4_);
         }
         return o9721[param1];
      }
   }
}
