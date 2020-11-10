package
{
   public class o5695 extends o4896
   {
       
      
      public var o158:o12891;
      
      public function o5695(param1:o12891)
      {
         super();
         this.o158 = param1;
      }
      
      override public function o8110(param1:String) : void
      {
         o158.o9885(o4519.o32.o5973,param1);
         o4519.o13206.o2685.o8105(o4519.o32.o5973,param1);
      }
      
      override public function o13640() : void
      {
         o158 = null;
         super.o13640();
      }
      
      override public function set o6361(param1:Boolean) : void
      {
         if(o8478 && o6361 != param1)
         {
            if(param1)
            {
               o4519.o13206.o17442 = true;
            }
            else
            {
               o4519.o13206.o17442 = false;
            }
         }
         .super.o6361 = param1;
      }
      
      override public function o16489() : void
      {
         super.o16489();
         if(this.o6361 == false)
         {
            o4519.o13206.o17442 = false;
         }
      }
      
      override public function close() : void
      {
         super.close();
         o4519.o13206.o17442 = true;
      }
   }
}
