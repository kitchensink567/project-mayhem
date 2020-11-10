package
{
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o20211 extends o8023 implements o7118
   {
       
      
      private var o2147:Vector.<ApplicationDomain> = null;
      
      private var o6672:Vector.<String> = null;
      
      private var o6136:Vector.<String> = null;
      
      private var o17204:Vector.<String> = null;
      
      private var o3670:o3135 = null;
      
      private var o9122:Dictionary = null;
      
      private var o14720:Dictionary = null;
      
      public function o20211()
      {
         super();
      }
      
      public function initialise(param1:o3135, param2:Dictionary) : void
      {
         this.o3670 = param1;
         this.o9122 = param2;
         o2147 = Mem.create(this,Vector.<ApplicationDomain>) as Vector.<ApplicationDomain>;
         o6672 = Mem.create(this,Vector.<String>) as Vector.<String>;
         o6136 = Mem.create(this,Vector.<String>) as Vector.<String>;
         o17204 = Mem.create(this,Vector.<String>) as Vector.<String>;
         o14720 = Mem.create(this,Dictionary) as Dictionary;
         o2147.push(ApplicationDomain.currentDomain);
      }
      
      public function o7395(param1:String, param2:Boolean = false) : void
      {
         o1337 = param1;
         o20957 = param2;
         if(o6136.indexOf(o1337) != -1)
         {
            if(!o20957)
            {
               return;
            }
            o6136.splice(o6136.indexOf(o1337),1);
         }
         o6136.push(o1337);
         var o12568:o15826 = Mem.create(this,o15826) as o15826;
         o12568.initialise(o1337);
         dispatchData(o12568);
         var o17426:o16124 = o3670.o17485(o1337);
         o17426.defer(function():void
         {
            var _loc1_:* = null;
            var _loc3_:Loader = Mem.create(this,Loader) as Loader;
            var _loc2_:ByteArray = Mem.create(this,ByteArray) as ByteArray;
            _loc2_.writeBytes(o17426.data);
            try
            {
               _loc3_.loadBytes(_loc2_);
               _loc3_.contentLoaderInfo.addEventListener("complete",o17064,false,0,true);
               o3670.o7245(o1337);
               return;
            }
            catch(o19631:Error)
            {
               _loc1_ = o1337 == null?"null":o1337.substring(o1337.lastIndexOf("/") + 1);
               throw new Error("addLibrary error: " + _loc1_);
            }
         });
      }
      
      public function o11690(param1:String) : o16124
      {
         id = param1;
         if(id == null)
         {
            throw new Error("getAsset() / null");
         }
         if(o14720[id] != null)
         {
            return o14720[id];
         }
         var promise:o16124 = Mem.create(this,o16124) as o16124;
         o14720[id] = promise;
         o16280(this,o11719.o5422,function(param1:o17437):void
         {
            if(id == param1.id)
            {
               promise.data = param1.asset;
            }
         });
         o11358(id);
         return promise;
      }
      
      public function o11358(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         if(o6672.indexOf(param1) == -1)
         {
            o6672.push(param1);
         }
         var _loc8_:int = 0;
         var _loc7_:* = o2147;
         do
         {
            for each(var _loc3_ in o2147)
            {
               _loc4_ = null;
               try
               {
                  _loc4_ = _loc3_.getDefinition(param1) as Class;
               }
               catch(error:Error)
               {
               }
            }
            o17204.push(param1);
            if(o1626(param1) == null)
            {
               o8339("Can not find lib for: " + param1);
            }
            o7395(o1626(param1));
            return;
         }
         while(_loc4_ == null);
         
         _loc2_ = Mem.create(this,o17437) as o17437;
         _loc2_.initialise(_loc4_,param1);
         dispatchData(_loc2_);
      }
      
      private function o9428(param1:ProgressEvent) : void
      {
         o8339(param1.bytesLoaded / param1.bytesTotal);
      }
      
      private function o17064(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc4_:LoaderInfo = param1.target as LoaderInfo;
         var _loc8_:ApplicationDomain = _loc4_.applicationDomain;
         o2147.splice(0,0,_loc8_);
         var _loc10_:int = 0;
         var _loc9_:* = o6672;
         for each(var _loc7_ in o6672)
         {
            if(_loc8_.hasDefinition(_loc7_))
            {
               _loc3_ = Mem.create(this,o10338) as o10338;
               _loc3_.initialise(_loc7_);
               dispatchData(_loc3_);
            }
         }
         var _loc6_:Vector.<String> = Mem.create(this,Vector.<String>) as Vector.<String>;
         var _loc12_:int = 0;
         var _loc11_:* = o17204;
         for each(var _loc5_ in o17204)
         {
            if(_loc8_.hasDefinition(_loc5_))
            {
               o11358(_loc5_);
               _loc6_.push(_loc5_);
            }
         }
         var _loc14_:int = 0;
         var _loc13_:* = _loc6_;
         for each(var _loc2_ in _loc6_)
         {
            o17204.splice(o17204.indexOf(_loc2_),1);
         }
      }
      
      private function o1626(param1:String) : String
      {
         return o9122[param1];
      }
   }
}
