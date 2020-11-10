package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o12153 extends o12671
   {
       
      
      private var o16553:String;
      
      private var o8506:String;
      
      private var o8857:String;
      
      public function o12153()
      {
         o16553 = "";
         o8506 = "";
         o8857 = "";
         super();
      }
      
      override public function set o12514(param1:Boolean) : void
      {
         .super.o12514 = param1;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      public function o7658(param1:String, param2:int, param3:int, param4:int) : void
      {
         o16553 = param1;
         if(param2 < 0)
         {
            o8506 = "Unlimited";
         }
         else
         {
            o8506 = o16724.o10417(param2);
         }
         o8857 = "$" + o16724.o10417(param3) + " for " + o16724.o10417(param4);
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc3_:TextField = this.asset.getChildByName("lblCaption") as TextField;
         if(_loc3_ != null)
         {
            _loc3_.text = o16553;
         }
         var _loc1_:TextField = this.asset.getChildByName("lblCount") as TextField;
         if(_loc1_ != null)
         {
            _loc1_.text = o8506;
         }
         var _loc2_:TextField = this.asset.getChildByName("lblPrice") as TextField;
         if(_loc2_ != null)
         {
            _loc2_.text = o8857;
         }
      }
      
      override public function o13640() : void
      {
         o16553 = null;
         o8506 = null;
         o8857 = null;
         super.o13640();
      }
   }
}
