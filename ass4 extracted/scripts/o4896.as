package
{
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class o4896 extends o16681
   {
      
      public static var o6854:Array = ["#3DEB8B","#3FCBE9","#F56223","#FFCC00","#FF00FF"];
       
      
      private const o20086:Number = -10;
      
      public var o8478:Boolean = false;
      
      public var o3363:Boolean = false;
      
      private var o6721:Boolean = false;
      
      public var o9098:int = 0;
      
      public var o1677:Boolean = false;
      
      private var o447:Vector.<o15577>;
      
      private var o9779:TextFormat;
      
      public var o10778:TextField;
      
      private var o11840:TextField;
      
      private var o7750:o20565;
      
      private var o19418:o15625;
      
      private var o820:o15625;
      
      private var stage:Stage;
      
      private var o10751:String;
      
      private var o11984:o7849;
      
      private var o8695:MovieClip;
      
      private var o2667:TextField;
      
      public var o1944:int = 175;
      
      public function o4896()
      {
         o447 = new Vector.<o15577>();
         o10751 = "#FF0000";
         super();
      }
      
      public function get o6361() : Boolean
      {
         return o6721;
      }
      
      public function set o6361(param1:Boolean) : void
      {
         o6721 = param1;
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         o7750 = new o20565(this);
         o19418 = o7750.o17578("btnMuteChat");
         o820 = o7750.o17578("btnChatMuted");
         o19418.addEventListener("click",o1008,false,0,true);
         o820.addEventListener("click",o1008,false,0,true);
         o820.visible = false;
         o19418.visible = false;
         o2667 = param1.getChildByName("lblChatInfo") as TextField;
         o2667.mouseEnabled = false;
         var _loc6_:MovieClip = param1.getChildByName("scroll_bar") as MovieClip;
         o11984 = new o7849();
         o11984.o16677(_loc6_.getChildByName("track_mc") as MovieClip,_loc6_.getChildByName("thumb_mc") as MovieClip,_loc6_.getChildByName("up_mc") as MovieClip,_loc6_.getChildByName("down_mc") as MovieClip);
         this.asset.addChild(o11984);
         stage = param2.asset.stage;
         o9779 = new TextFormat("Doppio One",16,16777215);
         var _loc5_:GlowFilter = new GlowFilter(0,1,5,5,5,1);
         o11840 = new TextField();
         o11840.defaultTextFormat = o9779;
         o11840.height = 5;
         o11840.multiline = false;
         o11840.autoSize = "left";
         o11840.wordWrap = false;
         o11840.selectable = false;
         var _loc4_:MovieClip = param1.getChildByName("container") as MovieClip;
         o11840.y = _loc4_.y + 4 + o9098;
         o11840.filters = [_loc5_];
         o11840.x = 175;
         o10778 = new TextField();
         o10778.defaultTextFormat = o9779;
         o10778.height = 26;
         o10778.width = 750;
         o10778.maxChars = 60;
         o10778.selectable = true;
         o10778.multiline = false;
         o10778.autoSize = "none";
         o10778.wordWrap = false;
         o10778.type = "input";
         o10778.y = _loc4_.y + 4 + o9098;
         o10778.filters = [_loc5_];
         o10778.mouseEnabled = false;
         o10778.x = o1944;
         param1.addChild(o11840);
         param1.addChild(o10778);
         param1.mouseEnabled = false;
         param1.getChildByName("scroll_bar").visible = false;
         o8695 = param1.parent.getChildByName("chatBackground") as MovieClip;
         if(o8695)
         {
            o17769(1);
         }
         this.o20395();
         this.o14004();
      }
      
      override public function o13640() : void
      {
         o10778.removeEventListener("focusOut",o17820);
         o19418.removeEventListener("click",o1008);
         o820.removeEventListener("click",o1008);
         o7750.o13640();
         o8478 = false;
         o3363 = false;
         o6361 = false;
         o1677 = false;
         o447 = null;
         o9779 = null;
         o10778 = null;
         o11840 = null;
         o7750 = null;
         o19418 = null;
         o820 = null;
         stage = null;
         o10751 = null;
         o11984 = null;
         o2667 = null;
         super.o13640();
      }
      
      public function o17769(param1:int) : void
      {
         o8695.gotoAndStop(param1);
      }
      
      public function get o4134() : MovieClip
      {
         return this.o8695;
      }
      
      private function o1008(param1:MouseEvent) : void
      {
         o658();
      }
      
      private function o12263(param1:MouseEvent) : void
      {
         o658();
      }
      
      public function reset() : void
      {
         var _loc1_:MovieClip = asset.getChildByName("container") as MovieClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.o10574(0);
         }
         o447 = new Vector.<o15577>();
         o6361 = false;
         o1677 = false;
         var _loc2_:MovieClip = asset.getChildByName("muteChat1") as MovieClip;
         _loc2_.visible = false;
         o14004();
      }
      
      public function o658() : void
      {
         o6361 = !o6361;
         o19418.visible = o6361 == false;
         o820.visible = o6361;
         var _loc1_:MovieClip = asset.getChildByName("container") as MovieClip;
         var _loc2_:MovieClip = asset.getChildByName("scroll_bar") as MovieClip;
         if(o6361)
         {
            o11840.visible = false;
            o10778.visible = false;
            _loc1_.visible = false;
            _loc2_.visible = false;
            if(o3363)
            {
               o14004();
            }
         }
         else
         {
            o11840.visible = true;
            o10778.visible = true;
            _loc1_.visible = true;
            _loc2_.visible = true;
            if(!o3363)
            {
               o20395();
            }
         }
      }
      
      public function o16489() : void
      {
         o2667.visible = false;
         o8478 = true;
         o19418.visible = o6361 == false;
         o820.visible = o6361;
         if(o6361)
         {
            return;
         }
         if(!o3363)
         {
            o20395();
         }
      }
      
      public function close() : void
      {
         o2667.visible = true;
         o8478 = false;
         o19418.visible = false;
         o820.visible = false;
         if(o6361)
         {
            return;
         }
         if(o3363)
         {
            o14004();
         }
      }
      
      public function o14004() : void
      {
         var _loc2_:int = 0;
         var _loc1_:MovieClip = asset.getChildByName("container") as MovieClip;
         var _loc3_:MovieClip = asset.getChildByName("scroll_bar") as MovieClip;
         o3363 = false;
         _loc1_.mouseChildren = false;
         _loc1_.mouseEnabled = false;
         o11984.o15749(1);
         _loc3_.visible = false;
         o10778.visible = false;
         o11840.visible = false;
         o10778.removeEventListener("focusOut",o17820);
         _loc2_ = 0;
         while(_loc2_ < o447.length)
         {
            o447[_loc2_].o6899 = false;
            _loc2_++;
         }
      }
      
      public function o20395() : void
      {
         var _loc3_:int = 0;
         o3363 = true;
         var _loc2_:MovieClip = asset.getChildByName("container") as MovieClip;
         var _loc4_:MovieClip = asset.getChildByName("scroll_bar") as MovieClip;
         _loc2_.mouseChildren = true;
         _loc2_.mouseEnabled = true;
         o11984.o8615(asset.container,asset.o13913);
         o11984.o15749(1);
         var _loc1_:* = o11984.o5667() != 1;
         _loc4_.visible = _loc1_;
         o10778.visible = true;
         o11840.visible = true;
         o10778.text = "";
         if(stage != null)
         {
            stage.focus = o10778;
         }
         o10778.addEventListener("focusOut",o17820,false,0,true);
         _loc3_ = 0;
         while(_loc3_ < o447.length)
         {
            o447[_loc3_].o6899 = true;
            _loc3_++;
         }
      }
      
      private function o17820(param1:FocusEvent) : void
      {
         if(stage != null)
         {
            stage.focus = o10778;
         }
      }
      
      public function o14139(param1:String, param2:String) : void
      {
         o11840.htmlText = "<font color=\'" + param2 + "\'><b>" + param1 + "</b></font>" + ": ";
         o10778.x = o11840.x + o11840.width - 4;
         o10778.width = asset.o13913.width - o11840.width;
      }
      
      public function o1800() : String
      {
         return o10778.text;
      }
      
      public function o20132(param1:String, param2:String, param3:String, param4:Boolean = true) : void
      {
         if(param1 == null || param1 == "")
         {
            return;
         }
         param1 = param1.split("<").join("&lt;").split(">").join("&gt;");
         param1 = param1.split("[BEGINFONT").join("<font").split("CLOSEFONT]").join(">").split("[ENDFONT]").join("</font>");
         var _loc8_:MovieClip = asset.getChildByName("container") as MovieClip;
         var _loc10_:MovieClip = asset.getChildByName("scroll_bar") as MovieClip;
         var _loc7_:MovieClip = asset.getChildByName("mask_mc") as MovieClip;
         var _loc6_:String = "<font color=\'" + param3 + "\'>" + param2 + ": </font>" + param1;
         var _loc9_:o15577 = new o15577(_loc6_,_loc7_.width - 5,o9779,5,4,o3363 && param4,param4 == false);
         _loc9_.o4638.y = _loc8_.height + -10;
         var _loc5_:* = o11984.o5667() != 1;
         o447.push(_loc9_);
         _loc8_.addChild(_loc9_.o4638);
         o11984.o8615(_loc8_,_loc7_);
         _loc10_.visible = _loc5_ && o447.length > 1;
         if(!_loc5_)
         {
            o11984.o15749(1);
         }
      }
      
      public function o7664(param1:Number) : void
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o447.length)
         {
            o447[_loc2_].o7664(param1);
            _loc2_++;
         }
      }
      
      private function o6590(param1:String) : String
      {
         if(param1 == null)
         {
            return "";
         }
         var _loc2_:RegExp = /^\s+|\s+$/g;
         return param1.replace(_loc2_,"");
      }
      
      public function o8525(param1:KeyboardEvent, param2:String, param3:Boolean = false) : Boolean
      {
         var _loc5_:* = null;
         var _loc4_:Boolean = false;
         if(param1.keyCode == 16)
         {
            _loc4_ = true;
         }
         if(param1.keyCode == 13)
         {
            if(param3 == false && this.o8478 == false)
            {
               this.o16489();
               return true;
            }
            if(param3 == false)
            {
               this.close();
            }
            if(param3 && this.o8478 == false)
            {
               this.o16489();
            }
            if(!this.o6361)
            {
               _loc5_ = this.o1800();
               _loc5_ = o6590(_loc5_);
               _loc5_ = _loc5_.replace("\n","");
               if(_loc5_.length > 0)
               {
                  if(this.o1677)
                  {
                     o8110("Your opponent has muted you.");
                  }
                  else
                  {
                     _loc5_ = o5343.o16306(_loc5_);
                     o8110(_loc5_);
                     o10778.text = "";
                     return false;
                  }
               }
               o10778.text = "";
            }
         }
         if(param3 == false && param1.keyCode == 27)
         {
            if(this.o8478)
            {
               this.close();
            }
         }
         return false;
      }
      
      public function o8110(param1:String) : void
      {
      }
   }
}
