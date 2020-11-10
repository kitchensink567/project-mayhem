package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o2519 extends o9743
   {
       
      
      private var o9679:o20565;
      
      private var o20173:o15625;
      
      private var o5431:Function;
      
      public function o2519()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:Function, param3:String) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         o20173 = o9679.o17578("btnOk",container);
         o20173.addEventListener("click",o5382,false,0,true);
         var _loc4_:TextField = o20173.asset.getChildAt(2) as TextField;
         _loc4_.text = param3;
         this.o5431 = param2;
      }
      
      private function o5382(param1:MouseEvent) : void
      {
         if(o5431)
         {
            o5431();
         }
         this.close();
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         super.o6662(param1);
      }
      
      override public function o13640() : void
      {
         o9679 = null;
         o20173 = null;
      }
   }
}
