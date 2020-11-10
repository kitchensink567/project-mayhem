package
{
   public class o161
   {
       
      
      public var o15943:int = 0;
      
      public var o18205:Boolean = false;
      
      private var position:o18509 = null;
      
      public function o161(param1:*, param2:o18509)
      {
         super();
         this.o15943 = param1;
         this.position = param2;
      }
      
      public function reset() : void
      {
         o18205 = false;
      }
      
      public function o5750() : o18509
      {
         return this.position;
      }
      
      public function o19115() : void
      {
         position = null;
      }
   }
}
