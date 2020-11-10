package
{
   import flash.utils.Dictionary;
   
   public class o8909
   {
       
      
      public var o476:o16062;
      
      public function o8909(param1:o16062)
      {
         super();
         this.o476 = param1;
      }
      
      private function o11117(param1:Object) : o5072
      {
         var _loc4_:Number = parseInt(param1["start"]);
         var _loc2_:Number = parseInt(param1["end"]);
         var _loc3_:o5072 = new o5072(null,null);
         _loc3_.start = new Date();
         _loc3_.end = new Date();
         _loc3_.start.time = _loc4_;
         _loc3_.end.time = _loc2_;
         return _loc3_;
      }
      
      private function o17432(param1:Object, param2:o5072) : void
      {
         var _loc4_:Object = param1["metadata"];
         var _loc3_:o6882 = new o6882(5,param2,o476.o5215.o3659 + _loc4_["img"],_loc4_["optionalUrlLink"],_loc4_["NewsBanner-Priority"]);
         o476.o14399.push(_loc3_);
      }
      
      private function o7373(param1:Object, param2:String, param3:o5072) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc10_:* = null;
         var _loc8_:Object = param1["metadata"];
         var _loc9_:o3241 = new o3241(param3,o476.o5215.o12766 + _loc8_["banner"],_loc8_["NewsBanner-Priority"]);
         o476.o2416.push(_loc9_);
         var _loc11_:int = 0;
         if(param2 == "saleEpicPack")
         {
            _loc11_ = 669;
         }
         else if(param2 == "saleNantoniumStrongbox")
         {
            _loc11_ = 609;
         }
         else
         {
            if(param2 == "salePremiumItems")
            {
               _loc5_ = _loc8_["item1-MinLevel1"];
               _loc11_ = o20543.o14329(_loc5_);
               _loc5_ = _loc8_["item2-MinLevel20"];
               _loc4_ = o20543.o14329(_loc5_);
               _loc5_ = _loc8_["item3-MinLevel50"];
               _loc7_ = o20543.o14329(_loc5_);
               _loc10_ = new o18422(param3,_loc11_,_loc4_,_loc7_,true,o476.o5215.o1061 + _loc8_["newsPanelImage"],_loc8_["NewsBanner-Priority"]);
               o476.o14399.push(_loc10_);
               return;
            }
            return;
         }
         var _loc6_:o12394 = new o12394(param3,_loc11_,true,o476.o5215.o1061 + _loc8_["img"],_loc8_["NewsBanner-Priority"]);
         o476.o14399.push(_loc6_);
      }
      
      public function o8767(param1:int, param2:String) : Vector.<o7631>
      {
         var _loc3_:* = null;
         var _loc4_:o638 = o476.o3413(param1);
         if(_loc4_)
         {
            _loc3_ = _loc4_.o17040(param2);
            if(_loc3_ == null)
            {
               return null;
            }
            return _loc3_.o271;
         }
         return null;
      }
      
      private function o15836(param1:Object, param2:Object, param3:String, param4:o5072) : void
      {
         var _loc5_:o14128 = new o14128(param1["metadata"],param1["id"],param2,param4,o476.o5215.o14354);
         if(_loc5_)
         {
            o476.o16679.push(_loc5_);
         }
      }
      
      public function o7910(param1:Vector.<o11614>, param2:Object) : void
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         o476.o7205 = new Dictionary();
         var _loc7_:int = 1000;
         var _loc9_:int = 0;
         var _loc8_:* = param2;
         for(var _loc6_ in param2)
         {
            _loc5_ = param2[_loc6_];
            _loc6_ = _loc6_;
            _loc3_ = new o638();
            _loc4_ = -1;
            if(_loc6_ == "bounty")
            {
               _loc4_ = 0;
            }
            else if(_loc6_ == "championship")
            {
               _loc4_ = 3;
            }
            else if(_loc6_ == "daily")
            {
               _loc4_ = 2;
            }
            else if(_loc6_ == "gameMode")
            {
               _loc4_ = 1;
            }
            else if(_loc6_ == "dynamicEvent")
            {
               _loc4_ = 4;
            }
            else if(_loc6_ == "globalEvent")
            {
               _loc4_ = 5;
            }
            else
            {
               _loc4_ = 4;
            }
            _loc7_ = _loc3_.o18048(_loc7_,param1,_loc4_,param2);
            if(_loc7_)
            {
               o476.o7205[_loc4_] = _loc3_;
            }
         }
      }
      
      public function o17203(param1:Array, param2:Object) : void
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(var _loc3_ in param1)
         {
            _loc5_ = _loc3_["type"];
            _loc4_ = o11117(_loc3_);
            if(_loc5_ == "update")
            {
               o17432(_loc3_,_loc4_);
            }
            else if(_loc5_.match("sale"))
            {
               o7373(_loc3_,_loc5_,_loc4_);
            }
            else
            {
               o15836(_loc3_,param2,_loc5_,_loc4_);
            }
         }
      }
   }
}
