package
{
   public class o12308
   {
       
      
      public var o7446:Vector.<o12030>;
      
      public function o12308()
      {
         o7446 = new Vector.<o12030>();
         super();
      }
      
      public function o5066(param1:int, param2:String, param3:Vector.<int>) : void
      {
         var _loc4_:o12030 = new o12030();
         _loc4_.id = param1;
         _loc4_.o6615 = param2;
         _loc4_.o4616 = param3;
         this.o7446.push(_loc4_);
      }
      
      public function o16712(param1:int) : o12030
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o7446;
         for each(var _loc2_ in this.o7446)
         {
            if(_loc2_.o1718 >= 0)
            {
               if(_loc2_.o1718 == param1)
               {
                  return _loc2_;
               }
               if(_loc2_.o1718 >= 65 && _loc2_.o1718 <= 90)
               {
                  if(_loc2_.o1718 + 32 == param1)
                  {
                     return _loc2_;
                  }
               }
            }
            else if(_loc2_.o4616.indexOf(param1) >= 0)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o2483(param1:int) : o12030
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o7446;
         for each(var _loc2_ in this.o7446)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
