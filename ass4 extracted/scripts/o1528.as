package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o1528 extends o12290
   {
       
      
      private var o3634:int = 0;
      
      private var o12484:int = 1;
      
      private var o20101:Boolean;
      
      public function o1528()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      public function get o18407() : Boolean
      {
         return o20101;
      }
      
      public function set o18407(param1:Boolean) : void
      {
         o20101 = param1;
         this.o1258();
      }
      
      public function get o1830() : int
      {
         return o3634;
      }
      
      public function set o1830(param1:int) : void
      {
         o3634 = param1;
         this.o1258();
      }
      
      public function get o13439() : int
      {
         return o12484;
      }
      
      public function set o13439(param1:int) : void
      {
         o12484 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc3_:TextField = this.asset.getChildByName("lblQuantity") as TextField;
         if(_loc3_ != null)
         {
            _loc3_.text = o3634.toString();
         }
         var _loc2_:MovieClip = this.asset.getChildByName("icon") as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.gotoAndStop(o12484);
         }
         var _loc1_:MovieClip = this.asset.getChildByName("dropbox") as MovieClip;
         if(_loc1_ != null)
         {
            _loc1_.visible = o20101;
         }
      }
      
      override public function o13640() : void
      {
         o3634 = 0;
         o12484 = 0;
         o20101 = false;
         super.o13640();
      }
   }
}
