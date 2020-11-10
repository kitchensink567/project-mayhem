package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class o8535 extends o12290
   {
       
      
      private var o9365:DisplayObject;
      
      private var o11611:int = -1;
      
      private var o15265:int;
      
      protected var o19415:o5024;
      
      public function o8535()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      public function get o3700() : DisplayObject
      {
         return o9365;
      }
      
      public function set o3700(param1:DisplayObject) : void
      {
         o9365 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         var _loc1_:* = null;
         super.draw();
         if(this.asset)
         {
            _loc1_ = this.asset.getChildByName("iconContainer") as MovieClip;
            if(_loc1_ != null)
            {
               if(o11611 == -1)
               {
                  o11611 = _loc1_.width;
                  o15265 = _loc1_.height;
               }
               if(_loc1_.numChildren > 0)
               {
                  _loc1_.removeChildren(0,_loc1_.numChildren - 1);
               }
               if(o9365 != null)
               {
                  _loc1_.scaleX = 1;
                  _loc1_.scaleY = 1;
                  _loc1_.addChild(o9365);
                  o9365.scaleX = 1;
                  o9365.scaleY = 1;
                  o20852.o17542(o9365,o11611,o15265);
               }
            }
         }
      }
      
      override public function o13640() : void
      {
         o9365 = null;
         o11611 = 0;
         o15265 = 0;
         o19415 = null;
         super.o13640();
      }
   }
}
