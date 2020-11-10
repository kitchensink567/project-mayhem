package
{
   import assets.ui.dialog.EnterCharacterNameDialogAsset;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o13660 extends o6539
   {
       
      
      private var o7750:o20565;
      
      private var o3005:MovieClip;
      
      private var o19689:o978;
      
      protected var o16989:o13064;
      
      private var o15869:o20421;
      
      public function o13660()
      {
         super();
      }
      
      protected function o5138() : o328
      {
         return new o328();
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc4_:int = 0;
         super.init(param1);
         this.o19689 = param2;
         this.o16989 = param2.o16989;
         o7750 = new o20565(this);
         this.o8900(param3);
         var _loc5_:Array = [];
         _loc5_.push(o7750.o17578("btnCreateCharacterAssult",param1));
         _loc5_.push(o7750.o17578("btnCreateCharacterMedic",param1));
         _loc5_.push(o7750.o17578("btnCreateCharacterHeavy",param1));
         o15869 = o7750.o3538(_loc5_);
         o15869.addEventListener(o5595.o16737,o20036,false,0,true);
         param2.o14537(1);
         this.o19689.o3042("Create Character: Select Class");
         o15869.removeEventListener(o5595.o16737,o20036);
         this.o15869.o2120 = -1;
         _loc4_ = 0;
         while(_loc4_ < o15869.o19568.length)
         {
            o15869.o19568[_loc4_].enabled = true;
            _loc4_++;
         }
         o15869.addEventListener(o5595.o16737,o20036,false,0,true);
         param2.o8987(false);
         param2.o16224(false);
         param2.o9164(true);
      }
      
      override public function o13640() : void
      {
         o15869.removeEventListener(o5595.o16737,o20036);
         o7750.o13640();
         o7750 = null;
         o3005 = null;
         o19689 = null;
         o16989 = null;
         o15869 = null;
         super.o13640();
      }
      
      protected function o15640() : void
      {
      }
      
      protected function o17196() : void
      {
         o16366();
      }
      
      protected function o16571() : void
      {
         var _loc1_:o328 = o5138();
         _loc1_.o3547(new EnterCharacterNameDialogAsset(),this,this.o19689,this.o15869.o2120);
         _loc1_.o17920 = false;
         this.o16989.o9642(_loc1_);
         _loc1_.o13483("","",o15640,o17196);
      }
      
      protected function o20036(param1:o11507) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < o15869.o19568.length)
         {
            _loc3_ = param1.o6457 == _loc2_ || param1.o6457 < 0;
            o15869.o19568[_loc2_].enabled = false;
            _loc2_++;
         }
         if(param1.o6457 >= 0)
         {
            o8132(param1.o6457);
         }
      }
      
      public function o16366() : void
      {
         var _loc1_:int = 0;
         o15869.o2120 = -1;
         _loc1_ = 0;
         while(_loc1_ < o15869.o19568.length)
         {
            o15869.o19568[_loc1_].enabled = true;
            _loc1_++;
         }
         o15869.o1258();
      }
      
      protected function o8132(param1:int) : void
      {
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null || asset.stage == null)
         {
            return;
         }
         var _loc4_:int = 0;
         var _loc3_:* = o15869.o19568;
         for each(var _loc2_ in o15869.o19568)
         {
            o11692(_loc2_.asset.getChildByName("lblTitle") as MovieClip);
         }
      }
   }
}
