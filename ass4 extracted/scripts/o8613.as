package
{
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class o8613
   {
       
      
      public function o8613()
      {
         super();
      }
      
      public static function o16029(param1:String, param2:String, param3:int) : o16124
      {
         var _loc4_:Object = {};
         _loc4_["userID"] = param1;
         _loc4_["leaderboardID"] = param2;
         _loc4_["limit"] = param3;
         return o227("leaderboard/anon/neighbours",_loc4_);
      }
      
      public static function o5710(param1:String, param2:String, param3:Array) : o16124
      {
         if(param3.length == 0)
         {
            throw new Error("Error if checking with zero users");
         }
         var _loc4_:Object = {};
         _loc4_["userID"] = param1;
         _loc4_["leaderboardID"] = param2;
         _loc4_["userIDs"] = param3;
         return o227("leaderboard/anon/scores",_loc4_);
      }
      
      public static function o5865(param1:String, param2:String) : o16124
      {
         var _loc3_:Object = {};
         _loc3_["userID"] = param1;
         _loc3_["leaderboardID"] = param2;
         return o227("leaderboard/anon/rank",_loc3_);
      }
      
      public static function o918(param1:String, param2:String) : o16124
      {
         var _loc3_:Object = {};
         _loc3_["userID"] = param1;
         _loc3_["leaderboardID"] = param2 + "_bandings";
         return o227("appdocs/5/leaderboards/" + _loc3_["leaderboardID"] + ".json",_loc3_,true);
      }
      
      public static function o5480(param1:String, param2:String) : o16124
      {
         var _loc3_:Object = {};
         _loc3_["userID"] = param1;
         _loc3_["leaderboardID"] = param2 + "_ranks";
         return o227("appdocs/5/leaderboards/" + _loc3_["leaderboardID"] + ".json",_loc3_,true);
      }
      
      public static function o13887(param1:Array, param2:String) : o16124
      {
         var _loc3_:Object = {};
         _loc3_["userIDs"] = param1;
         _loc3_["leaderboardID"] = param2;
         return o227("leaderboard/anon/ranks",_loc3_);
      }
      
      public static function o8903(param1:String, param2:String, param3:int) : o16124
      {
         var _loc4_:Object = {};
         _loc4_["userID"] = param1;
         _loc4_["leaderboardID"] = param2;
         _loc4_["limit"] = param3;
         return o227("leaderboard/anon/top",_loc4_);
      }
      
      public static function o6543(param1:String, param2:String, param3:int, param4:String, param5:int) : o16124
      {
         var _loc6_:Object = {};
         _loc6_["userID"] = param1;
         _loc6_["leaderboardID"] = param2;
         _loc6_["score"] = param3;
         _loc6_["metadata"] = param4;
         _loc6_["expiresIn"] = param5;
         return o227("leaderboard/anon/set",_loc6_);
      }
      
      public static function o6171(param1:String, param2:int) : o16124
      {
         var _loc3_:Object = {};
         var _loc4_:Object = {};
         _loc4_[param1] = param2;
         _loc3_["currencies"] = _loc4_;
         return o227("bank/global/update",_loc3_);
      }
      
      public static function o12659(param1:String) : o16124
      {
         var _loc2_:Object = {};
         return o227("bank/global/balances",_loc2_);
      }
      
      private static function o8667(param1:String) : o16124
      {
         o11630 = param1;
         var promise:o16124 = new o16124();
         var loader:URLLoader = new URLLoader();
         loader.addEventListener("complete",function(param1:Event):void
         {
            var _loc2_:URLLoader = URLLoader(param1.target);
            var _loc3_:Object = JSON.parse(_loc2_.data);
            promise.data = new o9433(_loc3_["user_id"],_loc3_["username"],_loc3_["avatar"],_loc3_["clan_id"],_loc3_["clan_name"],_loc3_["clan_logo"],false,null);
         },false,0,true);
         loader.addEventListener("ioError",function(param1:Event):void
         {
            promise.data = new o9433(0,"NK Error",null,0,null,null,false,null);
         },false,0,true);
         var o15386:URLRequest = new URLRequest(o2555.o17203("ninjakiwi.com/api/v1/users/") + o11630);
         loader.load(o15386);
         return promise;
      }
      
      private static function o7481(param1:String) : o16124
      {
         o11630 = param1;
         var o11630:String = o11630.substr("kong_".length);
         trace("getKongUser: " + o11630);
         var promise:o16124 = new o16124();
         try
         {
            var loader:URLLoader = new URLLoader();
            loader.addEventListener("complete",function(param1:Event):void
            {
               var _loc3_:URLLoader = URLLoader(param1.target);
               var _loc4_:Object = JSON.parse(_loc3_.data);
               var _loc2_:Object = _loc4_["users"][0];
               promise.data = new o9433(parseInt(o11630),_loc2_["username"],null,null,"Kong",null,true,null);
            },false,0,true);
            loader.addEventListener("ioError",function(param1:Event):void
            {
               promise.data = new o9433(0,"Error",null,0,"Kong",null,true,null);
            },false,0,true);
            var o15386:URLRequest = new URLRequest("api.kongregate.com/api/user_info.json?user_ids=" + o11630);
            loader.load(o15386);
         }
         catch(o19631:Error)
         {
            promise.data = new o9433(0,"Load Error",null,0,"Kong",null,true,null);
         }
         return promise;
      }
      
      public static function o6443(param1:String) : Boolean
      {
         return param1.indexOf("kong_") == 0;
      }
      
      public static function o9194(param1:String) : o16124
      {
         if(o6443(param1))
         {
            return o7481(param1);
         }
         return o8667(param1);
      }
      
      public static function o227(param1:String, param2:Object, param3:Boolean = false) : o16124
      {
         o17659 = param1;
         body = param2;
         o8500 = param3;
         var promise:o16124 = new o16124();
         var o990:Object = {};
         o990["session"] = null;
         o990["appID"] = 5;
         o990["skuID"] = 13;
         o990["skuID"] = 14;
         var o16324:String = "9E70836D4EDE87BA";
         o16324 = "67779F6C9E2B50DD";
         var o7121:String = JSON.stringify(body);
         var o10723:String = o20057.o5056(o16324 + o7121);
         var o20662:Object = {};
         o20662["data"] = o7121;
         o20662["auth"] = o990;
         o20662["sig"] = o10723;
         var loader:URLLoader = new URLLoader();
         loader.addEventListener("ioError",function(param1:Event):void
         {
            promise.data = null;
         });
         loader.addEventListener("complete",function(param1:Event):void
         {
            var _loc2_:URLLoader = URLLoader(param1.target);
            var _loc4_:Object = JSON.parse(_loc2_.data);
            var _loc3_:Object = JSON.parse(_loc4_.data);
            promise.data = _loc3_;
         });
         if(o8500 == true)
         {
            if(true || "" == "production")
            {
               var o15386:URLRequest = new URLRequest("https://static-api.ninjakiwi.com/" + o17659);
            }
            else
            {
               o15386 = new URLRequest("https://static-api-staging.ninjakiwi.com/" + o17659);
            }
         }
         else if(true || "" == "production")
         {
            o15386 = new URLRequest("https://api.ninjakiwi.com/" + o17659);
         }
         else
         {
            o15386 = new URLRequest("https://api-staging.ninjakiwi.com/" + o17659 + cacheBust());
         }
         o15386.method = "POST";
         o15386.contentType = "application/json";
         o15386.data = JSON.stringify(o20662);
         loader.load(o15386);
         return promise;
      }
      
      private static function cacheBust() : String
      {
         var _loc1_:* = null;
         return "";
      }
      
      public static function o2238(param1:String, param2:String, param3:int = 2147483647) : Object
      {
         var _loc4_:Object = {};
         _loc4_["userID"] = param1;
         _loc4_["target"] = param2;
         _loc4_["frequency"] = param3;
         _loc4_["rules"] = [];
         return _loc4_;
      }
      
      public static function o13929(param1:Object, param2:Boolean, param3:String, param4:int = 1) : void
      {
         var _loc5_:Array = param1["rules"];
         var _loc7_:Object = {};
         _loc7_["primary"] = param2;
         _loc7_["source"] = param3;
         _loc7_["type"] = "ADD";
         var _loc6_:Object = {};
         _loc6_["multiplier"] = param4;
         _loc7_["data"] = _loc6_;
         _loc5_.push(_loc7_);
      }
      
      public static function o16852(param1:Object, param2:Boolean, param3:String, param4:Vector.<Number>, param5:Vector.<int>) : void
      {
         var _loc7_:int = 0;
         var _loc9_:* = null;
         var _loc6_:Array = param1["rules"];
         var _loc10_:Object = {};
         _loc10_["primary"] = param2;
         _loc10_["source"] = param3;
         _loc10_["type"] = "PERCENT";
         var _loc8_:Array = [];
         _loc7_ = 0;
         while(_loc7_ < param4.length)
         {
            _loc9_ = {};
            _loc9_["percent"] = Math.ceil(param4[_loc7_] * 100) as int;
            _loc9_["score"] = param5[_loc7_];
            _loc8_.push(_loc9_);
            _loc7_++;
         }
         _loc10_["data"] = _loc8_;
         _loc6_.push(_loc10_);
      }
      
      public static function o10844(param1:Object, param2:Boolean, param3:String, param4:Vector.<int>, param5:Vector.<int>) : void
      {
         var _loc7_:int = 0;
         var _loc9_:* = null;
         var _loc6_:Array = param1["rules"];
         var _loc10_:Object = {};
         _loc10_["primary"] = param2;
         _loc10_["source"] = param3;
         _loc10_["type"] = "RANK";
         var _loc8_:Array = [];
         _loc7_ = 0;
         while(_loc7_ < param4.length)
         {
            _loc9_ = {};
            _loc9_["rank"] = param4[_loc7_];
            _loc9_["score"] = param5[_loc7_];
            _loc8_.push(_loc9_);
            _loc7_++;
         }
         _loc10_["data"] = _loc8_;
         _loc6_.push(_loc10_);
      }
      
      public static function o16840(param1:Object) : o16124
      {
         return o227("leaderboard/anon/compile",param1);
      }
   }
}
