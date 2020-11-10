package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o1907 extends o9743
   {
       
      
      private var o13594:MovieClip;
      
      public var o8543:Boolean = false;
      
      private var o5774:o15625;
      
      public var o16456:TextField;
      
      private var o17598:String;
      
      private var o13207:String;
      
      public function o1907()
      {
         o17598 = "ERROR";
         o13207 = "ERROR";
         super();
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         var _loc2_:TextField = o20173.asset.getChildByName("lblCoinCost") as TextField;
         var _loc3_:TextField = o20173.asset.getChildByName("lblOutOfCoins") as TextField;
         if(_loc2_ != null && _loc2_.text != o17598)
         {
            _loc2_.text = o17598;
         }
         if(_loc3_ != null && _loc3_.text != o13207)
         {
            _loc3_.text = o13207;
         }
         super.o6662(param1);
      }
      
      public function o12767(param1:MovieClip, param2:int) : void
      {
         super.init(param1);
         this.o17920 = false;
         o13594 = container.getChildByName("lblProcessing") as MovieClip;
         if(o13594 != null)
         {
            o13594.visible = false;
            o20173.enabled = true;
            if(o7770 != null)
            {
               o7770.enabled = true;
            }
            if(o4527 != null)
            {
               o4527.visible = true;
            }
            var _loc3_:TextField = o20173.asset.getChildByName("lblCoinCost") as TextField;
            var _loc4_:* = o20173.asset.getChildByName("lblOutOfCoins") as TextField;
            if(_loc3_ != null)
            {
               o17598 = _loc3_.text.replace("[PRICE]",param2.toString());
               _loc3_.text = o17598;
            }
            if(_loc4_ != null)
            {
               o13207 = _loc4_.text.replace("[PRICE]",param2.toString());
               _loc4_.text = o13207;
            }
            if(o8543)
            {
               o5774 = o9679.o17578("btnBuyTokens",container);
               o5774.addEventListener("click",o5463,false,0,true);
               o16456 = o20173.asset.getChildByName("lblCoinRemaining") as TextField;
            }
            _loc4_ = _loc4_;
            return;
         }
         throw new Error("Continue: lblProcessing missing");
      }
      
      protected function o5463(param1:MouseEvent) : void
      {
         var _loc3_:* = null;
         _loc3_ = o4519.o8116.profileData;
         _loc3_ = o4519.o8116.profileData;
         var _loc2_:o4162 = _loc3_.o5292.o3911.o14690(665);
         var _loc5_:String = "Confirm Token Purchase";
         var _loc4_:String = _loc2_.o17160.toString() + " Tokens for ";
         (o4519.o10093.o16989 as o14043).o13414(_loc5_,_loc4_,665,o9682);
      }
      
      private function o9682() : void
      {
         o1400();
      }
      
      public function o920(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:MovieClip = container.getChildByName("gameOverCountdown") as MovieClip;
         if(_loc3_ != null)
         {
            _loc3_.visible = true;
            _loc2_ = _loc3_.getChildByName("txtCountdown") as TextField;
            if(_loc2_ != null)
            {
               _loc2_.text = "Game over in: " + param1.toString();
            }
         }
      }
      
      public function o1400() : void
      {
         o16456.text = "You have " + o4519.o8116.profileData.data.o911.toString() + " Revive Tokens Remaining";
         o5774.visible = o4519.o8116.profileData.data.o911 <= 1;
         this.o20173.enabled = o4519.o8116.profileData.data.o911 >= 1;
      }
      
      public function o1681() : void
      {
         var _loc1_:MovieClip = container.getChildByName("gameOverCountdown") as MovieClip;
         if(_loc1_ != null)
         {
            _loc1_.visible = false;
         }
      }
      
      override protected function o5382(param1:Event) : void
      {
         if(o13594 != null)
         {
            o13594.visible = true;
         }
         o20173.visible = false;
         o20173.enabled = false;
         if(o7770 != null)
         {
            o7770.enabled = false;
         }
         if(o4527 != null)
         {
            o4527.visible = false;
         }
         if(o8714 != null)
         {
            o8714();
         }
      }
      
      public function o17247() : Boolean
      {
         return o13594.visible;
      }
      
      public function o1602(param1:Boolean = true) : void
      {
         if(o13594 != null)
         {
            o13594.visible = false;
         }
         o20173.enabled = false;
         o20173.visible = false;
         if(o7770 != null)
         {
            o7770.enabled = true;
         }
         if(o4527 != null)
         {
            o4527.visible = true;
         }
         if(param1)
         {
            this.close();
         }
      }
      
      override public function o13640() : void
      {
         if(o8543)
         {
            o5774.removeEventListener("click",o5463);
            o5774 = null;
            o16456 = null;
         }
         o13594 = null;
         super.o13640();
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
      }
   }
}
