package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o18331 extends o20581
   {
       
      
      private var o17284:TextField;
      
      private var o16388:Timer;
      
      private var o14975:Number;
      
      private var o5225:o15625;
      
      private var o7592:int;
      
      private var o13455:MovieClip;
      
      public function o18331()
      {
         super();
      }
      
      private function o17816(param1:int) : void
      {
         var _loc5_:int = o14200.o19505.o7923.o2274;
         var _loc4_:MovieClip = container.getChildByName("levelRequirements") as MovieClip;
         var _loc3_:MovieClip = _loc4_.getChildByName("levelIcon") as MovieClip;
         _loc3_.gotoAndStop(_loc5_);
         var _loc2_:MovieClip = _loc3_.getChildByName("rankIcon") as MovieClip;
         _loc2_.gotoAndStop(param1);
         var _loc6_:TextField = _loc4_.getChildByName("lvlRequired") as TextField;
         _loc6_.text = "LVL " + param1;
      }
      
      public function o8224(param1:MovieClip, param2:o13064, param3:Date) : void
      {
         super.o16384(param1,param2,false);
         o14975 = param3.time - o4519.o8116.o15020.time;
         o17284 = container.getChildByName("promoEndsIn") as TextField;
         o17284.text = "";
         o16388 = new Timer(1000);
         o16388.addEventListener("timer",o18956,false,0,true);
         o16388.start();
         o18956(null);
         var _loc5_:o20565 = new o20565(this);
         o5225 = _loc5_.o17578("btnStartPurchase",container);
         _loc5_.o13640();
         o5225.addEventListener("click",o6699,false,0,true);
         var _loc4_:o14200 = o14200.o19505;
         _loc4_.o15894.o4848.o18278.o16280(null,o19869.o17670,o9264);
         _loc4_.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
      }
      
      private function o9264(param1:o19869) : void
      {
         o8339("ConfirmNkCoinPurchaseDialog::inventoryItem_purchaseFailed");
         if(param1.o19898.o5693 == o7592)
         {
            o11774();
            this.close();
         }
      }
      
      private function o98(param1:o19869) : void
      {
         if(param1.o19898.o5693 == o7592)
         {
            o11774();
            this.close();
         }
      }
      
      public function o10952(param1:Boolean) : void
      {
         this.o5225.visible = param1 == false;
         this.o7770.visible = param1 == false;
         o13455.visible = param1;
      }
      
      protected function o11774() : void
      {
         o10952(false);
      }
      
      public function o6699(param1:Event) : void
      {
         o10952(true);
         var _loc2_:o14200 = o4519.o8116.profileData;
         _loc2_.o15894.o4848.o18278.o6950(o7592);
      }
      
      public function o18956(param1:Event) : void
      {
         if(o16388 == null)
         {
            return;
         }
         o14975 = o14975 - 1000;
         if(o14975 < 0)
         {
            o14975 = 0;
            o16388.stop();
            this.close();
         }
         o17284.text = "Promotion Ends in : " + o16724.o13621(o14975);
      }
      
      public function o10445(param1:o14096, param2:o4117, param3:int, param4:int) : void
      {
         super.o991(param1,param2);
         this.o7592 = param4;
         o17816(param1.o2752.o16703);
         var _loc5_:TextField = container.getChildByName("lblNkCoinCost") as TextField;
         _loc5_.text = param3.toString();
         o13455 = container.getChildByName("processing") as MovieClip;
         o13455.gotoAndStop(1);
         o13455.visible = false;
         if(o5225 && param3 == 0)
         {
            o5225.enabled = false;
         }
      }
      
      override public function o13640() : void
      {
         o5225.removeEventListener("click",o6699);
         o16388.removeEventListener("timer",o18956);
         var _loc1_:o14200 = o14200.o19505;
         _loc1_.o15894.o4848.o18278.o12657(o19869.o17670,o9264);
         _loc1_.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o16388 = null;
         o17284 = null;
         o5225 = null;
         o13455 = null;
         super.o13640();
      }
   }
}
