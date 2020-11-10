package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o3450 extends o9743
   {
       
      
      private var o15050:TextField;
      
      private var o10952:MovieClip;
      
      private var o7983:MovieClip;
      
      public function o3450()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.o17920 = false;
         o15050 = container.getChildByName("lblNkCoinCost") as TextField;
         o10952 = container.getChildByName("processing") as MovieClip;
         o7983 = container.getChildByName("nkCoinIcon") as MovieClip;
         o10952.visible = false;
         o7983.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         o4527.visible = true;
      }
      
      public function o6959(param1:int) : void
      {
         o15050.text = param1.toString();
      }
      
      override protected function o5382(param1:Event) : void
      {
         o10952.visible = true;
         o15050.visible = false;
         o7983.visible = false;
         o20173.enabled = false;
         o7770.enabled = false;
         o4527.visible = false;
         if(o8714 != null)
         {
            o8714();
         }
      }
      
      public function o1602() : void
      {
         o10952.visible = false;
         o15050.visible = true;
         o7983.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         o4527.visible = true;
         this.close();
      }
      
      override public function o13640() : void
      {
         o15050 = null;
         o10952 = null;
         o7983 = null;
         super.o13640();
      }
   }
}
