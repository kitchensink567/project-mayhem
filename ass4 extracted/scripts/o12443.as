package
{
   public class o12443
   {
       
      
      public var o9899:int;
      
      public var o4084:Boolean;
      
      public var o16277:Boolean;
      
      public var o7743:int = 0;
      
      public function o12443(param1:o18442)
      {
         super();
         if(param1 != null)
         {
            this.o7743 = param1.o20133;
            this.o9899 = param1.type;
            this.o4084 = param1.grade > 0;
            this.o16277 = param1.o19831.length > 0;
         }
      }
      
      public function get o5766() : Boolean
      {
         if(o9899 == 11 && o4084 && o16277)
         {
            return true;
         }
         if(o9899 == 14 && o4084 && o16277)
         {
            return true;
         }
         return false;
      }
   }
}
