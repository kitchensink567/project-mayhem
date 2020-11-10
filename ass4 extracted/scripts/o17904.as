package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Timer;
   
   public class o17904 extends o16681
   {
       
      
      private var o9679:o20565;
      
      private var o16142:Vector.<o1674>;
      
      private var o14635:Vector.<o1674>;
      
      private var o20132:o1674;
      
      public var o6871:o12290;
      
      private var o15857:MovieClip;
      
      private var o11230:Timer;
      
      private var o44:Timer;
      
      private var o5799:int = 0;
      
      private var o1857:Number = 1;
      
      private var o7710:Array;
      
      private var o12514:Boolean = false;
      
      private var o17032:int = 0;
      
      private var o3486:Boolean = false;
      
      public var o6353:Function;
      
      private var o17772:Boolean = false;
      
      private var o5315:int = -1;
      
      public function o17904()
      {
         o16142 = new Vector.<o1674>();
         o14635 = new Vector.<o1674>();
         super();
      }
      
      override protected function o343(param1:Event) : void
      {
         super.o343(param1);
         asset.addEventListener("enterFrame",o6662,false,0,true);
      }
      
      public function o4793() : void
      {
         if(o11230 != null)
         {
            o11230.stop();
         }
         if(o44 != null)
         {
            o44.stop();
         }
      }
      
      public function o12392() : void
      {
         if(o11230 != null)
         {
            o11230.start();
         }
         if(o44 != null)
         {
            o44.start();
         }
      }
      
      public function o16384(param1:MovieClip, param2:Boolean) : void
      {
         super.init(param1);
         o9679 = new o20565(this);
         param1.stop();
         param1.visible = false;
         o6871 = o9679.o15961("btnMessage","Test");
         o6871.addEventListener("click",o4381,false,0,true);
         o15857 = param1.getChildByName("portait") as MovieClip;
         o15857.gotoAndStop(1);
         o11230 = new Timer(1000);
         o11230.addEventListener("timer",o2377,false,0,true);
         if(o17772)
         {
            o44 = new Timer(1000);
            o44.addEventListener("timer",o13604,false,0,true);
         }
      }
      
      private function o289() : void
      {
         var _loc1_:String = "";
         var _loc4_:int = 0;
         var _loc3_:* = this.o16142;
         for each(var _loc2_ in this.o16142)
         {
            _loc1_ = _loc1_ + ("* " + _loc2_.o1216 + "\n");
         }
      }
      
      private function o13604(param1:Event) : void
      {
         if(o20132 == null)
         {
            return;
         }
         if(o5799 >= o7710.length)
         {
            return;
         }
         if(o5799 != 0)
         {
            o6871.o13586 = o6871.o13586 + " ";
         }
         o6871.o13586 = o6871.o13586 + this.o7710[o5799];
         o5799 = Number(o5799) + 1;
      }
      
      private function o7337(param1:Event) : void
      {
         o12514 = false;
         asset.stop();
         if(o3486)
         {
            o3486 = false;
            o15691();
         }
      }
      
      private function o13603(param1:Event) : void
      {
         o12514 = false;
         asset.stop();
         asset.visible = false;
         if(o3486)
         {
            o3486 = false;
            o15691();
         }
         if(o6353 != null)
         {
            o6353();
         }
      }
      
      public function o4381(param1:MouseEvent) : void
      {
         if(this.o10749())
         {
            return;
         }
         o2377(null);
      }
      
      override public function o13640() : void
      {
         if(o11230 != null)
         {
            o11230.stop();
            o11230.removeEventListener("timer",o2377);
         }
         if(o44 != null)
         {
            o44.stop();
            o44.removeEventListener("timer",o13604);
         }
         o6871.removeEventListener("click",o4381);
         if(asset != null)
         {
            asset.removeEventListener("enterFrame",o6662);
         }
         o9679.o13640();
         o9679 = null;
         o16142 = null;
         o14635 = null;
         o20132 = null;
         o6871 = null;
         o15857 = null;
         o11230 = null;
         o44 = null;
         o5799 = 0;
         o1857 = 0;
         o7710 = null;
         o12514 = false;
         o17032 = 0;
         o3486 = false;
         o6353 = null;
         super.o13640();
      }
      
      public function o7047(param1:int, param2:String, param3:Function, param4:Function, param5:Number) : void
      {
         var _loc6_:o1674 = new o1674(param1,param2,param3,param4,param5);
         o14635.push(_loc6_);
      }
      
      protected function o16875() : void
      {
      }
      
      protected function o8544() : void
      {
      }
      
      protected function o20067() : void
      {
      }
      
      public function o15691() : void
      {
         var _loc1_:* = null;
         if(o12514 || this.o10749())
         {
            o3486 = true;
            return;
         }
         if(o11230.running == false)
         {
            if(o20132 != null)
            {
               o16142.push(o20132);
               o289();
               if(o17772)
               {
                  o44.stop();
               }
               o11230.stop();
               _loc1_ = o20132.o5268;
               o20132.o13640();
               o20132 = null;
               if(_loc1_ != null)
               {
                  _loc1_();
               }
               if(o14635.length == 0)
               {
                  o12514 = true;
                  asset.gotoAndPlay("Out");
                  o8544();
                  return;
               }
            }
            else
            {
               if(o14635.length == 0)
               {
                  return;
               }
               asset.visible = true;
               o12514 = true;
               asset.gotoAndPlay("Intro");
               o16875();
            }
            if(o14635.length <= 0)
            {
               return;
            }
            o20067();
            o20132 = o14635[0];
            if(o17772)
            {
               o7710 = o20132.o1216.split(" ");
            }
            o14635.splice(0,1);
            o6871.o13586 = "";
            o11230.delay = (o20132.o4312 + 0.5) * 1000;
            o15857.gotoAndStop(o20132.o3700);
            o5799 = 0;
            if(o17772)
            {
               o44.delay = 50;
               o44.start();
            }
            else
            {
               o6871.o13586 = o20132.o1216;
            }
            o11230.start();
            if(o20132.o15258 != null)
            {
               o20132.o15258();
               o20132.o15258 = null;
            }
         }
      }
      
      private function o2377(param1:Event) : void
      {
         o11230.stop();
         if(o17772)
         {
            o44.stop();
         }
         o5799 = 0;
         o15691();
      }
      
      public function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         var _loc2_:int = asset.currentFrame;
         if(_loc2_ != o5315)
         {
            if(asset.currentFrameLabel == "CombotInComplete")
            {
               o7337(null);
            }
            else if(asset.currentFrameLabel == "CombotOutComplete")
            {
               o13603(null);
            }
         }
         o5315 = _loc2_;
      }
   }
}
