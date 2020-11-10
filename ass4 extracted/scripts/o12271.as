package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o12271 extends o9743
   {
       
      
      private var o9679:o20565;
      
      private var o16825:TextField;
      
      private var o7172:TextField;
      
      private var o9659:TextField;
      
      private var o10533:TextField;
      
      private var o8440:TextField;
      
      protected var o7240:o12290;
      
      private var o17185:Function;
      
      private var o11097:Function;
      
      private var o12205:Function;
      
      public var o20822:int;
      
      private var o13287:MovieClip;
      
      private var o4598:o20516;
      
      private var o2188:Boolean = false;
      
      public function o12271()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:Function, param3:Function, param4:Function, param5:o20516) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         this.o4598 = param5;
         this.o17185 = param2;
         this.o11097 = param4;
         this.o12205 = param3;
         o16825 = param1.getChildByName("lblAugTitle") as TextField;
         o7172 = param1.getChildByName("lblAugDetails") as TextField;
         o9659 = param1.getChildByName("lblUpgrade") as TextField;
         o10533 = param1.getChildByName("lblCurrent") as TextField;
         o8440 = param1.getChildByName("lblNext") as TextField;
         this.asset.gotoAndStop(1);
         this.asset.visible = false;
         o7240 = o9679.o15961("btnReset","Reset",container);
         o7240.addEventListener("click",o1333,false,0,true);
         o13287 = param1.getChildByName("textFloat") as MovieClip;
         o13287.gotoAndStop(1);
         o13287.visible = false;
         o13287.mouseChildren = false;
         o13287.mouseEnabled = false;
      }
      
      private function o1333(param1:Event) : void
      {
      }
      
      override protected function o5382(param1:Event) : void
      {
      }
      
      public function o12157() : void
      {
         o19172(null);
      }
      
      override protected function o19172(param1:Event) : void
      {
         if(o4598.o11109())
         {
            o2188 = true;
            o20173.enabled = false;
            return;
         }
         o12205();
         super.o19172(param1);
      }
      
      public function o16669(param1:int) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o11692(o13287);
         o7770.enabled = o4598.o11109() == false;
         if(o2188 && o4598.o11109() == false)
         {
            o2188 = false;
            o19172(null);
         }
         super.o6662(param1);
      }
      
      public function o11246(param1:int, param2:String, param3:String, param4:int, param5:int, param6:String, param7:String, param8:int, param9:Function, param10:String) : void
      {
         this.o20822 = param1;
         var _loc11_:int = 12;
         if(param4 == param5)
         {
            o9659.text = "Max grade";
            param7 = "Max grade";
         }
         else
         {
            o9659.text = "Upgrade for free!";
         }
         o20173.enabled = param4 != param5;
         o9659.visible = o20173.enabled;
         o16825.text = param2;
         o7172.text = param3;
         o10533.text = param6;
         o8440.text = param7;
         var _loc12_:MovieClip = asset.getChildByName("icon") as MovieClip;
         _loc12_.gotoAndStop(param10);
         _loc12_ = null;
         o9679.o5877("aug",param4,param5,"on","off",_loc11_);
         o9072(param9);
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         if(o7240)
         {
            o7240.removeEventListener("click",o1333);
         }
         o13287 = null;
         o9679 = null;
         o16825 = null;
         o7172 = null;
         o9659 = null;
         o10533 = null;
         o8440 = null;
         o7240 = null;
         o20822 = 0;
         o17185 = null;
         o11097 = null;
         o12205 = null;
         super.o13640();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
   }
}
