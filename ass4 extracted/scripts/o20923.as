package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o20923 extends o9743
   {
       
      
      public var o2473:int = 5;
      
      public var o20398:Boolean;
      
      public function o20923()
      {
         super();
      }
      
      override public function o13640() : void
      {
         super.o13640();
      }
      
      public function o12578() : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc1_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o2473)
         {
            _loc4_ = container.getChildByName("player" + _loc3_.toString()) as MovieClip;
            _loc2_ = _loc4_.getChildByName("clanContainer") as MovieClip;
            _loc1_ = _loc4_.getChildByName("eventRewardIcon") as MovieClip;
            _loc2_.gotoAndStop(1);
            _loc1_.gotoAndStop(1);
            _loc4_.visible = false;
            _loc3_++;
         }
      }
      
      public function o10706(param1:String) : void
      {
         var _loc2_:TextField = container.getChildByName("lblHeading") as TextField;
         if(o20398 && param1.indexOf("...") < 0)
         {
            _loc2_.text = param1 + " Championship";
         }
         else
         {
            _loc2_.text = param1;
         }
      }
      
      public function o7928(param1:int) : void
      {
         var _loc2_:TextField = container.getChildByName("lblTotalHeading") as TextField;
         _loc2_.text = "    Total: " + param1.toString();
         _loc2_.visible = false;
      }
      
      public function o10550(param1:Boolean) : void
      {
         var _loc2_:TextField = container.getChildByName("lblRankHeading") as TextField;
         var _loc5_:TextField = container.getChildByName("lblTotalHeading") as TextField;
         var _loc4_:TextField = container.getChildByName("lblScoreHeading") as TextField;
         var _loc6_:TextField = container.getChildByName("lblStandingHeading") as TextField;
         var _loc3_:TextField = container.getChildByName("lblBadgeHeading") as TextField;
         _loc6_.text = "Top Tier";
         if(o20398)
         {
            _loc4_.text = "Medals";
         }
         _loc2_.visible = param1;
         _loc5_.visible = false;
         _loc4_.visible = param1;
         _loc6_.visible = param1 && o20398 == false;
         _loc3_.visible = false;
      }
      
      public function o2698(param1:int, param2:String, param3:String, param4:int, param5:Number, param6:int, param7:int, param8:Boolean, param9:Dictionary) : void
      {
         if(param1 < 0 || param1 >= 5)
         {
            return;
         }
         if(param2 == null)
         {
            param2 = "Kong";
         }
         var _loc22_:MovieClip = container.getChildByName("player" + param1.toString()) as MovieClip;
         _loc22_.visible = true;
         var _loc18_:MovieClip = _loc22_.getChildByName("clanContainer") as MovieClip;
         var _loc10_:MovieClip = _loc22_.getChildByName("eventRewardIcon") as MovieClip;
         var _loc14_:MovieClip = _loc22_.getChildByName("selected") as MovieClip;
         var _loc11_:MovieClip = _loc22_.getChildByName("nonSelected") as MovieClip;
         var _loc13_:MovieClip = _loc22_.getChildByName("nonSelectedTop") as MovieClip;
         var _loc12_:MovieClip = _loc22_.getChildByName("selectedTop") as MovieClip;
         _loc14_.visible = param8;
         _loc11_.visible = param8 == false;
         _loc13_.visible = false;
         _loc12_.visible = false;
         _loc18_.gotoAndStop(param2);
         _loc10_.gotoAndStop(param6);
         var _loc17_:TextField = _loc22_.getChildByName("lblPlayerName") as TextField;
         var _loc20_:TextField = _loc22_.getChildByName("lblPlayerInfo") as TextField;
         var _loc15_:TextField = _loc22_.getChildByName("lblScore") as TextField;
         var _loc16_:MovieClip = _loc22_.getChildByName("superEventMedal") as MovieClip;
         _loc16_.visible = this.o20398;
         var _loc19_:TextField = _loc22_.getChildByName("lblStanding") as TextField;
         var _loc21_:TextField = _loc22_.getChildByName("lblRank") as TextField;
         o1256(_loc21_,param7.toString());
         o1256(_loc17_,param3);
         o1256(_loc15_,o16724.o10417(param4));
         if(param5 < 0.01)
         {
            param5 = 0.01;
         }
         _loc19_.visible = o20398 == false;
         _loc10_.visible = o20398 == false;
         o1256(_loc19_,"Top " + Math.round(param5 * 100) + "%");
         o6767(_loc22_.getChildByName("badgeSet") as MovieClip,param9);
      }
      
      private function o6767(param1:MovieClip, param2:Dictionary) : void
      {
         var _loc8_:* = null;
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < 4)
         {
            _loc8_ = param1.getChildByName("badge" + _loc6_.toString()) as MovieClip;
            _loc4_ = _loc8_.getChildByName("level") as MovieClip;
            _loc4_.gotoAndStop(1);
            _loc8_.visible = false;
            _loc6_++;
         }
         var _loc7_:int = 0;
         var _loc10_:int = 0;
         var _loc9_:* = param2;
         for(var _loc3_ in param2)
         {
            _loc5_ = param2[_loc3_];
            _loc8_ = param1.getChildByName("badge" + _loc7_.toString()) as MovieClip;
            _loc4_ = _loc8_.getChildByName("level") as MovieClip;
            this.o5452(new o20636(_loc5_,_loc4_));
            _loc4_.gotoAndStop(_loc5_ + 1);
            _loc8_.visible = false;
            _loc7_++;
         }
      }
   }
}
