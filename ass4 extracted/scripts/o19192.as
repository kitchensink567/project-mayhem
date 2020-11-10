package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o19192 extends o9743
   {
       
      
      public var o16660:TextField;
      
      public var o7470:MovieClip;
      
      public function o19192()
      {
         super();
      }
      
      public function o16384(param1:MovieClip) : void
      {
         super.init(param1);
         var _loc3_:MovieClip = param1.getChildByName("dialogTitleContainer") as MovieClip;
         var _loc2_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         var _loc4_:MovieClip = param1.getChildByName("numberContainer") as MovieClip;
         o20035 = _loc3_.getChildByName("lblInfoTitle") as TextField;
         o4527 = _loc2_.getChildByName("lblInfo") as TextField;
         o16660 = _loc4_.getChildByName("numberCounter") as TextField;
         o7470 = param1.getChildByName("gameStartsInContainer") as MovieClip;
      }
      
      public function set o9614(param1:int) : void
      {
         var _loc2_:String = param1.toString();
         if(o16660.text != _loc2_)
         {
            o16660.text = _loc2_;
         }
         if(o16660 != null)
         {
            o16660.visible = param1 >= 0;
         }
         if(o7470 != null)
         {
            o7470.visible = param1 >= 0;
         }
      }
      
      public function o13522(param1:int) : void
      {
         o20035.text = "WAVE " + param1.toString();
         o4527.text = "";
         o16660.visible = false;
         if(o7470 != null)
         {
            o7470.visible = false;
         }
      }
      
      public function o1681() : void
      {
         o16660.visible = false;
         o7470.visible = false;
      }
      
      public function o20695() : void
      {
         o16660.visible = true;
         o7470.visible = true;
      }
      
      override public function o13640() : void
      {
         o16660 = null;
         o7470 = null;
         super.o13640();
      }
   }
}
