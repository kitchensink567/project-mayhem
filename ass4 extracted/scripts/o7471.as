package
{
   public class o7471 extends o4896
   {
       
      
      public var o16895:o7788;
      
      public function o7471(param1:o7788)
      {
         super();
         this.o16895 = param1;
         this.o1944 = 0;
      }
      
      override public function o8110(param1:String) : void
      {
         var _loc2_:int = 0;
         if(o4519.o13206.o2685 != null)
         {
            _loc2_ = o4519.o13206.o2685.id;
            o16895.o9885(_loc2_,param1);
            o4519.o13206.o2685.o8105(_loc2_,param1);
         }
      }
      
      override public function o13640() : void
      {
         o16895 = null;
         super.o13640();
      }
   }
}
