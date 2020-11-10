package
{
   import com.ninjakiwi.gateway.nk.NKGateway;
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.utils.Dictionary;
   
   public class o10590 extends o15621
   {
       
      
      protected var o10047:NKGatewayUser = null;
      
      public function o10590()
      {
         super();
      }
      
      override public function o14655(param1:NKGatewayUser, param2:o14200) : o16124
      {
         var _loc3_:o16124 = new o16124();
         if(o10047 != null)
         {
            o10047.gotItemsSignal.remove(o689);
            o10047 = null;
         }
         o10047 = param1;
         o13489();
         if(o10047 != null)
         {
            o10047.gotItemsSignal.add(o689);
            o9805 = o12448();
         }
         else
         {
            o9805 = new Vector.<o444>();
         }
         _loc3_.data = true;
         return _loc3_;
      }
      
      private function o12448(param1:Object = null) : Vector.<o444>
      {
         var _loc10_:int = 0;
         var _loc5_:* = null;
         var _loc9_:* = null;
         var _loc8_:* = null;
         var _loc3_:Vector.<o444> = new Vector.<o444>();
         var _loc6_:* = param1 == null;
         if(o10047 == null)
         {
            o7241(new Error("Guest err"));
            throw new Error("Guest err");
         }
         var _loc2_:Object = o10047.inventory;
         if(param1 == null)
         {
            param1 = _loc2_["coinsItems"];
         }
         var _loc14_:int = 0;
         var _loc13_:* = param1;
         while(true)
         {
            for each(var _loc4_ in param1)
            {
               _loc10_ = _loc4_["id"];
               _loc5_ = _loc4_["name"];
               _loc9_ = _loc4_["uuid"];
               _loc8_ = null;
               var _loc12_:int = 0;
               var _loc11_:* = _loc3_;
               for each(var _loc7_ in _loc3_)
               {
                  if(_loc7_.o5689 == _loc9_)
                  {
                     _loc8_ = _loc7_;
                     break;
                  }
               }
               if(_loc8_ == null)
               {
                  _loc8_ = new o444();
                  _loc8_.o5689 = _loc9_;
                  _loc8_.o6671(_loc10_);
                  _loc8_.o20414(1);
                  _loc3_.push(_loc8_);
                  continue;
               }
               break;
            }
            if(_loc6_)
            {
               o4519.o8116.profileData.o15894.o3501 = false;
            }
            return _loc3_;
         }
         o7241(new Error("S UUID"));
         throw new Error("S UUID");
      }
      
      public function o13489() : void
      {
         var gateway:NKGateway = o4519.o8116.profileData.gateway;
         gateway.api.call("connection.getAction","v2.game.get_store").call(["SAS4"]).then(function():*
         {
            var /*UnknownSlot*/:* = function(param1:Object):void
            {
               var _loc3_:int = 0;
               var _loc6_:int = 0;
               var _loc2_:* = 0;
               var _loc5_:Array = param1 as Array;
               var _loc8_:int = 0;
               var _loc7_:* = _loc5_;
               for each(var _loc4_ in _loc5_)
               {
                  _loc3_ = _loc4_["id"];
                  _loc6_ = _loc4_["cost"];
                  _loc2_ = _loc6_;
                  if(_loc4_["salecost"] != null)
                  {
                     _loc2_ = int(_loc4_["salecost"]);
                  }
                  o6944(_loc3_,_loc6_,_loc2_);
               }
            };
            return function(param1:Object):void
            {
               var _loc3_:int = 0;
               var _loc6_:int = 0;
               var _loc2_:* = 0;
               var _loc5_:Array = param1 as Array;
               var _loc8_:int = 0;
               var _loc7_:* = _loc5_;
               for each(var _loc4_ in _loc5_)
               {
                  _loc3_ = _loc4_["id"];
                  _loc6_ = _loc4_["cost"];
                  _loc2_ = _loc6_;
                  if(_loc4_["salecost"] != null)
                  {
                     _loc2_ = int(_loc4_["salecost"]);
                  }
                  o6944(_loc3_,_loc6_,_loc2_);
               }
            };
         }(),function():*
         {
            var /*UnknownSlot*/:* = function(param1:Object):void
            {
            };
            return function(param1:Object):void
            {
            };
         }());
      }
      
      public function o14308() : void
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc1_:* = 0;
         var _loc6_:Object = o10047.profileData["store"];
         var _loc4_:Array = _loc6_["items"];
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_;
         for each(var _loc3_ in _loc4_)
         {
            _loc2_ = _loc3_["id"];
            _loc5_ = _loc3_["cost"];
            _loc1_ = _loc5_;
            if(_loc3_["saleCost"] != null)
            {
               _loc1_ = int(_loc3_["saleCost"]);
            }
            o6944(_loc2_,_loc5_,_loc1_);
         }
      }
      
      private function o689(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = null;
         if(param1["success"])
         {
            _loc2_ = param1["items"];
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc6_ = _loc4_["id"];
               _loc5_ = _loc4_["uuid"];
               o11865(_loc6_,_loc5_);
               _loc3_++;
            }
         }
      }
      
      override public function o15587() : void
      {
         if(o4519.o8116.profileData.o15894.o4848.isGuest)
         {
            return;
         }
         o4519.o8116.profileData.gateway.api.call("connection.getAction","v2.user.get_inventory").call(["SAS4",o10047.loginInfo.id,o10047.loginInfo.token,o10047.loginInfo.name]).then(o20502,function():*
         {
            var /*UnknownSlot*/:* = function(param1:Object):void
            {
               o7241(new Error("Error in consumeVideoAdverts"));
               throw new Error("Error in consumeVideoAdverts");
            };
            return function(param1:Object):void
            {
               o7241(new Error("Error in consumeVideoAdverts"));
               throw new Error("Error in consumeVideoAdverts");
            };
         }());
      }
      
      override protected function get o4808() : int
      {
         return o4519.o8116.profileData.o15894.o4848.o2584;
      }
      
      private function o20502(param1:Object) : void
      {
         var _loc9_:* = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc4_:Object = param1["items"];
         var _loc11_:int = 0;
         var _loc10_:* = _loc4_;
         for each(var _loc7_ in _loc4_)
         {
            _loc9_ = _loc7_["uuid"];
            _loc2_[_loc9_] = _loc7_;
         }
         var _loc6_:Vector.<o444> = new Vector.<o444>();
         var _loc5_:Vector.<o444> = o12448(_loc2_);
         var _loc13_:int = 0;
         var _loc12_:* = _loc5_;
         for each(var _loc8_ in _loc5_)
         {
            if(_loc8_.o5693 == 623)
            {
               _loc6_.push(_loc8_);
            }
         }
         var _loc15_:int = 0;
         var _loc14_:* = _loc6_;
         for each(var _loc3_ in _loc6_)
         {
            o7777(_loc3_);
         }
      }
      
      override protected function get isGuest() : Boolean
      {
         return o19419.o15894.o4848.isGuest;
      }
      
      override protected function o18167(param1:o444) : void
      {
         o14660 = param1;
         var o5693:int = o14660.o5693;
         var o10868:Object = {};
         o10868["id"] = o5693;
         o10868["quantity"] = 1;
         o10868["maxQuantity"] = 1;
         var o12715:String = o18293.create();
         o10047.buyNKCoinsItem(o5693,o12715).then(function():void
         {
         },function(param1:Object):void
         {
            var _loc2_:String = param1["error"];
            var _loc3_:String = param1["message"];
            if(_loc2_ == null)
            {
               _loc2_ = "missing heading";
            }
            if(_loc3_ == null)
            {
               _loc3_ = "missing message";
            }
            o4519.o8116.profileData.o12094.o18278.dispatchData(new o19869(o19869.o17670,o14660,_loc2_,_loc3_));
         });
      }
      
      override protected function o11850(param1:o444) : void
      {
         o14660 = param1;
         o10047.consumeNKCoinsItem(o14660.o5689).then(function():*
         {
            var /*UnknownSlot*/:* = function():void
            {
               o15349(o14660);
               o19045(o14660);
            };
            return function():void
            {
               o15349(o14660);
               o19045(o14660);
            };
         }(),function():*
         {
            var /*UnknownSlot*/:* = function(param1:Object):void
            {
               var _loc2_:String = param1["error"];
               var _loc3_:String = param1["message"];
               o14609(o14660,_loc2_,_loc3_);
            };
            return function(param1:Object):void
            {
               var _loc2_:String = param1["error"];
               var _loc3_:String = param1["message"];
               o14609(o14660,_loc2_,_loc3_);
            };
         }());
      }
   }
}
