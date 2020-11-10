package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class o15625 extends o16681
   {
      
      private static var o16227:o15625;
       
      
      public var o12403:Object;
      
      private var o3902:Boolean = false;
      
      public var o17379:MovieClip;
      
      protected var o1827:Boolean = false;
      
      public var o501:String;
      
      private var o11579:Boolean = false;
      
      private var o13919:String;
      
      public var o14855:Boolean;
      
      public var o16802:Boolean;
      
      private var o6886:String;
      
      public var o14171:int;
      
      private var o2099:Boolean = false;
      
      public function o15625()
      {
         o6886 = "NOT SET";
         super();
      }
      
      override public function toString() : String
      {
         if(asset == null)
         {
            return "[object button NULL asset?]";
         }
         return "[object button " + asset.name + "]";
      }
      
      public function get o20692() : String
      {
         return o6886;
      }
      
      public function set o20692(param1:String) : void
      {
         if(o6886 == param1)
         {
            return;
         }
         o6886 = param1;
         o1258();
      }
      
      public function o5175() : void
      {
         asset.doubleClickEnabled = true;
         asset.addEventListener("doubleClick",o14205,false,0,true);
      }
      
      private function o14205(param1:MouseEvent) : void
      {
         if(this.enabled)
         {
            dispatchEvent(new MouseEvent("doubleClick"));
         }
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         if(param1 == null)
         {
            throw new Error("null button asset");
         }
         param1.stop();
         param1.buttonMode = true;
         param1.mouseChildren = false;
         param1.useHandCursor = false;
         param1.tabEnabled = false;
         o7250();
         var _loc2_:* = param1;
         var _loc3_:Point = _loc2_.localToGlobal(new Point(_loc2_.mouseX,_loc2_.mouseY));
         if(_loc2_.hitTestPoint(_loc3_.x,_loc3_.y,false))
         {
            o9173("over");
         }
         else
         {
            o9173("up");
         }
         (param1 as MovieClip).addEventListener("enterFrame",o6662,false,0,true);
      }
      
      private function o6662(param1:Event) : void
      {
         o2099 = false;
      }
      
      public function get o3993() : Boolean
      {
         return o1827;
      }
      
      public function set o3993(param1:Boolean) : void
      {
         if(o1827 == param1)
         {
            return;
         }
         o1827 = param1;
         o1258();
      }
      
      public function o9173(param1:String) : void
      {
         if(o11579)
         {
            o13919 = param1;
            return;
         }
         if(o501 == param1)
         {
            return;
         }
         o501 = param1;
         o1258();
      }
      
      override public function get enabled() : Boolean
      {
         return super.enabled;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         .super.enabled = param1;
         asset.mouseEnabled = param1;
      }
      
      protected function o7250() : void
      {
         if(o3902)
         {
            asset.addEventListener("click",o15604,false,0,true);
         }
         else
         {
            asset.addEventListener("rollOver",o11030,false,0,true);
            asset.addEventListener("mouseDown",o11030,false,0,true);
            asset.addEventListener("mouseUp",o11030,false,0,true);
            asset.addEventListener("rollOut",o11030,false,0,true);
         }
      }
      
      public function o15604(param1:Event) : void
      {
         if(o2099 == false)
         {
            dispatchEvent(new MouseEvent("click"));
            o2099 = true;
         }
      }
      
      override public function o13640() : void
      {
         if(asset)
         {
            asset.removeEventListener("enterFrame",o6662);
            if(o3902)
            {
               asset.removeEventListener("click",o15604);
            }
            else
            {
               asset.removeEventListener("rollOver",o11030);
               asset.removeEventListener("mouseDown",o11030);
               asset.removeEventListener("mouseUp",o11030);
               asset.removeEventListener("rollOut",o11030);
               asset.removeEventListener("doubleClick",o14205);
            }
         }
         o17379 = null;
         o1827 = false;
         o501 = null;
         o11579 = false;
         o13919 = null;
         o14855 = false;
         o16802 = false;
         o6886 = null;
         super.o13640();
      }
      
      public function o11030(param1:MouseEvent) : void
      {
         if(o12514 || o10749())
         {
            o16227 = null;
            return;
         }
         if(param1.type == "rollOver")
         {
            dispatchEvent(new MouseEvent("rollOver"));
         }
         if(param1.type == "mouseDown")
         {
            o16227 = this;
            o9173("down");
            o8421();
         }
         else if(param1.type == "rollOver" || param1.type == "mouseUp")
         {
            o9173("over");
            o9952();
            if(o16227 == this && param1.type == "mouseUp" && this.enabled)
            {
               o16227 = null;
               asset.stage.focus = null;
               if(o2099 == false)
               {
                  dispatchEvent(new MouseEvent("click"));
                  o2099 = true;
               }
               o13064.gc();
            }
         }
         else if(param1.type == "rollOut")
         {
            o9173("up");
            o9952();
         }
      }
      
      protected function o8421() : void
      {
         dispatchEvent(new o5595(o5595.o19618,true));
      }
      
      protected function o12818(param1:TimerEvent) : void
      {
      }
      
      protected function o9952() : void
      {
      }
      
      override protected function draw() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(asset == null)
         {
            return;
         }
         super.draw();
         try
         {
            _loc1_ = "";
            if(enabled)
            {
               if(this.o3993)
               {
                  _loc1_ = o501 + "Selected";
                  this.o19614(asset,_loc1_);
               }
               else
               {
                  _loc1_ = o501;
                  this.o19614(asset,_loc1_);
               }
            }
            else
            {
               _loc1_ = "disabled";
               this.o19614(asset,"disabled");
            }
            if(o17379 != null)
            {
               if(enabled)
               {
                  if(this.o3993)
                  {
                     _loc1_ = o501 + "Selected";
                     this.o19614(o17379,_loc1_);
                  }
                  else
                  {
                     _loc1_ = o501;
                     this.o19614(o17379,_loc1_);
                  }
               }
               else
               {
                  _loc1_ = "disabled";
                  this.o19614(o17379,_loc1_);
               }
            }
            _loc2_ = asset.getChildByName("lblRolloverText") as TextField;
            if(_loc2_ != null && o6886 != null)
            {
               o1256(_loc2_,o6886);
            }
            return;
         }
         catch(o7367:Error)
         {
            throw new Error("Base button, frame not found: " + _loc1_);
         }
      }
   }
}
