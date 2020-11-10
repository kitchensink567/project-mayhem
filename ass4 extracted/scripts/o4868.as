package
{
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class o4868
   {
       
      
      private var o11630:String = null;
      
      private var o7376:String = null;
      
      private var o19189:int = 0;
      
      private var o5897:o5072 = null;
      
      private var o10486:o14801 = null;
      
      public function o4868(param1:String, param2:String, param3:o5072, param4:int)
      {
         super();
         this.o11630 = param1;
         this.o7376 = param2;
         this.o5897 = param3;
         this.o19189 = param4;
      }
      
      public static function o5684(param1:String) : Dictionary
      {
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc4_:Dictionary = new Dictionary();
         if(param1 != null)
         {
            _loc2_ = param1;
            _loc6_ = _loc2_.split(",");
            var _loc8_:int = 0;
            var _loc7_:* = _loc6_;
            for each(var _loc5_ in _loc6_)
            {
               _loc3_ = _loc5_.split("#");
               _loc4_[parseInt(_loc3_[0])] = parseInt(_loc3_[1]);
            }
         }
         return _loc4_;
      }
      
      public static function o186(param1:Dictionary) : String
      {
         var _loc3_:String = "";
         var _loc2_:Boolean = true;
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for(var _loc4_ in param1)
         {
            if(_loc2_)
            {
               _loc2_ = false;
            }
            else
            {
               _loc3_ = _loc3_ + ",";
            }
            _loc3_ = _loc3_ + (_loc4_.toString() + "#" + (param1[_loc4_] as int).toString());
         }
         return _loc3_;
      }
      
      public function o7237() : Boolean
      {
         return o5897.o7237();
      }
      
      public function submitScore(param1:int, param2:String, param3:int, param4:int, param5:Dictionary) : o16124
      {
         value = param1;
         o3735 = param2;
         o115 = param3;
         o10344 = param4;
         o1727 = param5;
         var o11288:String = o115.toString() + ":" + o3735 + ":" + o186(o1727);
         var promise:o16124 = new o16124();
         if(!o5897.o13779)
         {
            promise.data = false;
            return promise;
         }
         o8613.o6543(o11630,o7376,value,o11288,o10344).defer(function(param1:Object):void
         {
            promise.data = true;
         });
         return promise;
      }
      
      public function o15694(param1:int, param2:o14801) : o16124
      {
         value = param1;
         o10486 = param2;
         var promise:o16124 = new o16124();
         if(!o5897.o13779)
         {
            promise.data = false;
            return promise;
         }
         this.o10486 = o10486;
         o8613.o6171(o7376,value).defer(function(param1:Object):void
         {
            if(o10486)
            {
               o10486.o19189 = 0;
            }
            o14200.o19505.saveData();
            promise.data = true;
         });
         return promise;
      }
      
      public function o9495(param1:int, param2:Boolean) : o16124
      {
         o6631 = param1;
         o4210 = param2;
         var promise:o16124 = new o16124();
         if(o4210 == false)
         {
            o6631 = Number(o6631) + 1;
         }
         var o20927:o16124 = !!o4210?o12652(o6631):o12318(o6631);
         var o17406:o16124 = o4244();
         o15714.o18684([o20927,o17406],function(param1:Array, param2:Array):void
         {
            var _loc6_:* = null;
            var _loc3_:int = 0;
            var _loc4_:Boolean = false;
            var _loc7_:Array = [];
            if(param2.length > 0)
            {
               param2 = param2.sort(o2448);
               _loc7_ = param2.slice(0,Math.min(param2.length,o6631));
               var _loc9_:int = 0;
               var _loc8_:* = _loc7_;
               for each(_loc6_ in _loc7_)
               {
                  _loc6_.o8367 = true;
               }
            }
            if(param1.length > 0 && _loc7_.length < o6631)
            {
               _loc3_ = o6631 - _loc7_.length;
               param1 = param1.sort(o2448);
               var _loc13_:int = 0;
               var _loc12_:* = param1;
               for each(var _loc5_ in param1)
               {
                  _loc4_ = false;
                  var _loc11_:int = 0;
                  var _loc10_:* = param2;
                  for each(_loc6_ in param2)
                  {
                     if(_loc5_.o11630 == _loc6_.o11630)
                     {
                        _loc4_ = true;
                        break;
                     }
                  }
                  if(_loc4_ == false && _loc7_.length < o6631)
                  {
                     _loc7_.push(_loc5_);
                  }
               }
            }
            if(_loc7_.length > o6631)
            {
               throw new Error("Too many scores?");
            }
            promise.data = _loc7_.sort(sort);
         });
         return promise;
      }
      
      public function o12318(param1:int) : o16124
      {
         o6631 = param1;
         var promise:o16124 = new o16124();
         o8613.o8903(o11630,o7376,o6631).defer(function(param1:Object):void
         {
            if(param1)
            {
               promise.data = o12599(param1["scores"],true);
            }
            else
            {
               promise.data = [];
            }
         });
         return promise;
      }
      
      public function o12652(param1:int) : o16124
      {
         o6631 = param1;
         var promise:o16124 = new o16124();
         o8613.o16029(o11630,o7376,o6631).defer(function(param1:Object):void
         {
            if(param1)
            {
               promise.data = o12599(param1["scores"]);
            }
            else
            {
               promise.data = [];
            }
         });
         return promise;
      }
      
      public function o4244() : o16124
      {
         var promise:o16124 = new o16124();
         if(o4519.o17061)
         {
            promise.data = [];
            return promise;
         }
         var loader:URLLoader = new URLLoader();
         loader.addEventListener("complete",function(param1:Event):void
         {
            o12568 = param1;
            var loader:URLLoader = URLLoader(o12568.target);
            var o15410:* = JSON.parse(loader.data);
            var o17406:Array = [];
            var _loc4_:int = 0;
            var _loc3_:* = o15410;
            for each(o8367 in o15410)
            {
               o17406.push(o8367["user_id"]);
            }
            if(o17406.length == 0)
            {
               promise.data = [];
            }
            else
            {
               o8613.o5710(o11630,o7376,o17406).defer(function(param1:Object):void
               {
                  if(param1)
                  {
                     promise.data = o12599(param1["scores"]);
                  }
                  else
                  {
                     promise.data = new Dictionary();
                  }
               });
            }
         });
         var o15386:URLRequest = new URLRequest(o2555.o17203("ninjakiwi.com/api/v1/users/") + o11630 + "/friends");
         loader.load(o15386);
         return promise;
      }
      
      private function sort(param1:o19551, param2:o19551) : int
      {
         if(param1.o19189 > param2.o19189)
         {
            return -1;
         }
         if(param1.o19189 < param2.o19189)
         {
            return 1;
         }
         return 0;
      }
      
      private function o2448(param1:o19551, param2:o19551) : int
      {
         var _loc4_:int = Math.abs(param1.o19189 - o19189);
         var _loc3_:int = Math.abs(param2.o19189 - o19189);
         if(_loc4_ > _loc3_)
         {
            return -1;
         }
         if(_loc4_ < _loc3_)
         {
            return 1;
         }
         return 0;
      }
      
      private function o12599(param1:Object, param2:Boolean = false) : Array
      {
         var _loc4_:Array = param1["above"].concat(param1["below"]).concat(param1["equal"]);
         var _loc5_:Array = [];
         var _loc7_:int = 0;
         var _loc6_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            if(!(param2 == false && _loc3_["userID"] == o11630))
            {
               if(_loc3_["score"] > 0)
               {
                  _loc5_.push(new o19551(_loc3_["userID"],_loc3_["score"],_loc3_["metadata"]));
               }
            }
         }
         _loc5_ = _loc5_.sort(sort);
         return _loc5_;
      }
   }
}
