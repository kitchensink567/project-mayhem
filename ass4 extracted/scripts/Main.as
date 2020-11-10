package
{
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.LocalConnection;
   import flash.system.Worker;
   import flash.text.TextField;
   
   public class Main extends Sprite
   {
      
      public static var o15767:Boolean = false;
      
      public static var stage:Stage;
      
      public static var o18987:o14774;
       
      
      private var o13111:LocalConnection;
      
      public function Main()
      {
         super();
         o15767 = Worker.isSupported;
         addEventListener("addedToStage",o3602);
      }
      
      public function o3602(param1:Event) : void
      {
         var _loc2_:* = null;
         Main.stage = this.stage;
         StandardStuff.showSplash(this,o12497,800);
      }
      
      private function o4464() : void
      {
         o18987 = new o14774();
         o18987.o8858(this,this.loaderInfo);
         stage.tabChildren = false;
         stage.frameRate = 30;
         stage.addEventListener("rightClick",function(param1:MouseEvent):void
         {
         });
         var o20924:Sprite = new Sprite();
         addChild(o20924);
         var o19417:o8537 = new o8537();
         addChild(o19417);
         var sas4:o4519 = new o4519(o19417);
         addChild(sas4);
      }
      
      private function o12497() : void
      {
         o4464();
      }
      
      private function o13275(param1:Event) : void
      {
      }
   }
}
