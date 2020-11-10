package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o20636 extends o15625
   {
       
      
      public var o2388:MovieClip;
      
      public var o20035:TextField;
      
      public var o4527:TextField;
      
      public var o262:int;
      
      public function o20636(param1:int, param2:MovieClip)
      {
         super();
         this.o16384(param1,param2);
      }
      
      public function o16384(param1:int, param2:MovieClip) : void
      {
         this.o262 = param1;
         param2.gotoAndStop(param1 + 1);
         o2388 = param2.getChildByName("tooltip") as MovieClip;
         o20035 = o2388.getChildByName("lblHeading") as TextField;
         o4527 = o2388.getChildByName("lblDetails") as TextField;
         o2388.visible = false;
         o2388.mouseEnabled = false;
         o20035.mouseEnabled = false;
         o4527.mouseEnabled = false;
         var _loc4_:* = 1;
         var _loc5_:* = param2;
         while(_loc5_ != null)
         {
            _loc4_ = Number(_loc4_ * _loc5_.scaleX);
            _loc5_ = _loc5_.parent as MovieClip;
         }
         o2388.scaleX = 1 / _loc4_;
         o2388.scaleY = 1 / _loc4_;
         var _loc3_:MovieClip = param2.getChildByName("btn") as MovieClip;
         super.init(_loc3_);
      }
      
      private function o6777(param1:String, param2:String) : void
      {
         o20035.text = param1;
         o4527.text = param2;
         o2388.visible = true;
      }
      
      private function o3598() : void
      {
         if(o262 == 0)
         {
            o6777("Bronze Badge","Awarded for finishing a Championship in the third highest tier.");
         }
         else if(o262 == 1)
         {
            o6777("Silver Badge","Awarded for finishing a Championship in the second highest tier.");
         }
         else if(o262 == 2)
         {
            o6777("Gold Badge","Awarded for finishing a Championship in the top tier");
         }
         else if(o262 == 3)
         {
            o6777("Diamond Badge","Awarded for finishing a Championship in 3rd place");
         }
         else if(o262 == 4)
         {
            o6777("Red Diamond Badge","Awarded for being Supreme Runner Up in a Championship");
         }
         else if(o262 == 5)
         {
            o6777("Black Diamond Badge","Awarded for being the Supreme Winner in a Championship");
         }
      }
      
      override public function o9173(param1:String) : void
      {
         super.o9173(param1);
         if(param1 == "over")
         {
            o3598();
         }
         else if(param1 == "up")
         {
            o2388.visible = false;
         }
      }
      
      override public function o13640() : void
      {
         o2388 = null;
         o20035 = null;
         o4527 = null;
         super.o13640();
      }
   }
}
