package
{
   import flash.display.MovieClip;
   
   public class o6006 extends o1931
   {
       
      
      private var o19419:o14200;
      
      public function o6006(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o170() : o15408
      {
         var _loc1_:o15408 = new o7393(o19419,o16028);
         return _loc1_;
      }
      
      override public function o16384(param1:MovieClip, param2:o13064, param3:int, param4:Boolean, param5:Boolean) : void
      {
         super.o16384(param1,param2,param3,param4,param5);
         if(param4 == false)
         {
            if(param5)
            {
               o2523();
            }
            else
            {
               o1981(true);
            }
         }
      }
      
      override public function o13640() : void
      {
         o19419 = null;
         super.o13640();
      }
   }
}
