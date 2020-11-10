package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o12290 extends o15625
   {
       
      
      protected var o11137:String;
      
      public var o7023:int;
      
      public function o12290()
      {
         o11137 = "";
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
      
      public function get o13586() : String
      {
         return o11137;
      }
      
      public function set o13586(param1:String) : void
      {
         o11137 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         var _loc1_:* = null;
         super.draw();
         if(asset)
         {
            _loc1_ = this.asset.getChildByName("label") as TextField;
            if(_loc1_ != null)
            {
               o1256(_loc1_,o13586);
            }
         }
      }
      
      override public function o13640() : void
      {
         o11137 = null;
         o7023 = 0;
         super.o13640();
      }
   }
}
