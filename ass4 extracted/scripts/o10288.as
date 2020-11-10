package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o10288 extends o731
   {
       
      
      private var o154:Function;
      
      private var o16362:Function;
      
      private var o83:String = null;
      
      public function o10288()
      {
         super();
      }
      
      protected function get o4715() : String
      {
         return "In";
      }
      
      protected function get o12794() : String
      {
         return "Out";
      }
      
      protected function get o13116() : String
      {
         return "InComplete";
      }
      
      protected function get o7426() : String
      {
         return "OutComplete";
      }
      
      protected function get o7233() : String
      {
         return "InComplete";
      }
      
      protected function get o10614() : String
      {
         return "OutComplete";
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.asset.addEventListener(o7233,o10864,false,0,true);
         this.asset.addEventListener(o10614,o4379,false,0,true);
         param1.addEventListener("enterFrame",o6662,false,0,true);
      }
      
      private function o10864(param1:Event) : void
      {
         if(param1 != null)
         {
            throw new Error("Need to remove all dispatchEvent\'s from swc");
         }
         this.o12514 = false;
         asset.stop();
         if(o154 != null)
         {
            o154();
         }
      }
      
      private function o4379(param1:Event) : void
      {
         if(param1 != null)
         {
            throw new Error("Need to remove all dispatchEvent\'s from swc");
         }
         this.o12514 = false;
         asset.stop();
         if(o16362 != null)
         {
            o16362();
         }
         asset.visible = false;
      }
      
      override public function o13640() : void
      {
         asset.removeEventListener("enterFrame",o6662);
         this.asset.removeEventListener(o7233,o10864);
         this.asset.removeEventListener(o10614,o4379);
         o154 = null;
         o16362 = null;
         o83 = null;
         super.o13640();
      }
      
      public function o9072(param1:Function) : void
      {
         this.visible = true;
         this.o12514 = true;
         this.o154 = param1;
         this.asset.gotoAndPlay(o4715);
      }
      
      public function close(param1:Function) : void
      {
         this.o12514 = true;
         this.o16362 = param1;
         this.asset.gotoAndPlay(o12794);
      }
      
      private function o6662(param1:Event) : void
      {
         if(asset == null)
         {
            return;
         }
         if(o83 != asset.currentFrameLabel)
         {
            if(asset.currentFrameLabel == o13116)
            {
               o10864(null);
            }
            else if(asset.currentFrameLabel == o7426)
            {
               o4379(null);
            }
            o83 = asset == null?null:asset.currentFrameLabel;
         }
      }
   }
}
