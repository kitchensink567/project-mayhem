package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o1770 extends o9743
   {
       
      
      public var o5415:Function;
      
      public var o10486:o14801;
      
      public var o5546:o11614;
      
      public var o13480:MovieClip;
      
      public var o11687:MovieClip;
      
      public var o13729:MovieClip;
      
      public var o14546:TextField;
      
      private var o16603:TextField;
      
      private var o12422:Boolean;
      
      protected var o14240:MovieClip;
      
      private var o12213:Vector.<MovieClip>;
      
      private var o19798:int = 0;
      
      private var o2143:Vector.<Timer>;
      
      private var o881:Vector.<Function>;
      
      public function o1770()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int, param8:int, param9:int, param10:Function, param11:Boolean) : void
      {
         var _loc18_:* = null;
         var _loc20_:* = null;
         super.init(param1);
         this.o12422 = param11;
         this.o5415 = param10;
         var _loc16_:MovieClip = container.getChildByName("clanContainer") as MovieClip;
         var _loc21_:MovieClip = container.getChildByName("iconCharacterClass") as MovieClip;
         var _loc17_:MovieClip = container.getChildByName("classIcon") as MovieClip;
         if(_loc16_ != null)
         {
            _loc16_.gotoAndStop(param6);
         }
         if(_loc21_ != null)
         {
            _loc21_.gotoAndStop(param7 + 1);
         }
         if(_loc17_ != null)
         {
            _loc17_.gotoAndStop(param7 + 1);
            _loc18_ = _loc17_.getChildByName("rankIcon") as MovieClip;
            _loc18_.gotoAndStop(param8);
         }
         o9679.o17506("lblDlgHeading",param2,container);
         if(param11 == false)
         {
            o9679.o17506("lblDlgDetails",param3,container);
         }
         o9679.o17506("lblPlayerName",param4,container);
         o9679.o17506("lblPlayerInfo",param5,container);
         o9679.o17506("lblScore","Score: " + o16724.o10417(param9),container);
         var _loc15_:MovieClip = container.getChildByName("detailsContainerAnimation") as MovieClip;
         if(_loc15_ != null)
         {
            _loc15_.visible = false;
         }
         var _loc14_:MovieClip = container.getChildByName("eventRewardIcon") as MovieClip;
         if(_loc14_ != null)
         {
            _loc14_.gotoAndStop(1);
         }
         o13480 = container.getChildByName("highLevelItemAnimation") as MovieClip;
         o11687 = container.getChildByName("bonusBlackKey") as MovieClip;
         if(o13480 != null)
         {
            o13480.gotoAndStop(1);
            o13480.visible = false;
         }
         if(o11687 != null)
         {
            o11687.visible = false;
         }
         o13729 = container.getChildByName("medalQty") as MovieClip;
         if(o13729 != null)
         {
            o14546 = o13729.getChildByName("lblQty") as TextField;
            o13729.visible = false;
         }
         o16603 = container.getChildByName("lblSuperEventHeading") as TextField;
         if(o16603 != null)
         {
            o16603.visible = false;
         }
         o2143 = new Vector.<Timer>();
         o881 = new Vector.<Function>();
         o20173.visible = false;
         o12213 = new Vector.<MovieClip>();
         o14240 = container.getChildByName("detailsContainerAnimation") as MovieClip;
         var _loc19_:int = 5;
         var _loc13_:int = 0;
         _loc13_ = 0;
         while(_loc13_ < _loc19_)
         {
            _loc20_ = o14240.getChildByName("detailsContainer" + _loc13_.toString()) as MovieClip;
            _loc20_.visible = false;
            o12213.push(_loc20_);
            _loc13_++;
         }
         var _loc12_:MovieClip = o14240.getChildByName("fullBoost") as MovieClip;
         _loc12_.gotoAndStop(1);
         _loc12_.visible = false;
         if(param11)
         {
            o210(0.1,o5221);
         }
      }
      
      protected function o210(param1:Number, param2:Function) : void
      {
         var _loc3_:Timer = new Timer(param1 * 1000,1);
         _loc3_.addEventListener("timer",param2,false,0,true);
         _loc3_.start();
         o2143.push(_loc3_);
         o881.push(param2);
      }
      
      protected function o5221(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o20960.play();
      }
      
      protected function o15775(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o1466.play(0.25);
      }
      
      protected function o18912(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o1466.play();
      }
      
      protected function o16457(param1:Event) : void
      {
         o4519.o8116.o4812.ui.o15528.play();
      }
      
      private function o922(param1:String) : void
      {
         if(o19798 >= o12213.length)
         {
            return;
         }
         var _loc2_:TextField = o12213[o19798].getChildByName("rewardsInfo") as TextField;
         _loc2_.text = param1;
         o12213[o19798].visible = true;
         o19798 = Number(o19798) + 1;
      }
      
      public function o12066(param1:int, param2:String, param3:String, param4:int, param5:int, param6:Number, param7:Boolean, param8:int) : void
      {
         var _loc10_:* = 0;
         var _loc16_:int = 0;
         var _loc9_:* = null;
         var _loc17_:int = 0;
         if(param7)
         {
            o210(0.1,o5221);
         }
         var _loc13_:MovieClip = o14240;
         o9679.o17506("rewardType",param2,container);
         o9679.o17506("rewardsInfo",param3,_loc13_);
         var _loc20_:Array = param3.split("\n");
         var _loc15_:* = 0.5;
         var _loc14_:* = 0.12;
         var _loc12_:int = 0;
         var _loc22_:int = 0;
         var _loc21_:* = _loc20_;
         for each(var _loc18_ in _loc20_)
         {
            this.o922(_loc18_);
            o210(_loc15_ + _loc14_ * _loc12_,o15775);
            _loc12_++;
         }
         var _loc11_:MovieClip = container.getChildByName("eventRewardIcon") as MovieClip;
         if(_loc11_ != null)
         {
            _loc11_.gotoAndStop(param1);
         }
         var _loc19_:String = "";
         if(o10486.o11392 as o14128 is o14128 && (o10486.o11392 as o14128).o9854 == 2)
         {
            _loc10_ = int(o10486.o14209);
            _loc16_ = (o10486.o11392 as o14128).o6680.o20022;
            _loc9_ = o16724.o10417(_loc10_ > _loc16_?_loc16_:_loc10_) + " of " + o16724.o10417(_loc16_);
            o9679.o17506("lblScore","Score: " + _loc9_,container);
            if(_loc10_ > _loc16_)
            {
               _loc10_ = _loc16_;
            }
            _loc17_ = Math.ceil(_loc10_ / _loc16_ * 100);
            if(_loc17_ > 100)
            {
               _loc17_ = 100;
            }
            _loc19_ = "Final Global Event Progress: " + _loc17_.toString() + "% completed!";
         }
         else if(o12422)
         {
            _loc19_ = "Rank " + param4.toString();
         }
         else
         {
            _loc19_ = "Rank " + param4.toString() + " out of " + param5 + ". Top " + Math.ceil(param6 * 100) + "%";
         }
         o9679.o17506("lblRankInfo",_loc19_,container);
         _loc13_.visible = true;
         o20173.visible = true;
         if(param7)
         {
            o11687.visible = true;
            o13480.gotoAndPlay(1);
            o13480.visible = true;
         }
         if(param8 > 0)
         {
            o14546.text = param8.toString();
            o13729.visible = true;
            if(o16603 != null)
            {
               o16603.visible = true;
            }
         }
      }
      
      override public function o13640() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o2143.length)
         {
            _loc1_ = o2143[_loc3_];
            _loc2_ = o881[_loc3_];
            _loc1_.removeEventListener("timer",_loc2_);
            _loc3_++;
         }
         o5415 = null;
         o10486 = null;
         o5546 = null;
         o13480 = null;
         o11687 = null;
         o14240 = null;
         o12213 = null;
         o2143 = null;
         o881 = null;
         super.o13640();
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         o11692(o13480);
         o11692(o14240);
         super.o6662(param1);
      }
      
      override protected function o5382(param1:Event) : void
      {
         this.o20173.visible = false;
         o5415(this);
         super.o5382(param1);
      }
   }
}
