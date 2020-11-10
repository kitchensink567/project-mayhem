package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o20508 extends o12290
   {
       
      
      private var o19478:int;
      
      public var o8398:String;
      
      public var o6491:String = null;
      
      public var o18619:String;
      
      public function o20508()
      {
         o18619 = "not set";
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      public function get o9421() : int
      {
         return o19478;
      }
      
      public function set o9421(param1:int) : void
      {
         o19478 = param1;
         this.o1258();
      }
      
      public function get o7219() : String
      {
         return o6491;
      }
      
      public function set o7219(param1:String) : void
      {
         o6491 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc2_:TextField = this.asset.getChildByName("lblCost") as TextField;
         if(_loc2_ != null)
         {
            _loc2_.text = "$" + o16724.o10417(o19478);
         }
         var _loc1_:MovieClip = this.asset.getChildByName("icon") as MovieClip;
         if(_loc1_ != null && o6491 != null)
         {
            o19614(_loc1_,o6491);
         }
      }
      
      override public function o13640() : void
      {
         o19478 = 0;
         o8398 = null;
         o6491 = null;
         super.o13640();
      }
   }
}
