package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o16533 extends o9743
   {
       
      
      public var o16989:o13064;
      
      private var o9679:o20565;
      
      private var o20212:TextField;
      
      private var o13765:o15625;
      
      private var o11278:MovieClip;
      
      private var o7216:o2982;
      
      private var o18796:o2982;
      
      private var o1597:MovieClip;
      
      private var o16623:TextField;
      
      private var o13892:TextField;
      
      protected var o6003:o20421;
      
      private var o13811:o15625;
      
      private var o13594:MovieClip;
      
      protected var o8818:TextField;
      
      public function o16533()
      {
         super();
      }
      
      override public function o13640() : void
      {
         o9679.o13640();
         o16989 = null;
         o9679 = null;
         o20212 = null;
         o13765 = null;
         o11278 = null;
         o7216 = null;
         o18796 = null;
         o1597 = null;
         o16623 = null;
         o13892 = null;
         o6003 = null;
         o13811 = null;
         o13594 = null;
         o8818 = null;
         super.o13640();
      }
      
      private function o14098(param1:String) : o2982
      {
         var _loc2_:o2982 = new o2982();
         var _loc3_:MovieClip = o11278.getChildByName(param1) as MovieClip;
         _loc2_.init(_loc3_);
         this.o5452(_loc2_);
         return _loc2_;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o9679 = new o20565(this);
         o20212 = param1.getChildByName("lblItemCount3") as TextField;
         o20212.visible = false;
         o13765 = o9679.o17578("btnAssignItem2");
         o11278 = param1.getChildByName("assignContainer") as MovieClip;
         o11278.mouseEnabled = false;
         o7216 = o14098("btnStrongbox");
         o18796 = o14098("btnCboPack");
         o1597 = o11278.getChildByName("selectedCharacterIcon") as MovieClip;
         o16623 = o11278.getChildByName("lblSelectedCharacterName") as TextField;
         o13892 = o11278.getChildByName("lblSelectedCharacterInfo") as TextField;
         o13811 = o9679.o17578("btnFakeProcessingBg");
         o13594 = param1.getChildByName("lblProcessing") as MovieClip;
         o8818 = param1.getChildByName("lblClaimHeading") as TextField;
         o8818.visible = false;
         var _loc5_:Array = [];
         _loc4_ = 0;
         while(_loc4_ < 6)
         {
            _loc3_ = o9679.o15961("btnSelectCharacter" + _loc4_,"Test " + _loc4_,param1);
            _loc3_.enabled = false;
            _loc5_.push(_loc3_);
            _loc4_++;
         }
         o6003 = o9679.o3538(_loc5_);
         o7216.visible = false;
         o18796.visible = false;
         o7216.addEventListener("click",o2938,false,0,true);
         o18796.addEventListener("click",o16885,false,0,true);
         o13765.addEventListener("click",o18511,false,0,true);
         o6003.addEventListener(o5595.o16737,o12382,false,0,true);
         o1218(false);
         o11048();
         o6003.o2120 = 0;
      }
      
      protected function o1218(param1:Boolean) : void
      {
         o13811.visible = param1;
         o13594.visible = param1;
         if(param1)
         {
            o13594.gotoAndPlay(1);
         }
         else
         {
            o13594.gotoAndStop(1);
         }
      }
      
      private function o12382(param1:o11507) : void
      {
         o3994(param1.o6457);
      }
      
      protected function o5507() : void
      {
      }
      
      private function o18511(param1:Event) : void
      {
         o5507();
      }
      
      private function o2938(param1:Event) : void
      {
         o18511(param1);
      }
      
      private function o16885(param1:Event) : void
      {
         o18511(param1);
      }
      
      protected function o6252(param1:String, param2:String, param3:int, param4:int) : void
      {
         o1597.gotoAndStop(param4 + 2);
         o16623.text = param1;
         o13892.text = "Level " + param3 + ", " + param2;
      }
      
      protected function o10899(param1:int) : void
      {
         o20212.text = param1.toString();
      }
      
      protected function o18741(param1:String, param2:int, param3:int, param4:String) : void
      {
         o7216.visible = true;
         o18796.visible = false;
         o7216.o13586 = param1;
         o7216.o7658(0,0,param2);
         var _loc5_:TextField = o7216.asset.getChildByName("lblMuliples") as TextField;
         if(param3 > 1)
         {
            _loc5_.text = "X" + param3.toString();
         }
         else
         {
            _loc5_.text = "";
         }
         o8818.text = param4;
      }
      
      protected function o18578(param1:String, param2:int, param3:String) : void
      {
         o7216.visible = false;
         o18796.visible = true;
         o18796.o13586 = param1;
         o18796.o7658(0,0,param2);
         o8818.text = param3;
      }
      
      protected function o3994(param1:int) : void
      {
      }
      
      protected function o11048() : void
      {
      }
      
      public function o16887(param1:int, param2:String, param3:String, param4:int, param5:int) : void
      {
         var _loc6_:o12290 = o6003.o4364(param1) as o12290;
         _loc6_.enabled = true;
         _loc6_.o13586 = param2 + ", Level " + param4 + ", " + param3;
         var _loc8_:TextField = _loc6_.asset.getChildByName("lblCharacterName") as TextField;
         if(_loc8_ != null)
         {
            _loc8_.text = param2;
         }
         _loc6_.o13586 = "Level " + param4 + ", " + param3;
         var _loc7_:MovieClip = _loc6_.asset.getChildByName("icon") as MovieClip;
         if(_loc7_ != null)
         {
            _loc7_.gotoAndStop(param5 + 2);
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o20212.visible = true;
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         super.o6662(param1);
         if(o8818 != null)
         {
            o8818.visible = this.o11985 == 1;
         }
      }
      
      override public function close() : void
      {
         super.close();
         o20212.visible = false;
      }
   }
}
