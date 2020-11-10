package
{
   import asset.KongGreyBarAsset;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.UncaughtErrorEvent;
   import flash.system.Security;
   
   public class o4519 extends MovieClip
   {
      
      public static var o9721:o14818 = null;
      
      public static var o32:o17517 = null;
      
      public static var o8116:o14754 = null;
      
      public static var o13206:o9602 = null;
      
      public static var o17061:Boolean = false;
      
      public static var kong:o4787 = null;
      
      public static var o19389:Sprite = new Sprite();
      
      public static var stage:Stage;
      
      public static var o10093:o12522;
       
      
      private var o19417:Scene = null;
      
      private var o20602:Boolean = false;
      
      private var o3129:Boolean = false;
      
      public var o585:o15472;
      
      public function o4519(param1:Scene)
      {
         super();
         Security.allowDomain("*");
         this.o19417 = param1;
         addEventListener("addedToStage",o4464);
      }
      
      public static function o16316(param1:UncaughtErrorEvent) : void
      {
         if(o10093 == null || o10093.o16989 == null)
         {
            throw new Error("UI not created yet: " + param1.toString());
         }
         o10093.o16989.o16316(param1);
      }
      
      public function o4464(param1:Event) : void
      {
         o12568 = param1;
         o14634.test();
         o4519.stage = stage;
         o17061 = stage.loaderInfo.parameters["isOnKong"] == null?false:stage.loaderInfo.parameters["isOnKong"];
         if("" == "KongTest")
         {
            o17061 = true;
         }
         o8116 = Mem.create(this,o14754,[stage,o19417]);
         o585 = new o15472();
         o585.init(this.stage);
         if(o17061)
         {
            HostIconMovieClip.gotoFrameIndex = 2;
         }
         else
         {
            HostIconMovieClip.gotoFrameIndex = 1;
         }
         if(o17061)
         {
            kong = new o4787();
            kong.init(stage);
         }
         if(o8116.o9745)
         {
            initialise();
         }
         else
         {
            o8116.o19926(null,o14795.o9745,function():void
            {
               initialise();
            });
         }
         removeEventListener("addedToStage",o4464);
      }
      
      private function o4219() : void
      {
         this.removeEventListener("enterFrame",o2576);
         o9602.o18645();
         o10093.o19419.o15894.load().defer(o15585);
      }
      
      public function o15585(param1:Object) : void
      {
         o10093.o19419.o5292.o12970.o5846(o11450);
      }
      
      private function o20482(param1:Object) : void
      {
         this.addEventListener("enterFrame",o2576,false,0,true);
         o4519.o8116.o9589.o15872(o4219);
      }
      
      private function o2576(param1:Event) : void
      {
         var _loc2_:Number = o4519.o8116.o9589.o7053.o10566();
         if(o585 != null)
         {
            o585.o3243(_loc2_);
         }
      }
      
      public function o11450(param1:Object) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = undefined;
         o4519.o8116.o9589.o16063();
         stage.addChild(o10093);
         o585.o13640();
         o585 = null;
         o10093.o3744();
         o10093.o1489 = 0;
         if(o4519.o17061)
         {
            _loc4_ = new KongGreyBarAsset();
            stage.addChild(_loc4_);
         }
         var _loc3_:int = o10093.o19419.data.o11400.length;
         o4519.o8116.profileData = o10093.o19419;
         if(o4519.o8116.profileData.o5292.o15863 == false)
         {
            _loc2_ = o20543.o7763();
            var _loc7_:int = 0;
            var _loc6_:* = _loc2_;
            for each(var _loc5_ in _loc2_)
            {
               o4519.o8116.profileData.o5292.o3911.o16665(_loc5_);
            }
         }
      }
      
      public function initialise() : void
      {
         stage.addChild(o19389);
         o19389.graphics.clear();
         o19389.graphics.beginFill(0,0);
         o19389.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
         o19389.graphics.endFill();
         stage.addEventListener("resize",function(param1:Event):void
         {
            o19389.graphics.clear();
            o19389.graphics.beginFill(0,0);
            o19389.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
            o19389.graphics.endFill();
         });
         o3129 = true;
         var o12387:int = 1008;
         if(stage.loaderInfo.parameters["map"] != null)
         {
            o12387 = stage.loaderInfo.parameters["map"];
            o20602 = true;
         }
         var o3271:Boolean = false;
         var version:String = this.loaderInfo.parameters["v"];
         if(version == null)
         {
            version = "NOT SET";
         }
         o10093 = new o12522(o20602,o3271,version);
         o13206 = new o9602();
         o10093.o19419.o202.o15222 = o12387;
         o10093.o19419.o15894.o13().defer(o20482);
      }
   }
}
