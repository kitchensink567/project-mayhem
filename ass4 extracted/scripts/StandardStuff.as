package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.System;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.ByteArray;
   import ninjakiwi.utils.StandardKode;
   
   public class StandardStuff
   {
      
      private static var o6730:EventDispatcher = new EventDispatcher();
      
      private static var o7009:Function;
      
      private static var o3158:StandardKode;
      
      private static var o10604:DisplayObjectContainer;
      
      private static var o10484:Number;
      
      private static var o1754:ApplicationDomain;
      
      private static var o2383:Loader;
      
      private static const o8897:Class = kodeKode_txt$797d6d93d7143d44a0ed2751100d37f11531742154;
      
      private static const o8302:String = new o8897();
      
      private static var o12830:Array = [];
      
      private static var o6377:Array = [];
       
      
      public function StandardStuff()
      {
         super();
      }
      
      public static function showSplash(param1:DisplayObjectContainer, param2:Function, param3:Number = 0) : void
      {
         if(param1 == null)
         {
            throw new UninitializedError("showSplash null error",666);
         }
         o7009 = param2;
         o6730.addEventListener("init",o10594);
         o16616(param1,param3);
         var _loc4_:MovieClip = new MovieClip();
         StandardStuff.setClick(_loc4_,o5553);
      }
      
      public static function o5553(param1:MouseEvent) : void
      {
      }
      
      public static function o2541(param1:DisplayObjectContainer = null) : ContextMenu
      {
         o1831 = param1;
         var o12727:ContextMenu = new ContextMenu();
         var o15224:ContextMenuItem = new ContextMenuItem(o3011.o17649 + " by Ninja Kiwi");
         var o1999:ContextMenuItem = new ContextMenuItem("? " + o3011.o12651 + " Kaiparasoft Ltd");
         var version:ContextMenuItem = new ContextMenuItem(o3011.o12006,true);
         var help:ContextMenuItem = new ContextMenuItem("(click to copy)");
         help.enabled = false;
         version.addEventListener("menuItemSelect",function(param1:ContextMenuEvent):void
         {
            try
            {
               System.setClipboard(o3011.o12006);
               return;
            }
            catch(o7367:Error)
            {
               return;
            }
         });
         o12727.hideBuiltInItems();
         o12727.customItems.push(o15224,o1999,version,help);
         if(o1831 != null)
         {
            o1831.contextMenu = o12727;
         }
         return o12727;
      }
      
      public static function setUpdate(param1:Function, param2:Boolean = true) : void
      {
         o7658 = param1;
         add = param2;
         if(o3158 != null)
         {
            o3158.setUpdate(o7658,add);
         }
         else
         {
            o12830.push(function():void
            {
               o3158.setUpdate(o7658,add);
            });
         }
      }
      
      public static function setClick(param1:EventDispatcher, param2:Function, param3:Boolean = true) : void
      {
         symbol = param1;
         o13275 = param2;
         add = param3;
         if(o3158 != null)
         {
            o3158.setClick(symbol,o13275,add);
         }
         else
         {
            o6377.push(function():void
            {
               o3158.setClick(symbol,o13275,add);
            });
         }
      }
      
      private static function o10594(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc3_:* = null;
         o6730.removeEventListener("init",o10594);
         o3158.addEventListener("complete",o839);
         o3158.showSplash();
         _loc2_ = Main.stage.numChildren;
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = Main.stage.getChildAt(_loc4_);
            if(_loc5_ is DisplayObjectContainer)
            {
               _loc3_ = _loc5_ as DisplayObjectContainer;
               _loc3_.mouseEnabled = false;
               _loc3_.mouseChildren = false;
            }
            _loc4_++;
         }
      }
      
      private static function o839(param1:Event) : void
      {
         o3158.removeEventListener("complete",o839);
         if(o7009 != null)
         {
            o7009();
         }
      }
      
      private static function o16616(param1:DisplayObjectContainer, param2:Number = 0) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(o3158 != null && o10604 == param1)
         {
            o6730.dispatchEvent(new Event("init"));
         }
         else
         {
            o10604 = param1;
            o10604.root.addEventListener("allComplete",o14133);
            o10484 = param2;
            _loc3_ = o16112.o19437(o8302);
            _loc3_.uncompress();
            o1754 = new ApplicationDomain(ApplicationDomain.currentDomain);
            o2383 = new Loader();
            o2383.contentLoaderInfo.addEventListener("complete",o14114);
            o2383.contentLoaderInfo.addEventListener("ioError",o5765);
            _loc4_ = new LoaderContext(false,o1754);
            o2383.loadBytes(_loc3_,_loc4_);
         }
      }
      
      private static function o14114(param1:Event) : void
      {
         var _loc2_:Class = o1754.getDefinition("ninjakiwi.utils.NinjaKode") as Class;
         if(o10484 > 0)
         {
            o3158 = new _loc2_(o10604,o10484);
         }
         else
         {
            o3158 = new _loc2_(o10604);
         }
         o8339("kode : " + o3158);
         o8339("kodeClass : " + _loc2_);
         var _loc5_:int = 0;
         var _loc4_:* = o12830.concat(o6377);
         for each(var _loc3_ in o12830.concat(o6377))
         {
            _loc3_();
         }
         o6730.dispatchEvent(new Event("init"));
      }
      
      private static function o5765(param1:IOErrorEvent) : void
      {
         o8339("couldn\'t load kode : " + param1.text);
         throw param1;
      }
      
      private static function o14133(param1:Event) : void
      {
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         o6730.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         o6730.removeEventListener(param1,param2,param3);
      }
      
      public static function o1326(param1:Event = null) : void
      {
      }
   }
}
