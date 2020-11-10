package
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.errors.IOError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.system.Security;
   
   public class o4787 extends EventDispatcher
   {
       
      
      public const KONG_EVENT_USER_CHANGED:String = "KONG_EVENT_USER_CHANGED";
      
      private const o14014:String = "1619c86b-03ac-44aa-9ea4-9e514bd08f02";
      
      private var kongregate = null;
      
      private var o15049:DisplayObjectContainer;
      
      private var o18025:String;
      
      public function o4787()
      {
         super();
      }
      
      private function get o5287() : Object
      {
         return kongregate["services"];
      }
      
      public function init(param1:DisplayObjectContainer) : void
      {
         o15049 = param1;
         var _loc3_:String = o15049.loaderInfo.parameters["kongregate_api_path"];
         if("" == "KongTest")
         {
            _loc3_ = "http://www.kongregate.com/flash/API_AS3_Local.swf";
         }
         Security.allowDomain(_loc3_);
         var _loc4_:URLRequest = new URLRequest(_loc3_);
         var _loc2_:Loader = new Loader();
         param1.addChild(_loc2_);
         _loc2_.contentLoaderInfo.addEventListener("complete",o18963);
         _loc2_.load(_loc4_);
      }
      
      private function o18963(param1:Event) : void
      {
         kongregate = param1.target["content"];
         o5287.connect();
      }
      
      public function isGuest() : Boolean
      {
         return o5287.isGuest();
      }
      
      public function getKongUsername() : String
      {
         return o5287.getUsername();
      }
      
      public function getKongUserId() : String
      {
         return o5287.getUserId();
      }
      
      public function getKongGameAuthToken() : String
      {
         return o5287.getGameAuthToken();
      }
      
      public function showRegistrationBox() : void
      {
         if(o5287.isGuest())
         {
            o5287.showRegistrationBox();
         }
         else
         {
            trace("KONG: showRegistrationBox() was called even though the user is logged into Kong");
         }
      }
      
      public function submitStat(param1:String, param2:int) : void
      {
         kongregate["stats"].submit(param1,param2);
      }
      
      public function purchaseItem(param1:int, param2:Function) : void
      {
         kongregate["mtx"].purchaseItems([param1.toString()],param2);
      }
      
      public function requestUserItemList(param1:Function) : void
      {
         kongregate["mtx"].requestUserItemList(o5287.getUsername(),param1);
      }
      
      public function useItem(param1:Number, param2:Function) : void
      {
         o3557 = param1;
         o5734 = param2;
         var o20272:URLVariables = new URLVariables();
         o20272["api_key"] = o14014;
         var o19853:String = o5287.getGameAuthToken();
         o20272["game_auth_token"] = o19853;
         var o799:String = o5287.getUserId();
         o20272["user_id"] = o799;
         o20272["id"] = o3557;
         var o5624:URLRequest = new URLRequest("http://api.kongregate.com/api/use_item.json");
         o5624.data = o20272;
         o5624.method = "POST";
         var o17327:URLLoader = new URLLoader();
         o17327.dataFormat = "text";
         o17327.addEventListener("complete",function():*
         {
            var /*UnknownSlot*/:* = function(param1:Event):void
            {
               trace("urlLoader_complete");
               var _loc2_:String = o17327.data;
               trace("urlLoader_complete: " + _loc2_);
            };
            return function(param1:Event):void
            {
               trace("urlLoader_complete");
               var _loc2_:String = o17327.data;
               trace("urlLoader_complete: " + _loc2_);
            };
         }());
         o17327.load(o5624);
      }
      
      private function o1289(param1:IOError) : void
      {
      }
      
      private function o6954(param1:SecurityError) : void
      {
      }
      
      public function startPollingForUserChange() : void
      {
         o18025 = o5287.getUserId();
         o15049.addEventListener("enterFrame",pollForUserChange);
      }
      
      private function pollForUserChange(param1:Event) : void
      {
         var _loc2_:String = o5287.getUserId();
         if(_loc2_ != o18025)
         {
            o18025 = _loc2_;
            dispatchEvent(new Event(KONG_EVENT_USER_CHANGED));
         }
      }
   }
}
