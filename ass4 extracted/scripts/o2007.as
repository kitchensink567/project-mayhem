package
{
   import avmplus.getQualifiedClassName;
   import flash.utils.Dictionary;
   
   public class o2007
   {
       
      
      public var o12810:Boolean = false;
      
      private var o19419:o14200;
      
      public var name:String;
      
      private var o15551:Dictionary;
      
      private var o20891:Dictionary;
      
      private var o3859:Dictionary;
      
      public var o20523:int;
      
      public var o5976:int;
      
      public var o8484:int;
      
      private var o6819:int = 0;
      
      private var o14558:int = 0;
      
      private var o5139:Vector.<String>;
      
      private var o15511:Vector.<String>;
      
      private var o17457:int = 0;
      
      private var o12939:int = 0;
      
      private var o7757:Boolean = true;
      
      private var o12890:Boolean = false;
      
      public var o14990:int = 1;
      
      private var o15756:int = 0;
      
      public var o724:Boolean;
      
      public var o4882:Function;
      
      private var o16300:int;
      
      public function o2007(param1:o14200, param2:String)
      {
         o15551 = new Dictionary();
         o20891 = new Dictionary();
         o3859 = new Dictionary();
         o5139 = new Vector.<String>();
         o15511 = new Vector.<String>();
         super();
         this.o19419 = param1;
         this.name = param2;
         o4519.o8116.loader.o16280(null,o718.o20522,o16066);
      }
      
      public function o541() : void
      {
         o4882 = null;
         o5139 = new Vector.<String>();
         o15511 = new Vector.<String>();
         o12890 = true;
      }
      
      private function o12018(param1:String) : int
      {
         var _loc2_:Dictionary = o4519.o8116.o4958.o9620;
         var _loc3_:int = o4519.o8116.o4958.o12018(param1);
         return _loc3_;
      }
      
      public function o13640() : void
      {
         o4519.o8116.loader.o12657(o718.o20522,o16066);
         o8339("Preloader complete: " + this.name + ": " + o16724.o20031(this.o5976 / 1024) + "KB, " + o16724.o20031(this.o5976 / 1024 / 1024) + "MB");
         o12810 = false;
         o19419 = null;
         name = null;
         o15551 = null;
         o20891 = null;
         o3859 = null;
         o20523 = 0;
         o5976 = 0;
         o8484 = 0;
         o6819 = 0;
         o14558 = 0;
         o5139 = null;
         o15511 = null;
         o17457 = 0;
         o12939 = 0;
         o7757 = false;
         o12890 = true;
         o14990 = 0;
         o15756 = 0;
         o724 = false;
         o4882 = null;
         o16300 = 0;
      }
      
      private function o15536() : int
      {
         return o5139.length - o17457;
      }
      
      private function o9386() : int
      {
         return o15511.length - o12939;
      }
      
      public function o10566() : Number
      {
         var _loc1_:* = 0;
         _loc1_ = Number(o8484 / o5976);
         return _loc1_;
      }
      
      private function o1404(param1:Class) : void
      {
         var _loc6_:* = null;
         if(o12890)
         {
            return;
         }
         var _loc2_:String = getQualifiedClassName(param1).replace("::",".");
         if(o7757)
         {
            _loc6_ = o5386(_loc2_);
         }
         else
         {
            _loc6_ = "scripts/" + o849(_loc2_);
         }
         var _loc4_:Number = o15551[_loc6_];
         o14558 = Number(o14558) + 1;
         o15551[_loc6_] = 1;
         var _loc3_:int = o3859[_loc6_];
         o8484 = o8484 - _loc3_;
         var _loc5_:int = o20891[_loc6_];
         o8484 = o8484 + _loc5_;
         if(o12810)
         {
            o8339("# loaded: " + _loc6_ + ", change(" + (_loc5_ - _loc3_) + "), bytesLoaded:" + _loc3_ + ", filesize:" + _loc5_ + ", totalLoadedBytes:" + o8484);
         }
         o15756 = Number(o15756) - 1;
         if(o15756 == 0)
         {
            o5356();
         }
      }
      
      public function o5356() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         var _loc4_:* = null;
         if(o12890)
         {
            return;
         }
         if(o15756 != 0)
         {
            return;
         }
         var _loc5_:int = o15536();
         var _loc2_:int = o9386();
         if(_loc5_ > 0)
         {
            o7757 = true;
            if(_loc5_ > o14990)
            {
               _loc5_ = o14990;
            }
            o15756 = _loc5_;
            if(o12810)
            {
               o8339("# asset pack");
            }
            _loc3_ = 0;
            while(_loc3_ < _loc5_)
            {
               _loc1_ = o5139[o17457];
               o17457 = Number(o17457) + 1;
               o4519.o8116.o1234.o11690(_loc1_).defer(o1404);
               _loc3_++;
            }
         }
         else if(_loc2_ > 0)
         {
            if(o12810)
            {
               o8339("# script pack");
            }
            o7757 = false;
            if(_loc2_ > o14990)
            {
               _loc2_ = o14990;
            }
            o15756 = _loc2_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = o15511[o12939];
               o12939 = Number(o12939) + 1;
               o4519.o8116.o19921(_loc4_).defer(o1404);
               _loc3_++;
            }
         }
         else
         {
            o8339(name + ": Total assets: " + this.o6819);
            this.o724 = true;
            if(o4882 != null)
            {
               o4882();
               o4882 = null;
            }
         }
      }
      
      private function o5386(param1:String) : String
      {
         var _loc5_:int = o4519.o8116.o5830.o787(param1);
         if(_loc5_ < 0)
         {
            throw new Error("Preloader: asset not found. " + param1);
         }
         var _loc3_:Dictionary = o4519.o8116.o9122;
         var _loc2_:int = _loc3_[_loc5_];
         var _loc4_:String = o4519.o8116.o7689.o9009(_loc2_);
         _loc4_ = "libs/" + _loc4_;
         _loc4_ = o15218(_loc4_);
         return _loc4_;
      }
      
      private function o16675(param1:String) : String
      {
         return "scripts/" + o849(param1);
      }
      
      public function o15716(param1:String) : void
      {
         o6819 = Number(o6819) + 1;
         var _loc3_:String = o5386(param1);
         o15551[_loc3_] = 0;
         var _loc2_:int = o12018(_loc3_);
         o5976 = o5976 + _loc2_;
         o20891[_loc3_] = _loc2_;
         o3859[_loc3_] = 0;
         o5139.push(param1);
      }
      
      private function o849(param1:String) : String
      {
         var _loc2_:String = "";
         var _loc3_:String = _loc2_ + param1.split(".").join("/") + ".swf";
         return _loc3_;
      }
      
      public function o5105(param1:String) : void
      {
         o6819 = Number(o6819) + 1;
         var _loc3_:String = o16675(param1);
         o15551[_loc3_] = 0;
         var _loc2_:int = o12018(_loc3_);
         o5976 = o5976 + _loc2_;
         o20891[_loc3_] = _loc2_;
         o3859[_loc3_] = 0;
         o15511.push(param1);
      }
      
      private function o15218(param1:String) : String
      {
         var _loc3_:int = 0;
         if(param1.indexOf(o4519.o8116.o7484) >= 0)
         {
            _loc3_ = o4519.o8116.o7484.length;
            param1 = param1.substr(_loc3_);
         }
         var _loc2_:int = param1.lastIndexOf("?");
         if(_loc2_ >= 0)
         {
            param1 = param1.substr(0,_loc2_);
         }
         return param1;
      }
      
      private function o16066(param1:o5279) : void
      {
         if(o12890)
         {
            return;
         }
         if(param1.url.indexOf(".swf") < 0)
         {
            return;
         }
         var _loc5_:String = o15218(param1.url);
         if(o15551[_loc5_] == null)
         {
            return;
         }
         o15551[_loc5_] = param1.o20522;
         var _loc3_:int = o3859[_loc5_];
         var _loc4_:int = this.o20891[_loc5_];
         var _loc2_:int = _loc4_ * param1.o20522;
         this.o8484 = o8484 - _loc3_ + _loc2_;
         o3859[_loc5_] = _loc2_;
      }
      
      public function o18016(param1:o8621) : void
      {
         var _loc11_:* = undefined;
         var _loc3_:int = 0;
         var _loc12_:* = null;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc9_:String = "Unknown error";
         var _loc6_:* = this;
         try
         {
            if(o12890)
            {
               return;
            }
            if(param1 == null)
            {
               _loc9_ = "mapDef is null";
            }
            else if(param1.o19298 == null)
            {
               _loc9_ = "mapDef.tiles is null";
            }
            _loc11_ = new Vector.<o8214>();
            var _loc17_:int = 0;
            var _loc16_:* = param1.o19298;
            loop0:
            for each(var _loc8_ in param1.o19298)
            {
               if(o12890)
               {
                  return;
               }
               _loc3_ = o4519.o8116.o9122[_loc8_.o10940];
               _loc12_ = o4519.o8116.o7689.o9009(_loc3_);
               if(_loc12_ == null)
               {
                  _loc9_ = "libName is null";
               }
               if(_loc12_.indexOf("EditorAssets.swf") < 0)
               {
                  _loc9_ = "unique check test";
                  _loc5_ = true;
                  var _loc15_:int = 0;
                  var _loc14_:* = _loc11_;
                  loop1:
                  while(true)
                  {
                     for each(var _loc10_ in _loc11_)
                     {
                        if(o12890)
                        {
                           break loop1;
                        }
                        if(_loc10_.o5868 == _loc3_)
                        {
                           _loc5_ = false;
                        }
                        else
                        {
                           continue loop1;
                        }
                     }
                     if(_loc5_)
                     {
                        _loc9_ = "unique add test";
                        _loc2_ = o4519.o8116.o5830.o9009(_loc8_.o10940);
                        _loc6_.o15716(_loc2_);
                        _loc11_.push(new o8214(_loc3_,_loc8_.o10940));
                     }
                     continue loop0;
                  }
                  return;
               }
            }
            _loc9_ = "add level assets";
            _loc4_ = o4519.o8116.profileData.o5292.o9177.o17565(param1.id);
            if(_loc4_ != null)
            {
               var _loc19_:int = 0;
               var _loc18_:* = _loc4_.o8530;
               for each(var _loc7_ in _loc4_.o8530)
               {
                  if(o12890)
                  {
                     return;
                  }
                  if(_loc7_ != null)
                  {
                     _loc6_.o15716(_loc7_);
                  }
               }
            }
            _loc9_ = "loadNextSet";
            _loc6_.o5356();
            return;
         }
         catch(o19631:Error)
         {
            throw new Error("preloadAllMapAssets error: " + _loc9_);
         }
      }
   }
}
