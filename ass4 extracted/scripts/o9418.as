package
{
   import flash.utils.ByteArray;
   
   public class o9418
   {
       
      
      public var id:int;
      
      public var o19375:Vector.<int>;
      
      public function o9418()
      {
         super();
      }
      
      public function load(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         o19375 = new Vector.<int>();
         id = param1.readShort();
         var _loc3_:int = param1.readShort();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            o19375.push(param1.readInt());
            _loc2_++;
         }
      }
   }
}
