package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o3164 extends o16681
   {
       
      
      private var asset:MovieClip;
      
      private var o5410:Vector.<MovieClip>;
      
      private var o2681:Function;
      
      private var o16103:Function;
      
      private var o11165:Boolean = false;
      
      private var o14073:int;
      
      private var o8646:Boolean = true;
      
      private var o83:String = null;
      
      private var o17269:String = null;
      
      private var o15721:MovieClip = null;
      
      private var o9535:int = 0;
      
      private var o4850:int = 0;
      
      public function o3164()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         super.init(param1);
         this.asset = param1;
         param1.gotoAndStop("In");
         o5410 = new Vector.<MovieClip>();
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            _loc2_ = param1.getChildByName("strongBox" + _loc3_.toString()) as MovieClip;
            (_loc2_.getChildAt(0) as MovieClip).gotoAndStop(0);
            o5410.push(_loc2_);
            _loc2_.visible = false;
            _loc3_++;
         }
         param1.addEventListener("enterFrame",o6662,false,0,true);
         o15018();
      }
      
      override public function o13640() : void
      {
         asset.removeEventListener("enterFrame",o6662);
         asset = null;
         o5410 = null;
         o2681 = null;
         o16103 = null;
         o11165 = false;
         o14073 = 0;
         o83 = null;
         o17269 = null;
         super.o13640();
      }
      
      public function o15018() : void
      {
         asset.gotoAndPlay("In");
      }
      
      private function o3567(param1:Event) : void
      {
         asset.stop();
      }
      
      public function o1655() : void
      {
         asset.gotoAndPlay("Next");
      }
      
      private function o4479(param1:Event) : void
      {
         asset.stop();
         if(o16103 != null)
         {
            o16103();
         }
      }
      
      public function o15701() : void
      {
         asset.gotoAndPlay("Out");
      }
      
      private function o17055(param1:Event) : void
      {
         asset.stop();
      }
      
      public function o16545(param1:int, param2:Vector.<int>) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         if(param1 != param2.length)
         {
            throw new Error("displayStrongBoxCount(). invalid array size");
         }
         o4850 = o9535;
         if(param2.length > 0)
         {
            o9535 = param2[0];
         }
         var _loc5_:Vector.<int> = new Vector.<int>();
         if(o11165)
         {
            _loc5_.push(o14073);
            param1++;
         }
         var _loc8_:int = 0;
         var _loc7_:* = param2;
         for each(var _loc6_ in param2)
         {
            _loc5_.push(_loc6_);
         }
         o11165 = true;
         if(_loc5_.length > 0)
         {
            o14073 = _loc5_[0];
         }
         _loc4_ = 0;
         while(_loc4_ < o5410.length)
         {
            _loc3_ = o5410[_loc4_];
            _loc3_.visible = _loc4_ < param1;
            if(_loc4_ < param1)
            {
               _loc3_.gotoAndStop(_loc5_[_loc4_]);
            }
            else
            {
               _loc3_.gotoAndStop(1);
            }
            (_loc3_.getChildAt(0) as MovieClip).gotoAndStop(1);
            _loc4_++;
         }
      }
      
      private function o11460(param1:Event) : void
      {
         if(o2681 != null)
         {
            o2681();
         }
      }
      
      public function o9907(param1:Function) : void
      {
         this.o2681 = param1;
         if(o8646)
         {
            o8646 = false;
            o15721 = MovieClip(this.o5410[0].getChildAt(0));
            o15721.gotoAndPlay(1);
         }
         else
         {
            (this.o5410[1].getChildAt(0) as MovieClip).gotoAndPlay(1);
            o15721 = MovieClip(this.o5410[1].getChildAt(0));
         }
         o17269 = null;
         o11577();
      }
      
      public function o11059(param1:Function) : void
      {
         var _loc3_:int = (this.asset.getChildByName("strongBox0") as MovieClip).currentFrame;
         var _loc4_:int = (this.asset.getChildByName("strongBox1") as MovieClip).currentFrame;
         this.o16103 = param1;
         this.asset.gotoAndPlay("Next");
         var _loc2_:MovieClip = this.asset.getChildByName("strongBox0") as MovieClip;
         if(o4850 > 0)
         {
            _loc2_.gotoAndStop(o4850);
         }
      }
      
      protected function o11577() : void
      {
      }
      
      protected function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         if(o83 != asset.currentFrameLabel)
         {
            if(asset.currentFrameLabel == "InComplete")
            {
               asset.stop();
               o3567(null);
            }
            else if(asset.currentFrameLabel == "NextComplete")
            {
               asset.stop();
               o4479(null);
            }
            else if(asset.currentFrameLabel == "OutComplete")
            {
               asset.stop();
               o17055(null);
            }
            o83 = asset == null?null:asset.currentFrameLabel;
         }
         if(o15721 != null)
         {
            o16256(o15721);
         }
      }
      
      protected function o16256(param1:MovieClip) : void
      {
         if(o17269 != param1.currentFrameLabel)
         {
            if(param1.currentFrameLabel == "StrongboxOpened")
            {
               param1.stop();
               o17269 = null;
               o15721 = null;
               o11460(null);
               return;
            }
            o17269 = param1 == null?null:param1.currentFrameLabel;
         }
      }
   }
}
