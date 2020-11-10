package
{
   import flash.display.MovieClip;
   
   public class o17116 extends o6539
   {
       
      
      private var o16989:o13064;
      
      public function o17116()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
      }
      
      override public function o13640() : void
      {
         o16989 = null;
         super.o13640();
      }
   }
}
