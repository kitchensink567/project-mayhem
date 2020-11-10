package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o10400 extends o12306
   {
       
      
      private var o9905:TextField;
      
      public function o10400()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o9905 = container.getChildByName("txtDelete") as TextField;
         o9905.text = "";
         o20173.enabled = false;
         o9905.addEventListener("change",o13773,false,0,true);
      }
      
      private function o13773(param1:Event) : void
      {
         o9905.text = o9905.text.replace("\n","");
         o9905.text = o9905.text.replace("\n\r","");
         o9905.text = o9905.text.replace("\r","");
         o20173.enabled = o9905.text == "delete";
      }
      
      override public function o13640() : void
      {
         o9905.removeEventListener("change",o13773);
         o9905 = null;
         super.o13640();
      }
   }
}
