package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o15306 extends o9743
   {
       
      
      private var o9679:o20565;
      
      private var o4527:TextField;
      
      private var o1993:TextField;
      
      public var o912:Vector.<o20508>;
      
      private var o16072:o20421;
      
      private var o1236:o20421;
      
      private var o13838:o12290;
      
      private var o6967:Function;
      
      private var o12205:Function;
      
      private var o8440:TextField;
      
      public function o15306()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:Function, param3:Function) : void
      {
         var _loc6_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         super.init(param1);
         o9679 = new o20565(this);
         this.o6967 = param2;
         this.o12205 = param3;
         o4527 = param1.getChildByName("lblDetails") as TextField;
         o1993 = param1.getChildByName("lblBuyAug") as TextField;
         o4527.text = "";
         o8440 = param1.getChildByName("lblNext") as TextField;
         this.asset.gotoAndStop(1);
         this.asset.visible = false;
         o912 = new Vector.<o20508>();
         var _loc8_:Array = [];
         _loc6_ = 0;
         while(_loc6_ < 13)
         {
            _loc4_ = new o20508();
            _loc5_ = param1.getChildByName("btnAug" + _loc6_) as MovieClip;
            _loc4_.init(_loc5_);
            _loc4_.o13586 = "test " + _loc6_;
            _loc4_.o9421 = 50;
            o912.push(_loc4_);
            _loc8_.push(_loc4_);
            (_loc4_.asset.getChildByName("icon") as MovieClip).gotoAndStop(1);
            _loc4_.asset.addEventListener("rollOver",o8582,false,0,true);
            _loc4_.asset.addEventListener("rollOut",o10569,false,0,true);
            _loc4_.asset.addEventListener("click",o4514,false,0,true);
            _loc6_++;
         }
         o16072 = o9679.o3538(_loc8_);
         o16072.addEventListener(o5595.o16737,o973,false,0,true);
         o20173.enabled = false;
         o1993.visible = false;
         o8440.visible = false;
         o13838 = o9679.o15961("btnReset","Reset",container);
         o13838.visible = false;
         var _loc7_:o11507 = new o11507(o5595.o16737,o16072.o2120);
         o973(_loc7_);
      }
      
      private function o8582(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = param1.target as MovieClip;
         var _loc3_:int = o16072.o1876(_loc2_);
         var _loc4_:o11507 = new o11507(o5595.o16737,_loc3_);
         o973(_loc4_);
         o4519.o8116.o4812.ui.o876.play();
      }
      
      private function o10569(param1:MouseEvent) : void
      {
         var _loc2_:o11507 = new o11507(o5595.o16737,o16072.o2120);
         o973(_loc2_);
      }
      
      private function o4514(param1:MouseEvent) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o5382(param1:Event) : void
      {
         o6967(o16072.o2120);
         super.o5382(param1);
      }
      
      protected function o973(param1:o11507) : void
      {
         var _loc2_:* = null;
         if(o20173 == null)
         {
            return;
         }
         o20173.enabled = param1.o6457 >= 0;
         o1993.visible = o20173.enabled;
         o8440.visible = o20173.enabled;
         if(param1.o6457 < 0)
         {
            o1993.text = "";
            o4527.text = "Select augment";
         }
         else
         {
            _loc2_ = o16072.o4364(param1.o6457) as o20508;
            o1993.text = "Upgrade for free!";
            o4527.text = _loc2_.o8398;
            o8440.text = _loc2_.o18619;
         }
      }
      
      override public function o13640() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o16072.o19568;
         for each(var _loc1_ in o16072.o19568)
         {
            _loc1_.asset.removeEventListener("rollOver",o8582);
            _loc1_.asset.removeEventListener("rollOut",o10569);
            _loc1_.asset.removeEventListener("click",o4514);
         }
         o9679.o13640();
         o9679 = null;
         o4527 = null;
         o1993 = null;
         o912 = null;
         o16072 = null;
         o1236 = null;
         o6967 = null;
         o12205 = null;
         o8440 = null;
         super.o13640();
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
   }
}
