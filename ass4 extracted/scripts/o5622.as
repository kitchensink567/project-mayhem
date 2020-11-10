package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   
   public class o5622 extends o9743
   {
       
      
      private var o15050:TextField;
      
      private var o10952:MovieClip;
      
      private var o7983:MovieClip;
      
      private var o15674:MovieClip;
      
      private var o7196:MovieClip;
      
      private var o8941:MovieClip;
      
      private var o17775:TextField;
      
      private var o20179:TextField;
      
      private var o9314:Boolean = false;
      
      public function o5622()
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
         o15674 = container.getChildByName("strongboxIcon") as MovieClip;
         o7196 = container.getChildByName("comboPackIcon") as MovieClip;
         o8941 = container.getChildByName("sasCashPurchase") as MovieClip;
         o17775 = container.getChildByName("lblMuliples") as TextField;
         o20179 = o8941.getChildByName("lblSasCashCost") as TextField;
         o10952.visible = false;
         o8941.visible = false;
         o7983.visible = true;
         o20173.enabled = true;
         o7770.enabled = true;
         o4527.visible = true;
      }
      
      public function o17104(param1:int, param2:int, param3:int) : void
      {
         o15050.text = param1.toString();
         o7196.gotoAndStop(1);
         o7196.visible = false;
         o17775.text = "X" + param3.toString();
         var _loc4_:GlowFilter = o17775.filters[0] as GlowFilter;
         _loc4_.color = 12255232;
         o17775.filters = [_loc4_];
         o15674.gotoAndStop(param2);
         o6312();
      }
      
      public function o18869(param1:int, param2:int) : void
      {
         o8941.visible = true;
         o9314 = true;
         o20179.text = "$" + o16724.o10417(param1);
         o7196.gotoAndStop(1);
         o7196.visible = false;
         o17775.text = "X3";
         var _loc3_:GlowFilter = o17775.filters[0] as GlowFilter;
         _loc3_.color = 39423;
         o17775.filters = [_loc3_];
         o15674.gotoAndStop(param2);
         o6312();
      }
      
      public function o17731(param1:int, param2:int) : void
      {
         o15050.text = param1.toString();
         o7196.gotoAndStop(param2);
         o15674.gotoAndStop(1);
         o15674.visible = false;
         o17775.text = "";
         o6312();
      }
      
      override protected function o5382(param1:Event) : void
      {
         if(o20173.enabled == false)
         {
            return;
         }
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
      
      private function o6312() : void
      {
         if(o15050.text == "0")
         {
            o20173.enabled = false;
         }
      }
      
      public function o1602() : void
      {
         if(o10952 == null)
         {
            return;
         }
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
         o15674 = null;
         o7196 = null;
         o8941 = null;
         o17775 = null;
         o20179 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
