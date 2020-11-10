package
{
   public class o17761
   {
       
      
      public var o2535:o20139 = null;
      
      public var id:uint = 0;
      
      public function o17761(param1:o20139 = null)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         this.o2535 = param1;
         id = param1.o10716();
      }
      
      public function initialise(param1:o20139) : void
      {
         this.o2535 = param1;
         id = param1.o10716();
      }
      
      public function o10827(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o2535.o16847(id,param1,param2,param3,param4);
      }
      
      public function o943(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o2535.o8511(id,param1,param2,param3,param4);
      }
      
      public function o16716(param1:Number) : void
      {
         o2535.o7044(id,param1);
      }
      
      public function o14486(param1:Vector.<o18509>) : void
      {
         o2535.o9730(id,param1);
      }
   }
}
