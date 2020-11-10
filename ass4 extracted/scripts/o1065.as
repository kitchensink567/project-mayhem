package
{
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   
   public class o1065 extends o10590
   {
       
      
      private var o20302:o444;
      
      private var o12832:o444;
      
      private var o16984:o16124;
      
      public function o1065()
      {
         super();
      }
      
      override public function o14655(param1:NKGatewayUser, param2:o14200) : o16124
      {
         o8339("KP: initForUser");
         if(o16984 != null)
         {
            throw new Error("Promise should be null");
         }
         o16984 = new o16124();
         o10047 = param1;
         o9805 = new Vector.<o444>();
         o13489();
         if(o10047 != null)
         {
            o4470();
         }
         else
         {
            o16984.data = true;
         }
         return o16984;
      }
      
      protected function o4470() : void
      {
         o8339("KP: loadKongStartupInvetoryItems");
         o4519.kong.requestUserItemList(o5397);
      }
      
      private function o5397(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc4_:* = null;
         var _loc3_:int = 0;
         var _loc5_:* = null;
         var _loc8_:* = null;
         o8339("KP: loadKongStartupInvetoryItemsComplete start");
         if(param1["success"] == true)
         {
            _loc2_ = param1["data"];
            _loc6_ = 0;
            while(_loc6_ < _loc2_.length)
            {
               _loc7_ = _loc2_[_loc6_];
               _loc4_ = _loc7_["id"];
               _loc3_ = _loc7_["identifier"];
               _loc5_ = _loc7_["data"];
               o8339("item: kongProductID:" + _loc3_ + ", uid:" + _loc4_);
               _loc8_ = new o444();
               _loc8_.o5689 = _loc4_;
               _loc8_.o6671(_loc3_);
               _loc8_.o20414(1);
               o9805.push(_loc8_);
               _loc6_++;
            }
            o16984.data = true;
            o16984 = null;
            o4519.o8116.profileData.o15894.o3501 = false;
            o8339("KP: loadKongStartupInvetoryItemsComplete end");
            return;
         }
         throw new Error("Error loading inventory. Please refresh the page");
      }
      
      override protected function o18167(param1:o444) : void
      {
         o8339("KP: onStartServerPurchase");
         o20302 = param1;
         o4519.kong.purchaseItem(param1.o5693,o11038);
      }
      
      private function o11038(param1:Object) : void
      {
         var _loc2_:Boolean = param1["success"];
         if(_loc2_)
         {
            o8339("onStartServerPurchaseComplete success");
         }
         else
         {
            o8339("onStartServerPurchaseComplete failed or success");
         }
         o4519.kong.requestUserItemList(o4528);
      }
      
      private function o4528(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc2_:Boolean = false;
         o8339("KP: requestUserItemListComplete");
         trace("KONG: Item List...");
         if(param1["success"] == true)
         {
            _loc3_ = param1["data"];
            _loc7_ = 0;
            while(true)
            {
               if(_loc7_ >= _loc3_.length)
               {
                  trace("KONG: Item not found that matched purchase: " + _loc4_.toString() + ": " + _loc5_);
                  dispatchData(new o19869(o19869.o17670,o20302,"PURCHASE_CANCELLED","Transaction Cancelled"));
               }
               else
               {
                  _loc8_ = _loc3_[_loc7_];
                  _loc5_ = _loc8_["id"];
                  _loc4_ = _loc8_["identifier"];
                  _loc6_ = _loc8_["data"];
                  o8339("KP: item: kongProductID:" + _loc4_ + ", uid:" + _loc5_);
                  if(_loc4_ == o20302.o5693 && o19419.o12911(_loc5_) == false)
                  {
                     _loc2_ = false;
                     var _loc11_:int = 0;
                     var _loc10_:* = this.o9805;
                     for each(var _loc9_ in this.o9805)
                     {
                        if(_loc9_.o5689 == _loc5_)
                        {
                           _loc2_ = true;
                           break;
                        }
                     }
                     if(_loc2_ == false)
                     {
                        break;
                     }
                  }
                  _loc7_++;
                  continue;
               }
            }
            trace("KONG: Found Item that matched purchase: " + _loc4_.toString() + ": " + _loc5_);
            o11865(_loc4_,_loc5_);
            return;
         }
         trace("KONG: Request item list after purchase failed");
         dispatchData(new o19869(o19869.o17670,o20302,"Cancelled","Unable to load inventory"));
      }
      
      override protected function o11850(param1:o444) : void
      {
         o8339("KP: onServerCoinConsume");
         this.o12832 = param1;
         var _loc2_:Number = parseInt(param1.o5689);
         o8339("KP: onServerCoinConsume2: " + _loc2_);
         o4519.kong.useItem(_loc2_,o7052);
      }
      
      private function o7052(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         o8339("KP: useItemComplete");
         if(param1["success"])
         {
            trace("KONG: Request use item after purchase success","Remaining uses",param1["remaining_uses"],"usage record id",param1["usage_record_id"]);
            o15349(o12832);
         }
         else
         {
            trace("KONG: Request use item after purchase failed","Error:",param1["error"],param1["error_description"]);
            _loc2_ = param1["error"] == null?"Unknown error":param1["error"];
            _loc3_ = param1["error_description"] == null?"Unknown description":param1["error_description"];
         }
      }
   }
}
