package
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   public class o9743 extends o6539
   {
      
      private static var o8680:Vector.<o9743> = new Vector.<o9743>();
       
      
      protected const o19681:int = 0;
      
      protected const o14503:int = 1;
      
      protected const o5445:int = 2;
      
      protected const o13232:int = 3;
      
      public var o17920:Boolean = true;
      
      public var o16534:Boolean = true;
      
      protected var o9679:o20565;
      
      public var o20173:o15625;
      
      public var o7770:o15625;
      
      protected var o4537:o15625;
      
      protected var o20035:TextField;
      
      protected var o4527:TextField;
      
      protected var o8714:Function;
      
      protected var o12205:Function;
      
      public var container:MovieClip;
      
      private var o13294:int = 3;
      
      public var o3880:Boolean = true;
      
      public var o16335:Function;
      
      private var stage:Stage;
      
      public var o283:Boolean = true;
      
      public function o9743()
      {
         super();
      }
      
      protected function get o19085() : Boolean
      {
         return true;
      }
      
      protected function get o11985() : int
      {
         return o13294;
      }
      
      protected function set o11985(param1:int) : void
      {
         o13294 = param1;
      }
      
      public function o1209(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = null;
         var _loc3_:int = param1.numChildren;
         param1.stop();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            _loc4_ = param1.getChildAt(_loc2_);
            if(_loc4_ is MovieClip)
            {
               o1209(_loc4_ as MovieClip);
            }
            _loc2_++;
         }
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o8680.push(this);
         o13064.o13834(this);
         o13064.o13834(this.asset);
         o9679 = new o20565(this);
         container = param1.getChildByName("dialogContainer") as MovieClip;
         o20173 = o9679.o17578("btnOk",container,true);
         o7770 = o9679.o17578("btnCancel",container,true);
         o4537 = o9679.o17578("btnFakeBg",param1,true);
         if(o4537 == null)
         {
            o4537 = o9679.o17578("btnFakeBg",container,true);
         }
         if(container != null)
         {
            o20035 = container.getChildByName("lblTitle") as TextField;
            o4527 = container.getChildByName("lblInfo") as TextField;
         }
         if(o20173 != null)
         {
            o20173.addEventListener("click",o5382,false,0,true);
         }
         if(o7770 != null)
         {
            o7770.addEventListener("click",o19172,false,0,true);
         }
         if(o4537 != null)
         {
            o4537.addEventListener("click",o12935,false,0,true);
         }
         if(this.o4527 != null)
         {
            this.o4527.mouseEnabled = false;
         }
         if(this.o20035 != null)
         {
            this.o20035.mouseEnabled = false;
         }
         if(o283)
         {
            param1.visible = false;
         }
         o4712(false);
         param1.gotoAndStop(1);
         if(o19085)
         {
            param1.addEventListener("addedToStage",o343,false,0,true);
         }
      }
      
      private function o343(param1:Event) : void
      {
         stage = asset.stage;
         asset.removeEventListener("addedToStage",o343);
         stage.addEventListener("keyDown",o6204,false,0,true);
         stage.addEventListener("resize",o13318,false,0,true);
      }
      
      private function o6204(param1:KeyboardEvent) : void
      {
         if(o12514 || o8680.length == 0)
         {
            return;
         }
         if(o8680[o8680.length - 1] != this)
         {
            return;
         }
         if(o16534 && o20173 && o20173.enabled && param1.keyCode == 13)
         {
            o5382(null);
         }
         if(o7770 && o7770.enabled && (param1.keyCode == 27 || param1.keyCode == 16777238) && o17920)
         {
            o19172(null);
         }
      }
      
      protected function o4712(param1:Boolean) : void
      {
         asset.enabled = param1;
         asset.mouseEnabled = param1;
         asset.mouseChildren = param1;
      }
      
      public function o16489() : void
      {
         if(o11985 == 0 || o11985 == 1)
         {
            return;
         }
         o11985 = 0;
         this.o12514 = true;
         asset.visible = true;
         o4712(true);
         asset.gotoAndPlay(o4715);
      }
      
      public function o11280() : void
      {
         if(o11985 == 2 || o11985 == 3)
         {
            return;
         }
         o11985 = 2;
         this.o12514 = true;
         o4712(false);
         asset.gotoAndPlay(o12794);
      }
      
      public function o5310() : void
      {
         o2635(null);
      }
      
      public function close() : void
      {
         if(o11985 == 2 || o11985 == 3)
         {
            return;
         }
         o11985 = 2;
         this.o12514 = true;
         o4712(false);
         asset.gotoAndPlay(o12794);
      }
      
      protected function o12935(param1:Event) : void
      {
         if(o17920 == false)
         {
            return;
         }
         if(o7770 != null && o7770.visible)
         {
            o19172(param1);
         }
         else
         {
            o5382(param1);
         }
      }
      
      protected function o5382(param1:Event) : void
      {
         if(o8714 != null)
         {
            o8714();
         }
         o8714 = null;
         o12205 = null;
         this.close();
      }
      
      protected function o19172(param1:Event) : void
      {
         if(o12205 != null)
         {
            o12205();
         }
         o8714 = null;
         o12205 = null;
         this.close();
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o11985 = 1;
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
         this.o12514 = false;
         o11985 = 3;
         o4712(false);
         asset.stop();
         if(o16335 != null)
         {
            o16335();
         }
         o6506();
         if(o3880)
         {
            if(o1878 != null)
            {
               this.o1878.o2309(this);
            }
            this.o8714 = null;
            this.o12205 = null;
         }
         else if(o283)
         {
            asset.visible = false;
         }
      }
      
      public function o13483(param1:String, param2:String, param3:Function, param4:Function = null) : void
      {
         o1256(o20035,param1);
         o1256(o4527,param2);
         this.o8714 = param3;
         this.o12205 = param4;
         this.o16489();
         if(o7770 != null)
         {
            this.o7770.visible = true;
         }
         if(o20173 != null)
         {
            this.o20173.visible = true;
         }
      }
      
      public function o12407(param1:String, param2:String, param3:Function = null) : void
      {
         o1256(o20035,param1);
         o1256(o4527,param2);
         this.o8714 = param3;
         if(o7770 != null)
         {
            this.o7770.visible = false;
         }
         if(o20173 != null)
         {
            this.o20173.visible = true;
         }
         this.o12205 = null;
         this.o16489();
      }
      
      public function o13042(param1:String, param2:String) : void
      {
         if(o20035 != null)
         {
            o20035.text = param1;
         }
         if(o4527 != null)
         {
            o4527.text = param2;
         }
         this.o8714 = o8714;
         if(o7770 != null)
         {
            this.o7770.visible = false;
         }
         if(o20173 != null)
         {
            this.o20173.visible = false;
         }
         this.o12205 = null;
         this.o16489();
      }
      
      public function set o17977(param1:String) : void
      {
         o1256(o20035,param1);
      }
      
      public function get o17977() : String
      {
         return o20035.text;
      }
      
      public function set o8398(param1:String) : void
      {
         o1256(o4527,param1);
      }
      
      public function get o8398() : String
      {
         return o4527.text;
      }
      
      private function o6506() : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o8680;
         for each(var _loc1_ in o8680)
         {
            if(_loc1_ == this)
            {
               o8680.splice(_loc2_,1);
               break;
            }
            _loc2_++;
         }
      }
      
      override public function o13640() : void
      {
         o6506();
         if(o19085 && stage != null)
         {
            stage.removeEventListener("keyDown",o6204);
         }
         if(o20173 != null)
         {
            o20173.removeEventListener("click",o5382);
         }
         if(o7770 != null)
         {
            o7770.removeEventListener("click",o19172);
         }
         if(o4537 != null)
         {
            o4537.removeEventListener("click",o12935);
         }
         o9679.o13640();
         o9679 = null;
         o20173 = null;
         o7770 = null;
         o4537 = null;
         o20035 = null;
         o4527 = null;
         o8714 = null;
         o12205 = null;
         container = null;
         o13294 = 0;
         o3880 = false;
         o16335 = null;
         stage = null;
         super.o13640();
      }
      
      public function o9072(param1:Function, param2:Function = null) : void
      {
         this.o8714 = param1;
         this.o12205 = param2;
         this.o16489();
         if(o7770 != null)
         {
            this.o7770.visible = true;
         }
         if(o20173 != null)
         {
            this.o20173.visible = true;
         }
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o674();
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
