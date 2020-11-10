package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class o12329 extends Sprite implements o12600
   {
       
      
      private var o3646:Sprite = null;
      
      private var o3764:Sprite = null;
      
      private var o15673:TextField = null;
      
      private var log:String;
      
      private var o17659:String;
      
      private var o13986:int = 400;
      
      private var o2154:o12600;
      
      public function o12329()
      {
         log = "";
         o17659 = "";
         o2154 = Mem.create(this,o8023);
         super();
         o3646 = Mem.create(this,Sprite);
         o3764 = Mem.create(this,Sprite);
         o15673 = Mem.create(this,TextField);
         visible = false;
         var _loc1_:TextFormat = Mem.create(this,TextFormat);
         _loc1_.color = 16777215;
         _loc1_.size = 15;
         o15673.defaultTextFormat = _loc1_;
         o15673.autoSize = "left";
         addEventListener("addedToStage",o3602);
      }
      
      public function o14013(param1:String) : void
      {
         if(log != "")
         {
            log = log + "\n";
         }
         log = log + param1;
      }
      
      private function o3602(param1:Event) : void
      {
         o12568 = param1;
         addChild(o3764);
         addChild(o15673);
         addChild(o3646);
         mask = o3646;
         stage.addEventListener("resize",o14115);
         removeEventListener("addedToStage",o3602);
         o14115(null);
      }
      
      private function o20303(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 8)
         {
            if(o17659.length > 0)
            {
               o17659 = o17659.substr(0,o17659.length - 1);
            }
         }
         else if(param1.keyCode == 13)
         {
            if(o17659 == "clear" || o17659 == "c")
            {
               log = "";
            }
            else
            {
               o14013(o17659);
               dispatchData(Mem.create(this,o17655,[o17659]));
            }
            o17659 = "";
         }
         else if(param1.keyCode == 38)
         {
            if(o15673.height > o13986)
            {
               o15673.y = o15673.y + 5;
               if(o15673.y > 0)
               {
                  o15673.y = 0;
               }
            }
         }
         else if(param1.keyCode == 40)
         {
            if(o15673.height > o13986)
            {
               o15673.y = o15673.y - 5;
               if(o15673.y < -o15673.height + o13986)
               {
                  o15673.y = -o15673.height + o13986;
               }
            }
         }
         else if(param1.charCode >= 32 && param1.charCode <= 126 && param1.keyCode != 192)
         {
            o17659 = o17659 + String.fromCharCode(param1.charCode);
         }
         if(param1.keyCode != 38 && param1.keyCode != 40)
         {
            o14115(null);
         }
      }
      
      private function o14115(param1:Event) : void
      {
         var _loc2_:String = "";
         if(log != "")
         {
            _loc2_ = _loc2_ + (log.split("<").join("&lt;").split(">").join("&gt;") + "\n");
         }
         _loc2_ = _loc2_ + ("<font color=\"#FF0000\">" + o17659.split("<").join("&lt;").split(">").join("&gt;") + " " + "</font>");
         o15673.htmlText = _loc2_;
         o15673.width = stage.stageWidth;
         if(o15673.height > o13986)
         {
            o15673.y = -(o15673.height - o13986);
         }
         else
         {
            o15673.y = 0;
         }
         o3764.graphics.clear();
         o3764.graphics.beginFill(3342336,0.8);
         o3764.graphics.drawRect(0,0,stage.stageWidth,Math.min(o15673.height,o13986));
         o3764.graphics.endFill();
         o3646.graphics.clear();
         o3646.graphics.beginFill(0);
         o3646.graphics.drawRect(0,0,o3764.width,o3764.height);
         o3646.graphics.endFill();
      }
      
      public function o15777(param1:int) : void
      {
         o2154.o15777(param1);
      }
      
      public function dispatchData(param1:Event) : void
      {
         o2154.dispatchData(param1);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o16280(param1,param2,param3);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o19926(param1,param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         o2154.o12657(param1,param2);
      }
      
      public function o8289() : Boolean
      {
         return o2154.o8289();
      }
      
      public function o19115() : void
      {
         o2154.o19115();
      }
   }
}
