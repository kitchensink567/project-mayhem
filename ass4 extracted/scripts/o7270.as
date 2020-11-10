package
{
   import flash.text.TextField;
   
   public class o7270 extends o8535
   {
       
      
      private var o19478:int;
      
      public function o7270()
      {
         super();
      }
      
      public function o7658(param1:int) : void
      {
         o19478 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc1_:TextField = this.asset.getChildByName("lblCost") as TextField;
         if(_loc1_ != null)
         {
            o1256(_loc1_,o19478.toString());
         }
      }
      
      override public function o13640() : void
      {
         o19478 = 0;
         super.o13640();
      }
   }
}
