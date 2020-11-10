package
{
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o1611
   {
       
      
      public var o2304:Array;
      
      public var o8974:Array;
      
      public var o905:Boolean = false;
      
      public var o8887:Boolean = false;
      
      public var o17634:Boolean = false;
      
      public var o20910:String;
      
      public var o8446:String;
      
      public var o18749:Boolean;
      
      public const o19010:int = 1;
      
      public const o933:int = 2;
      
      public const o1021:int = 3;
      
      private var o4015:Dictionary;
      
      private var o7131:Vector.<o20567>;
      
      public function o1611()
      {
         o7131 = new Vector.<o20567>();
         super();
         o2304 = [];
         o8974 = [];
         o4015 = new Dictionary();
      }
      
      public function o18048(param1:Object) : void
      {
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc8_:* = null;
         var _loc7_:int = 0;
         if(param1["MultiplayerRankingBrackets"])
         {
            _loc6_ = param1["MultiplayerRankingBrackets"];
            if(_loc6_["ContractBrackets"])
            {
               _loc5_ = _loc6_["ContractBrackets"];
               o2304 = _loc5_["LevelRanges"];
               o16504(o2304);
            }
            if(_loc6_["NightmareBrackets"])
            {
               _loc3_ = _loc6_["NightmareBrackets"];
               o8974 = _loc3_["LevelRanges"];
               o16504(o8974);
            }
            if(param1["MapBonusSettings"])
            {
               var _loc11_:int = 0;
               var _loc10_:* = param1["MapBonusSettings"];
               for each(var _loc4_ in param1["MapBonusSettings"])
               {
                  o4015[_loc4_["nightmare"]["id"]] = o20112(_loc4_["nightmare"]);
                  o4015[_loc4_["normal"]["id"]] = o20112(_loc4_["normal"]);
               }
            }
            if(param1["DailyMissionBonus"])
            {
               o905 = param1["DailyMissionBonus"]["enableSPMissionBonusCallout"];
               o8887 = param1["DailyMissionBonus"]["enableMPMissionBonusCallout"];
               o17634 = param1["DailyMissionBonus"]["enableNMMissionBonusCallout"];
            }
            if(param1["FestivalHoliday"])
            {
               if(o7131)
               {
                  var _loc13_:int = 0;
                  var _loc12_:* = param1["FestivalHoliday"];
                  for(var _loc2_ in param1["FestivalHoliday"])
                  {
                     _loc8_ = param1["FestivalHoliday"][_loc2_];
                     if(_loc8_)
                     {
                        o7131.push(new o20567(_loc2_,_loc8_));
                     }
                  }
                  var _loc15_:int = 0;
                  var _loc14_:* = o7131;
                  for each(var _loc9_ in o7131)
                  {
                     if(_loc9_.o13779)
                     {
                        _loc7_++;
                     }
                  }
                  if(_loc7_ > 1)
                  {
                     var _loc17_:int = 0;
                     var _loc16_:* = o7131;
                     for each(_loc9_ in o7131)
                     {
                        _loc9_.o13779 = false;
                     }
                     trace("More than on Festival Holiday active in SKU settings, disabling all");
                  }
               }
            }
            if(param1["ServerMessage"])
            {
               o20910 = param1["ServerMessage"]["message"];
               o8446 = param1["ServerMessage"]["textColour"];
               o18749 = param1["ServerMessage"]["enableMessage"];
            }
            return;
         }
         throw new Error("505: Could not load MultiplayerRankingBrackets SKU settings");
      }
      
      private function o20112(param1:Object) : o8236
      {
         if(param1 == null)
         {
            return new o8236();
         }
         var _loc2_:o8236 = new o8236();
         _loc2_.o1013 = param1["xpModifier"];
         _loc2_.o11383 = param1["cashModifier"];
         _loc2_.o915 = param1["shardModifier"];
         return _loc2_;
      }
      
      private function o16504(param1:Array) : void
      {
         var _loc2_:int = 2147483647;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_ >= _loc2_)
            {
               throw new Error("MP rank matching values are incorrect");
            }
         }
      }
      
      public function o20722(param1:int) : Number
      {
         var _loc2_:* = null;
         if(o4015[param1])
         {
            _loc2_ = o4015[param1];
            return _loc2_.o1013 / 100;
         }
         return 1;
      }
      
      public function o15487(param1:int) : Number
      {
         var _loc2_:* = null;
         if(o4015[param1])
         {
            _loc2_ = o4015[param1];
            return _loc2_.o11383 / 100;
         }
         return 1;
      }
      
      public function o16959(param1:int) : Number
      {
         var _loc2_:* = null;
         if(o4015[param1])
         {
            _loc2_ = o4015[param1];
            return _loc2_.o915 / 100;
         }
         return 1;
      }
      
      public function o9104(param1:int) : Boolean
      {
         return o16959(param1) - 1 + (o15487(param1) - 1) + (o20722(param1) - 1) > 0?true:false;
      }
      
      public function o6848(param1:int) : Boolean
      {
         return o16959(param1) >= 2?true:false;
      }
      
      public function o693(param1:TextField) : TextField
      {
         if(param1)
         {
            if(o18749)
            {
               param1.htmlText = "<FONT COLOR=\"" + o8446 + "\">" + o20910 + "</FONT>";
               param1.visible = true;
            }
            else
            {
               param1.htmlText = "";
               param1.visible = false;
            }
            param1.mouseEnabled = false;
            return param1;
         }
         return new TextField();
      }
      
      public function o16643() : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = o7131;
         for each(var _loc1_ in o7131)
         {
            if(_loc1_.o13779)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o7908() : o20567
      {
         var _loc3_:int = 0;
         var _loc2_:* = o7131;
         for each(var _loc1_ in o7131)
         {
            if(_loc1_.o13779)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function o4683(param1:String) : o20567
      {
         var _loc4_:int = 0;
         var _loc3_:* = o7131;
         for each(var _loc2_ in o7131)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o1131(param1:int) : o20567
      {
         if(o7131)
         {
            var _loc4_:int = 0;
            var _loc3_:* = o7131;
            for each(var _loc2_ in o7131)
            {
               if(_loc2_.id == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function o1568() : int
      {
         var _loc3_:int = 0;
         var _loc2_:* = o7131;
         for each(var _loc1_ in o7131)
         {
            if(_loc1_.o13779)
            {
               return _loc1_.id;
            }
         }
         return -1;
      }
   }
}

class o8236
{
    
   
   private var o4275:o16123;
   
   private var o7482:o16123;
   
   private var o19535:o16123;
   
   function o8236()
   {
      o4275 = new o16123(100);
      o7482 = new o16123(100);
      o19535 = new o16123(100);
      super();
   }
   
   public function get o1013() : int
   {
      return this.o4275.value;
   }
   
   public function get o11383() : int
   {
      return this.o7482.value;
   }
   
   public function get o915() : int
   {
      return this.o19535.value;
   }
   
   public function set o1013(param1:int) : void
   {
      this.o4275.value = param1;
   }
   
   public function set o11383(param1:int) : void
   {
      this.o7482.value = param1;
   }
   
   public function set o915(param1:int) : void
   {
      this.o19535.value = param1;
   }
}
