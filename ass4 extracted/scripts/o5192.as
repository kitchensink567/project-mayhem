package
{
   public class o5192
   {
       
      
      public var position:int = 0;
      
      public var o14170:int = 0;
      
      public var o9664:Number = 0;
      
      public function o5192(param1:Object, param2:int)
      {
         super();
         if(param1 == null)
         {
            this.position = -1;
         }
         else
         {
            this.position = param1 as int;
         }
         this.o14170 = param2;
         if(param2 <= 1)
         {
            o9664 = 0;
         }
         else
         {
            o9664 = position / (param2 - 1);
         }
      }
   }
}
