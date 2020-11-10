package
{
   public class o10760 extends o1227
   {
       
      
      private var data:o14200;
      
      public var o16028:Boolean = true;
      
      public function o10760(param1:o14200, param2:Boolean)
      {
         super();
         this.data = param1;
         this.o16028 = param2;
      }
      
      override protected function o11048() : void
      {
         this.o16284(data.o1317.o19130);
         this.o11057(data.o1317.o3288);
         o17228(data.o1317.o6458);
         o17614(data.o1317.o9690);
      }
      
      override protected function o521() : void
      {
         data.saveData();
      }
      
      override protected function o16284(param1:Boolean) : void
      {
         super.o16284(param1);
         data.o1317.o19130 = param1;
      }
      
      override protected function o11057(param1:Boolean) : void
      {
         super.o11057(param1);
         data.o1317.o3288 = param1;
      }
      
      override protected function o17228(param1:Boolean) : void
      {
         super.o17228(param1);
         data.o1317.o6458 = param1;
      }
      
      override protected function o17614(param1:Boolean) : void
      {
         super.o17614(param1);
         data.o1317.o9690 = param1;
      }
      
      override public function o13640() : void
      {
         data = null;
         super.o13640();
      }
   }
}
