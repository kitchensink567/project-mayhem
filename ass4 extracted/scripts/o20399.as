package
{
   public class o20399
   {
       
      
      public var o16108:String;
      
      public var o271:Vector.<o7631>;
      
      public function o20399()
      {
         super();
      }
      
      private function o9212(param1:Object) : o11614
      {
         var _loc2_:* = null;
         var _loc4_:o11614 = new o11614();
         _loc4_.o6287 = parseFloat(param1["credPacks"]);
         _loc4_.o3998 = parseInt(param1["reviveTokens"]);
         _loc4_.o7634 = parseInt(param1["respecTokens"]);
         _loc4_.o2754 = parseInt(param1["eliteAugmentCores"]);
         _loc4_.o3223 = parseInt(param1["nightmareTokens"]);
         _loc4_.o12753 = parseInt(param1["fullBoosts"]);
         _loc4_.o5532 = parseInt(param1["blackKeys"]);
         _loc4_.o15076 = parseInt(param1["superEventMedals"]);
         _loc4_.o7136 = parseInt(param1["blackStrongboxes"]);
         _loc4_.o10252 = parseInt(param1["alloy"]);
         _loc4_.o8153(o4189.o19843,parseInt(param1["steel"]));
         _loc4_.o8153(o4189.o17868,parseInt(param1["titanium"]));
         _loc4_.o8153(o4189.o20918,parseInt(param1["molybdenum"]));
         _loc4_.o8153(o4189.o6765,parseInt(param1["iridium"]));
         _loc4_.o8153(o4189.o16296,parseInt(param1["neodynium"]));
         _loc4_.o8153(o4189.o11328,parseInt(param1["promethium"]));
         _loc4_.o8153(o4189.o15243,parseInt(param1["thulium"]));
         _loc4_.o8153(o4189.o1897,parseInt(param1["nantonium"]));
         _loc4_.o14271(4,parseInt(param1["HMGTurrets"]));
         _loc4_.o14271(9,parseInt(param1["zeusTurrets"]));
         _loc4_.o14271(8,parseInt(param1["flameTurrets"]));
         _loc4_.o14271(6,parseInt(param1["heavyShotTurrets"]));
         _loc4_.o14271(5,parseInt(param1["cryoTurrets"]));
         _loc4_.o14271(10,parseInt(param1["plasmaTurrets"]));
         _loc4_.o14271(7,parseInt(param1["missleTurrets"]));
         _loc4_.o14271(2,parseInt(param1["cryoGrenades"]));
         _loc4_.o14271(1,parseInt(param1["fragGrenades"]));
         var _loc3_:Object = param1["weapon"];
         if(_loc3_ != null)
         {
            _loc2_ = new o1928(parseInt(_loc3_["id"]),parseInt(_loc3_["grade"]),parseInt(_loc3_["augSlots"]));
            _loc4_.o15217 = _loc2_;
         }
         if(param1["badgeLevel"] != null)
         {
            _loc4_.o10936 = parseInt(param1["badgeLevel"]);
         }
         else
         {
            _loc4_.o10936 = -1;
         }
         return _loc4_;
      }
      
      public function o18048(param1:String, param2:Vector.<o11614>, param3:int, param4:Object) : int
      {
         var _loc5_:* = null;
         this.o16108 = param1;
         o271 = new Vector.<o7631>();
         var _loc8_:int = 0;
         var _loc7_:* = param4["rewards"];
         for each(var _loc6_ in param4["rewards"])
         {
            o271.push(new o7631(_loc6_["threshold"] == null?0:_loc6_["threshold"],_loc6_["rank"] == null?0:_loc6_["rank"],param3));
            _loc5_ = o9212(_loc6_);
            _loc5_.o8749 = param3;
            param2.push(_loc5_);
            param3++;
         }
         return param3;
      }
   }
}
