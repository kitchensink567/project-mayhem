package
{
   public class o18639
   {
       
      
      private var o3929:int = -1;
      
      private var call:Function = null;
      
      private var promise:o16124 = null;
      
      public function o18639()
      {
         super();
      }
      
      public function initialise(param1:Function, param2:* = null) : void
      {
         this.call = param1;
         o14085(null,param2);
      }
      
      private function o14085(param1:* = null, param2:* = null) : void
      {
         o3929 = Number(o3929) + 1;
         if(param2 == null)
         {
            promise = call(o3929,param1);
         }
         else
         {
            promise = call(o3929,param1,param2);
         }
         if(promise != null)
         {
            promise.defer(o14085);
         }
         else
         {
            call = null;
         }
      }
   }
}
