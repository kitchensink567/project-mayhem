package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o11902 extends o6539
   {
       
      
      public var o16989:o13064;
      
      protected var o19689:o978;
      
      private var o7750:o20565;
      
      private var o11840:TextField;
      
      private var o20173:o15625;
      
      private var o3835:o15625;
      
      private var o13689:o15625;
      
      public function o11902()
      {
         super();
      }
      
      protected function get o4253() : String
      {
         return o11840.text;
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:o13064) : void
      {
         super.init(param1);
         this.o16989 = param3;
         this.o19689 = param2;
         o7750 = new o20565(this);
         var _loc4_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         o11840 = _loc4_.getChildByName("txtName") as TextField;
         var _loc5_:o15625 = o7750.o17578("btnFakeBg",_loc4_);
         _loc5_.visible = false;
         o20173 = o7750.o17578("btnOk",_loc4_);
         o3835 = o7750.o17578("btnCreateMatch",_loc4_);
         o13689 = o7750.o17578("btnCreateMatchRanked",_loc4_);
         o20173.addEventListener("click",o5382,false,0,true);
         o3835.addEventListener("click",o11735,false,0,true);
         if(o13689)
         {
            o13689.addEventListener("click",o10343,false,0,true);
         }
         o11840.text = "";
         o11840.restrict = "0-9a-zA-Z";
         o11840.maxChars = 19;
         o4519.stage.focus = o11840;
         o4519.stage.addEventListener("keyDown",o1772,false,0,true);
      }
      
      private function o1772(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            o5382(null);
         }
      }
      
      protected function o5382(param1:MouseEvent) : void
      {
      }
      
      protected function o11735(param1:MouseEvent) : void
      {
      }
      
      protected function o10343(param1:MouseEvent) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         o11692(o3835.asset.getChildByName("arrow") as MovieClip);
         if(o13689)
         {
            o11692(o13689.asset.getChildByName("arrow") as MovieClip);
         }
      }
      
      override public function o13640() : void
      {
         o7750.o13640();
         o20173.removeEventListener("click",o5382);
         o3835.removeEventListener("click",o11735);
         if(o13689)
         {
            o13689.removeEventListener("click",o10343);
         }
         o4519.stage.removeEventListener("keyDown",o1772);
         o16989 = null;
         o7750 = null;
         o11840 = null;
         o20173 = null;
         o3835 = null;
         o13689 = null;
         super.o13640();
      }
   }
}
