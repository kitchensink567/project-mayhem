package
{
   public class o10108
   {
       
      
      public var o12395:o5173 = null;
      
      public var o17768:o5173 = null;
      
      public function o10108()
      {
         super();
      }
      
      public function initialise(param1:o5173, param2:o5173) : void
      {
         this.o12395 = param1;
         this.o17768 = param2;
      }
      
      public function o19691(param1:o5173, param2:o5173) : Boolean
      {
         if(this.o12395 == param1 && this.o17768 == param2 || this.o12395 == param2 && this.o17768 == param1)
         {
            return true;
         }
         return false;
      }
   }
}
