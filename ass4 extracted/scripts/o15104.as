package
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   
   public class o15104 extends o8535
   {
      
      public static const o10399:int = 1;
      
      public static const o16841:int = 2;
      
      public static const o3074:int = 3;
      
      public static const o3094:int = 4;
       
      
      public var o5917:int;
      
      private var o20939:Bitmap;
      
      private var o15411:String = null;
      
      private var o3130:String = null;
      
      private var o14975:Number;
      
      public var o12665:Number;
      
      private var o16388:Timer;
      
      public function o15104()
      {
         super();
      }
      
      public function get url() : String
      {
         return this.o15411;
      }
      
      override public function o13640() : void
      {
         if(o16388 != null)
         {
            o16388.removeEventListener("timer",o1467);
            o16388 = null;
         }
         o20939 = null;
         super.o13640();
      }
      
      private function o16706(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         if(this.asset == null)
         {
            o4519.stage.removeChild(_loc2_.loader);
            return;
         }
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o20939 = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(_loc2_.loader);
         this.o3700 = o20939;
      }
      
      private function o16856(param1:Event) : void
      {
         var _loc2_:* = null;
         if(o3130 == null)
         {
            _loc2_ = param1.currentTarget as LoaderInfo;
            _loc2_.removeEventListener("complete",o16706);
            _loc2_.removeEventListener("ioError",o16856);
            o4519.stage.removeChild(_loc2_.loader);
         }
         else
         {
            if(o16388)
            {
               o16388.stop;
               o16388.removeEventListener("timer",o1467);
            }
            o762(o5917,o3130,o14975);
         }
      }
      
      private function o1467(param1:Event) : void
      {
         if(o5917 == 1)
         {
            if(o14975 > 0)
            {
               this.o13586 = "Event ends in: " + o16724.o8717(o14975);
            }
            else
            {
               this.o13586 = "Event complete";
            }
         }
         else if(o5917 == 4)
         {
            if(o14975 > 0)
            {
               this.o13586 = "Championship ends in: " + o16724.o8717(o14975);
            }
            else
            {
               this.o13586 = "Championship complete";
            }
         }
         else if(o5917 == 2)
         {
            if(o14975 > 0)
            {
               this.o13586 = "Sale ends in: " + o16724.o8717(o14975);
            }
            else
            {
               this.o13586 = "Sale complete";
            }
         }
         o14975 = o14975 - 1000;
      }
      
      public function o762(param1:int, param2:String, param3:Number, param4:String = null, param5:int = 0) : void
      {
         this.o5917 = param1;
         this.o14975 = param3;
         this.o3130 = param4;
         this.o15411 = param2;
         this.o12665 = param5;
         if(param2 == null)
         {
            return;
         }
         var _loc6_:Loader = new Loader();
         o4519.stage.addChild(_loc6_);
         _loc6_.contentLoaderInfo.addEventListener("complete",o16706);
         _loc6_.contentLoaderInfo.addEventListener("ioError",o16856);
         var _loc7_:LoaderContext = new LoaderContext();
         _loc7_.checkPolicyFile = true;
         _loc6_.load(new URLRequest(o15411),_loc7_);
         this.o1258();
         if(param1 == 3)
         {
            this.o13586 = "";
         }
         else
         {
            o16388 = new Timer(1000);
            o16388.addEventListener("timer",o1467,false,0,true);
            o16388.start();
         }
         o1467(null);
      }
   }
}
