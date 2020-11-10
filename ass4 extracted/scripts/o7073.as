package
{
   import flash.desktop.Clipboard;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o7073 extends o12306
   {
      
      public static var o10982:Boolean = false;
       
      
      private var o5023:o15625;
      
      private var o11912:o15625;
      
      private var o15593:MovieClip;
      
      private var o16134:TextField;
      
      private var o12801:Boolean;
      
      public function o7073()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:Boolean) : void
      {
         super.init(param1);
         this.o12801 = param2;
         if(!param2)
         {
            o7073.o10982 = true;
         }
         o5023 = o9679.o17578("btnDetails",container);
         o15593 = this.container.getChildByName("detailsMessage") as MovieClip;
         o11912 = o9679.o17578("btnCopy",o15593);
         o16134 = o15593.getChildByName("lblText") as TextField;
         o5023.addEventListener("click",o3184,false,0,true);
         o11912.addEventListener("click",o12772,false,0,true);
         o15593.visible = false;
         this.o4527 = o16134;
      }
      
      private function o3184(param1:MouseEvent) : void
      {
         o15593.visible = !o15593.visible;
      }
      
      private function o12772(param1:MouseEvent) : void
      {
         Clipboard.generalClipboard.clear();
         Clipboard.generalClipboard.setData("air:text",o16134.text,false);
      }
      
      override public function o13640() : void
      {
         if(!o12801)
         {
            o7073.o10982 = false;
         }
         o5023.removeEventListener("click",o3184);
         o11912.removeEventListener("click",o12772);
         o5023 = null;
         o11912 = null;
         o15593 = null;
         o16134 = null;
         super.o13640();
      }
   }
}
