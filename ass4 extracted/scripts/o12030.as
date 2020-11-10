package
{
   public class o12030
   {
       
      
      public var id:int;
      
      public var o4616:Vector.<int>;
      
      public var o6615:String;
      
      public var o1718:int = -1;
      
      public function o12030()
      {
         o4616 = new Vector.<int>();
         super();
      }
      
      public function o20374() : int
      {
         var _loc2_:* = 2147483647;
         var _loc4_:int = 0;
         var _loc3_:* = o4616;
         for each(var _loc1_ in o4616)
         {
            if(_loc1_ < _loc2_)
            {
               _loc2_ = _loc1_;
            }
         }
         return _loc2_;
      }
   }
}
