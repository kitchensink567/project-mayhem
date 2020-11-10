package
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Timer;
   
   public class o16236 extends EventDispatcher
   {
      
      public static var o5815:String = "promotionImageRefreshed";
      
      public static var o6593:String = "promotionDataRefreshed";
       
      
      private var o330:o15787;
      
      private var o5516:o15787;
      
      public var o5351:Vector.<int>;
      
      private var o12884:Vector.<String>;
      
      private var o7028:Vector.<Bitmap>;
      
      private var o7951:int = 0;
      
      private var o20027:Timer;
      
      private const o5744:int = 5000;
      
      private var o12864:Vector.<Loader>;
      
      private var o4965:Timer;
      
      public var o4972:Bitmap = null;
      
      public var o3296:Bitmap = null;
      
      private var o178:Function;
      
      public var o14670:Bitmap = null;
      
      private var o19362:String;
      
      public function o16236()
      {
         o330 = new o15787(1);
         o5516 = new o15787(1);
         o5351 = new Vector.<int>();
         o12884 = new Vector.<String>();
         o7028 = new Vector.<Bitmap>();
         o12864 = new Vector.<Loader>();
         o19362 = o2555.o17203("assets.nkstatic.com/Games/gameswfs/sas4/download/banners/MajorUpdates.jpg");
         super();
         o20027 = new Timer(5000);
         o20027.addEventListener("timer",o9099);
      }
      
      public function o12728(param1:int) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o5351;
         for each(var _loc2_ in o5351)
         {
            if(param1 == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o19826(param1:int) : o12394
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(var _loc5_ in _loc2_)
         {
            if(_loc5_.o5897.o13779)
            {
               if(_loc5_.type == 4)
               {
                  _loc4_ = _loc5_ as o12394;
                  if(_loc4_.o19446 == param1 && _loc4_.o9470)
                  {
                     return _loc4_;
                  }
               }
               else if(_loc5_.type == 4)
               {
                  _loc3_ = _loc5_ as o18422;
                  if(_loc3_.o16273 == param1 && _loc3_.o9470)
                  {
                     return new o12394(_loc3_.o5897,_loc3_.o16273,_loc3_.o9470,_loc3_.o4018);
                  }
               }
            }
         }
         return null;
      }
      
      public function o4188() : o18422
      {
         var _loc1_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc4_:int = 0;
         var _loc3_:* = _loc1_;
         for each(var _loc2_ in _loc1_)
         {
            if(_loc2_.o5897.o13779 && _loc2_ is o18422)
            {
               return _loc2_ as o18422;
            }
         }
         return null;
      }
      
      public function o13543() : int
      {
         var _loc2_:* = null;
         var _loc1_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc5_:int = 0;
         var _loc4_:* = _loc1_;
         for each(var _loc3_ in _loc1_)
         {
            if(_loc3_.o5897.o13779)
            {
               if(_loc3_.type == 4)
               {
                  _loc2_ = _loc3_ as o12394;
                  if(_loc2_.o9470)
                  {
                     return _loc2_.o5897.o5337() / 1000;
                  }
               }
            }
         }
         return -1;
      }
      
      public function get o18744() : Bitmap
      {
         if(o7028 == null || o7951 >= o7028.length)
         {
            return null;
         }
         return o7028[o7951];
      }
      
      public function get o8128() : Number
      {
         return o330.value;
      }
      
      public function get o10833() : Number
      {
         return o5516.value;
      }
      
      private function o10336(param1:Event) : void
      {
         o4519.o8116.o4392().defer(o15761);
      }
      
      private function o15761(param1:o16062) : void
      {
         o4519.o8116.o476 = param1;
         this.o840();
      }
      
      private function o9099(param1:Event) : void
      {
         if(o7028 == null || o7028.length == 0)
         {
            return;
         }
         o7951 = Number(o7951) + 1;
         if(o7951 >= o7028.length)
         {
            o7951 = 0;
         }
         dispatchEvent(new Event(o5815));
      }
      
      private function o16856(param1:Event) : void
      {
         trace("Load promotion image error");
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o4519.stage.removeChild(_loc2_.loader);
         dispatchEvent(new Event(o5815));
      }
      
      private function o16706(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         var _loc3_:Bitmap = Bitmap(_loc2_.loader.content);
         o7028.push(_loc3_);
         o4519.stage.removeChild(_loc2_.loader);
         if(o7028.length == o12884.length)
         {
            o12864 = null;
            o7951 = 0;
            dispatchEvent(new Event(o5815));
            if(o7028.length > 1)
            {
               o20027.start();
            }
            else
            {
               o20027.stop();
            }
         }
      }
      
      private function o8108(param1:String) : void
      {
         var _loc2_:Loader = new Loader();
         o4519.stage.addChild(_loc2_);
         _loc2_.contentLoaderInfo.addEventListener("complete",o16706);
         _loc2_.contentLoaderInfo.addEventListener("ioError",o16856);
         var _loc3_:LoaderContext = new LoaderContext();
         _loc3_.checkPolicyFile = true;
         _loc2_.load(new URLRequest(param1),_loc3_);
      }
      
      private function o9597(param1:String) : void
      {
         var _loc2_:Loader = new Loader();
         o4519.stage.addChild(_loc2_);
         _loc2_.contentLoaderInfo.addEventListener("complete",o3188);
         _loc2_.contentLoaderInfo.addEventListener("ioError",o10536);
         var _loc3_:LoaderContext = new LoaderContext();
         _loc3_.checkPolicyFile = true;
         _loc2_.load(new URLRequest(param1),_loc3_);
      }
      
      public function o20781() : void
      {
         var _loc3_:String = o19362 + "?v=_" + o9609.o6223().o20861;
         if(_loc3_ == null)
         {
            §§push(o178(null));
            return;
         }
         var _loc1_:Loader = new Loader();
         o4519.stage.addChild(_loc1_);
         _loc1_.contentLoaderInfo.addEventListener("complete",o1947);
         _loc1_.contentLoaderInfo.addEventListener("ioError",o13675);
         var _loc2_:LoaderContext = new LoaderContext();
         _loc2_.checkPolicyFile = true;
         _loc1_.load(new URLRequest(_loc3_),_loc2_);
      }
      
      private function o1947(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o14670 = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(_loc2_.loader);
         var _loc3_:String = o4519.o8116.o476.o15026.o16144;
         if(_loc3_ == null)
         {
            o178(null);
         }
         else
         {
            o9597(_loc3_);
         }
      }
      
      private function o13675(param1:Event) : void
      {
         trace("Load major changes promotion image error");
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o4519.stage.removeChild(_loc2_.loader);
      }
      
      public function o5846(param1:Function) : void
      {
         var _loc4_:String = o4519.o8116.o476.o15026.o606;
         if(_loc4_ == null)
         {
            §§push(param1(null));
            return;
         }
         this.o178 = param1;
         var _loc2_:Loader = new Loader();
         o4519.stage.addChild(_loc2_);
         _loc2_.contentLoaderInfo.addEventListener("complete",o16549);
         _loc2_.contentLoaderInfo.addEventListener("ioError",o10536);
         var _loc3_:LoaderContext = new LoaderContext();
         _loc3_.checkPolicyFile = true;
         _loc2_.load(new URLRequest(_loc4_),_loc3_);
      }
      
      private function o10536(param1:Event) : void
      {
         trace("Load mobile promotion image error");
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o4519.stage.removeChild(_loc2_.loader);
      }
      
      private function o3188(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o4972 = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(_loc2_.loader);
      }
      
      private function o16549(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         _loc2_.removeEventListener("complete",o16706);
         _loc2_.removeEventListener("ioError",o16856);
         o3296 = Bitmap(_loc2_.loader.content);
         o4519.stage.removeChild(_loc2_.loader);
         o20781();
      }
      
      public function o840() : void
      {
         o5351 = new Vector.<int>();
         o5516.value = 1;
         o330.value = 1;
         o12884 = new Vector.<String>();
         o7028 = new Vector.<Bitmap>();
         o7951 = 0;
         o6476();
      }
      
      private function o6476() : void
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:Vector.<o6882> = o4519.o8116.o476.o14399;
         var _loc10_:int = 0;
         var _loc9_:* = _loc1_;
         for each(var _loc6_ in _loc1_)
         {
            if(_loc6_.o5897.o13779)
            {
               if(_loc6_.type == 4)
               {
                  _loc5_ = _loc6_ as o12394;
                  if(_loc5_.o9470)
                  {
                     o5351.push(_loc5_.o19446);
                  }
               }
               else if(_loc6_.type == 6)
               {
                  _loc4_ = _loc6_ as o18422;
                  if(_loc4_.o16273 != -1)
                  {
                     o5351.push(_loc4_.o16273);
                  }
                  if(_loc4_.o17007 != -1)
                  {
                     o5351.push(_loc4_.o17007);
                  }
                  if(_loc4_.o7547 != -1)
                  {
                     o5351.push(_loc4_.o7547);
                  }
               }
               else if(_loc6_.type == 3)
               {
                  _loc2_ = _loc6_ as o8095;
                  o5516.value = _loc2_.o19253;
               }
               else if(_loc6_.type == 1)
               {
                  _loc3_ = _loc6_ as o8095;
                  o330.value = _loc3_.o19253;
               }
            }
         }
         o12884 = new Vector.<String>();
         o7028 = new Vector.<Bitmap>();
         o7951 = 0;
         o12864 = new Vector.<Loader>();
         var _loc12_:int = 0;
         var _loc11_:* = o4519.o8116.o476.o2416;
         for each(var _loc7_ in o4519.o8116.o476.o2416)
         {
            if(_loc7_.o5897.o13779)
            {
               o12884.push(_loc7_.url);
            }
         }
         var _loc14_:int = 0;
         var _loc13_:* = o12884;
         for each(var _loc8_ in o12884)
         {
            o8108(_loc8_);
         }
         dispatchEvent(new Event(o6593));
      }
   }
}
