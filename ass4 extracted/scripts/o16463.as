package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o16463 extends o15625
   {
       
      
      private var o9679:o20565;
      
      private var o1030:TextField;
      
      private var o1068:MovieClip;
      
      public var o18747:MovieClip;
      
      private var o4674:MovieClip;
      
      private var o16989:o13064;
      
      private var o10513:int;
      
      public var o20827:o4609;
      
      public var o13012:o6993;
      
      public var o7211:int;
      
      private var o6544:MovieClip;
      
      private var o4999:MovieClip;
      
      private var o14925:String;
      
      private var o3045:MovieClip;
      
      private var o351:MovieClip;
      
      public function o16463()
      {
         o14925 = "";
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         this.o16989 = param2;
         o1030 = param1.getChildByName("lblTitle") as TextField;
         o4674 = param1.getChildByName("xpBar") as MovieClip;
         o4674.gotoAndStop(1);
         var _loc3_:MovieClip = o4674.getChildByName("xpBarInner") as MovieClip;
         o351 = _loc3_.getChildByName("xpBarFX") as MovieClip;
         o351.gotoAndStop(1);
         o351.visible = false;
         o1068 = param1.getChildByName("currentLevel") as MovieClip;
         o1068.gotoAndStop(1);
         o18747 = param1.getChildByName("levelUp") as MovieClip;
         o18747.gotoAndStop(1);
         o18747.visible = false;
         o3045 = param1.getChildByName("xpAni") as MovieClip;
         o3045.gotoAndStop(1);
         o3045.visible = false;
         o6544 = param1.getChildByName("masteryLock") as MovieClip;
         o4999 = param1.getChildByName("masteryIcon") as MovieClip;
         o4999.gotoAndStop(1);
      }
      
      public function o9576() : void
      {
         o3045.visible = true;
         o3045.gotoAndPlay(1);
         o351.gotoAndPlay(1);
         o351.visible = true;
      }
      
      public function o12163() : void
      {
         o3045.visible = false;
         o3045.gotoAndStop(1);
         o351.gotoAndStop(1);
         o351.visible = false;
      }
      
      public function o9819() : void
      {
         o18747.gotoAndPlay(1);
         o18747.visible = true;
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         o9679 = null;
         o1030 = null;
         o1068 = null;
         o18747 = null;
         o4674 = null;
         o16989 = null;
         o20827 = null;
         o13012 = null;
         o6544 = null;
         o14925 = null;
         o4999 = null;
         o3045 = null;
         o351 = null;
         super.o13640();
      }
      
      public function o20448(param1:Number) : void
      {
         var _loc2_:int = param1 * 99 + 1;
         if(_loc2_ <= 0)
         {
            _loc2_ = 1;
         }
         else if(_loc2_ > 100)
         {
            _loc2_ = 100;
         }
         o4674.gotoAndStop(_loc2_);
      }
      
      override protected function draw() : void
      {
         super.draw();
         o1030 = asset.getChildByName("lblTitle") as TextField;
         o1030.text = o14925;
      }
      
      public function o13248(param1:int) : void
      {
         var _loc2_:int = o10513;
         o5100(param1);
         if(_loc2_ != o10513)
         {
            o9819();
         }
      }
      
      private function o5100(param1:int) : void
      {
         var _loc3_:int = o20827.o320(param1);
         o10513 = _loc3_;
         var _loc2_:int = o13012.o9938.length;
         if(_loc3_ >= _loc2_)
         {
            o1068.gotoAndStop(_loc2_ + 1);
         }
         else
         {
            o1068.gotoAndStop(_loc3_ + 1);
         }
         o20448(o20827.o5319(param1));
      }
      
      public function o3650(param1:o4609, param2:o6993, param3:int, param4:Boolean) : void
      {
         this.o20827 = param1;
         this.o13012 = param2;
         this.o7211 = param3;
         o6544.visible = param4;
         o4999.gotoAndStop(param2.id + 1);
         o14925 = param2.name;
         o1030.text = o14925;
         o5100(param3);
      }
      
      public function o17410() : void
      {
      }
   }
}
