package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o13873 extends o9743
   {
       
      
      public var o2473:int = 8;
      
      public var o20398:Boolean;
      
      public var o1688:o15625;
      
      public var o20183:Function;
      
      private var o5359:Vector.<TextField>;
      
      public var o18009:MovieClip;
      
      public function o13873()
      {
         o5359 = new Vector.<TextField>();
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         super.init(param1);
         o9679 = new o20565(this);
         o1688 = o9679.o17578("btnRewards",container,true);
         if(o1688)
         {
            o1688.addEventListener("click",o14392,false,0,true);
         }
         o18009 = (param1.getChildAt(0) as MovieClip).getChildAt(20) as MovieClip;
         o18009.visible = false;
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            o5359.push(o18009.getChildByName("lblScore" + _loc2_) as TextField);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            _loc3_ = o18009.getChildByName("highlight" + _loc2_) as MovieClip;
            _loc3_.visible = false;
            _loc2_++;
         }
      }
      
      public function o14392(param1:Event) : void
      {
         if(o20183)
         {
            o20183(param1);
         }
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
      
      public function o17175(param1:Vector.<o3643>, param2:int) : void
      {
         var _loc5_:* = null;
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         var _loc8_:int = 0;
         var _loc7_:* = o5359;
         for each(var _loc6_ in o5359)
         {
            _loc6_.text = _loc3_ < param1.length?param1[_loc3_].o19189.toString():"0";
            if(_loc3_ < param1.length && param2 >= param1[_loc3_].o19189 && _loc4_ == false)
            {
               _loc4_ = true;
               _loc5_ = o18009.getChildByName("highlight" + _loc3_) as MovieClip;
               if(_loc5_)
               {
                  _loc5_.visible = true;
               }
            }
            _loc3_++;
         }
         o18009.visible = true;
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
         _loc6_.visible = false;
         _loc3_.visible = param1;
      }
      
      public function o2698(param1:int, param2:String, param3:String, param4:int, param5:Number, param6:int, param7:int, param8:Boolean, param9:Dictionary, param10:Boolean, param11:Boolean) : void
      {
         if(param1 < 0 || param1 >= 8)
         {
            return;
         }
         if(param2 == null)
         {
            param2 = "Kong";
         }
         var _loc24_:MovieClip = container.getChildByName("player" + param1.toString()) as MovieClip;
         _loc24_.visible = true;
         var _loc20_:MovieClip = _loc24_.getChildByName("clanContainer") as MovieClip;
         var _loc12_:MovieClip = _loc24_.getChildByName("eventRewardIcon") as MovieClip;
         _loc20_.gotoAndStop(param2);
         _loc12_.gotoAndStop(param6);
         var _loc19_:TextField = _loc24_.getChildByName("lblPlayerName") as TextField;
         var _loc22_:TextField = _loc24_.getChildByName("lblPlayerInfo") as TextField;
         var _loc17_:TextField = _loc24_.getChildByName("lblScore") as TextField;
         var _loc18_:MovieClip = _loc24_.getChildByName("superEventMedal") as MovieClip;
         _loc18_.visible = this.o20398;
         var _loc21_:TextField = _loc24_.getChildByName("lblStanding") as TextField;
         var _loc23_:TextField = _loc24_.getChildByName("lblRank") as TextField;
         o1256(_loc23_,param4 <= 0?"":param7.toString());
         o1256(_loc19_,param3);
         o1256(_loc17_,o16724.o10417(param4));
         var _loc15_:MovieClip = _loc24_.getChildByName("selectedTop") as MovieClip;
         var _loc14_:MovieClip = _loc24_.getChildByName("nonSelectedTop") as MovieClip;
         var _loc16_:MovieClip = _loc24_.getChildByName("selected") as MovieClip;
         var _loc13_:MovieClip = _loc24_.getChildByName("nonSelected") as MovieClip;
         _loc12_.visible = false;
         _loc21_.visible = false;
         _loc16_.visible = false;
         _loc13_.visible = false;
         _loc15_.visible = false;
         _loc14_.visible = false;
         if(param10 && !param11)
         {
            _loc14_.visible = true;
         }
         else if(param11)
         {
            if(param10)
            {
               _loc15_.visible = true;
            }
            else
            {
               _loc16_.visible = true;
            }
         }
         else
         {
            _loc13_.visible = true;
         }
         if(param5 < 0.01)
         {
            param5 = 0.01;
         }
         o1256(_loc21_,"Top " + Math.round(param5 * 100) + "%");
         o6767(_loc24_.getChildByName("badgeSet") as MovieClip,param9);
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
            _loc8_.visible = true;
            _loc7_++;
         }
      }
      
      override public function o13640() : void
      {
         super.o13640();
         o1688 = null;
         o20183 = null;
         o18009 = null;
         var _loc3_:int = 0;
         var _loc2_:* = o5359;
         for each(var _loc1_ in o5359)
         {
            _loc1_ = null;
         }
         o5359 = null;
      }
   }
}
