package
{
   import flash.utils.ByteArray;
   
   public class o1817
   {
       
      
      public function o1817()
      {
         super();
      }
      
      public static function o18607(param1:Object) : String
      {
         var _loc2_:String = JSON.stringify(param1);
         return o13526(_loc2_);
      }
      
      private static function o13526(param1:String) : String
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param1);
         _loc3_.compress();
         _loc3_.position = 0;
         var _loc2_:String = o13335.o17389(_loc3_);
         return _loc2_;
      }
      
      public static function o5114(param1:String) : *
      {
         var _loc4_:* = null;
         var _loc3_:Object = null;
         try
         {
            _loc4_ = o13335.o19437(param1);
            _loc4_.uncompress();
            _loc4_.position = 0;
         }
         catch(o7367:Error)
         {
            o8339("Squeeze::decodeCompressedJSON() Failed to decompress the Base64 input string",o7367.o1216);
            throw new Error("Squeeze::decodeCompressedJSON() Failed to decompress the Base64 input string " + o7367.o1216);
         }
         var _loc2_:String = String(_loc4_.readUTFBytes(_loc4_.length));
         try
         {
            _loc3_ = JSON.parse(_loc2_);
         }
         catch(o7367:Error)
         {
            o8339("Squeeze::decodeCompressedJSON() failed to decode json",o7367.o1216);
            throw new Error("Squeeze::decodeCompressedJSON() failed to decode json " + o7367.o1216);
         }
         return _loc3_;
      }
   }
}
