package
{
   import flash.utils.Dictionary;
   
   public class o14128 extends o19173
   {
      
      public static var o10763:o8023 = new o8023();
       
      
      public var o18804:int = 0;
      
      public var o9854:int = 0;
      
      public var o17431:int = 0;
      
      public var o20963:int = 1000;
      
      public var o15421:int = 0;
      
      public var o1415:String;
      
      public var o1442:String;
      
      public var o17297:uint = 65280;
      
      public var o4886:String = null;
      
      public var o14925:String;
      
      public var o14197:Object = null;
      
      public var o20664:String;
      
      public var o870:String;
      
      public var o889:String;
      
      public var o18098:Dictionary;
      
      public var o16419:Dictionary;
      
      public var o11620:Dictionary;
      
      public var o16886:Dictionary;
      
      public var o6269:Dictionary;
      
      public var o4256:Dictionary;
      
      public var o20331:o7722;
      
      public var o956:o2580;
      
      public var o6202:o4788;
      
      public var o5735:o19140;
      
      public var o6680:o20544;
      
      private var o17493:Object;
      
      private var o3576:Object;
      
      private var o11004:Object;
      
      private var o8266:String;
      
      private var o4055:Vector.<Object>;
      
      private var o481:Vector.<String>;
      
      private var o4914:o9956 = null;
      
      public function o14128(param1:Object, param2:String, param3:Object, param4:o5072, param5:String)
      {
         o1415 = "";
         o1442 = "";
         o14925 = "";
         o20664 = "";
         o870 = "";
         o889 = "";
         o18098 = new Dictionary();
         o16419 = new Dictionary();
         o11620 = new Dictionary();
         o16886 = new Dictionary();
         o6269 = new Dictionary();
         o4256 = new Dictionary();
         o20331 = new o7722(null);
         o4055 = new Vector.<Object>();
         o481 = new Vector.<String>();
         super(0,0,null,null,false,"","","");
         if(!param1 && !param3)
         {
            return;
         }
         this.o17493 = param1;
         this.o14197 = param3;
         this.o20664 = param5;
         o17867(param3["[Preset Events]"],o17493["Event-Preset"]);
         o3576 = o11004;
         this.o3354 = param2;
         this.o5897 = param4;
         if(o17493["Event-Preset"] != null && (o17493["Event-Preset"] as String).search("--") != -1)
         {
            throw new Error("[Attention Event Manager] You cannot make a dynamic event using a base preset that is a \'{ Overwrightable Only }\' event.");
         }
         o4055.push(o3576);
         o481.push("MasterData");
         o755(o3576);
         o755(o17493);
         o4055.push(o17493);
         o481.push(o17493["Event-Preset"]);
         o1534();
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         var _loc8_:* = o4055;
         for each(var _loc7_ in o4055)
         {
            o3848(_loc7_,o481[_loc6_]);
            _loc6_++;
         }
         o15173();
         o18858();
         o1919();
         if(o9854 == 0)
         {
            throw new Error("[Attention Event Manager] Dynamic Event has not been given a event type, e.g. dynamicEventType = \"Championship Event\", \"Bounty Event\" etc");
         }
         if(o9854 == 15)
         {
            if(o5735 == null)
            {
               throw new Error("[Attention Event Manager] Dynamic Event \'High Score Event\' has been chosen in the SKU but there is no [HighScoreEventSettings] object in the JSON data, e.g. no maximum high scores value set");
            }
            return;
         }
         if(o9854 == 2)
         {
            if(o6680 == null)
            {
               throw new Error("[Attention Event Manager] Dynamic Event \'Global Event\' has been chosen in the SKU but there is no [MaxGlobalEventScore] object in the JSON data, e.g. no total score set for please to reach");
            }
            return;
         }
      }
      
      public function get o10486() : o14801
      {
         return o14200.o19505.data.o18676(this);
      }
      
      public function o12187(param1:int, param2:Object) : Boolean
      {
         var _loc3_:Boolean = false;
         if(!int(param1))
         {
            if(o6202)
            {
               _loc3_ = o6202.o12187(param1,param2);
            }
         }
         else
         {
            trace("Dynamic Event Messeneger System: Message code is not recognised, code(" + param1 + ")");
         }
         return _loc3_;
      }
      
      private function o1534() : void
      {
         var _loc6_:int = 0;
         var _loc5_:* = o4055;
         for each(var _loc1_ in o4055)
         {
            if(_loc1_["Key Words"])
            {
               var _loc4_:int = 0;
               var _loc3_:* = _loc1_["Key Words"];
               for(var _loc2_ in _loc1_["Key Words"])
               {
                  o16886[_loc2_] = _loc1_["Key Words"][_loc2_];
               }
               continue;
            }
         }
      }
      
      private function o755(param1:Object) : void
      {
         o11004 = null;
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for(var _loc2_ in param1)
         {
            if(_loc2_ != null && _loc2_.search("--") != -1)
            {
               if(param1[_loc2_] != "None")
               {
                  o17867(o14197["[Preset Events]"],param1[_loc2_]);
                  if(o11004)
                  {
                     o4055.push(o11004);
                     o481.push(o8266);
                     o755(o11004);
                  }
               }
               o11004 = null;
            }
         }
      }
      
      private function o3848(param1:Object, param2:String = null) : void
      {
         var _loc5_:int = 0;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc8_:String = o17485(param1,"Event-Icon",o3700) as String;
         this.o3700 = _loc8_.search(o20664) == -1?o20664 + _loc8_:_loc8_;
         var _loc6_:String = o17485(param1,"News-Banner",o4018) as String;
         this.o4018 = _loc6_.search(o20664) == -1?o20664 + _loc6_:_loc6_;
         this.o19688 = type != 3;
         this.o18804 = o17485(param1,"eventRankingType",o18804) as int;
         this.o9854 = o9854 == 0?o805.o13313(o17485(param1,"dynamicEventType",o805.o2479(o9854)) as String):o9854;
         this.o14925 = o17485(param1,"Title",o14925) as String;
         this.o1415 = o17485(param1,"Long-Description",o1415) as String;
         this.o1442 = o17485(param1,"Short-Description",o1442) as String;
         this.o870 = o17485(param1,"Promo-Description",o870) as String;
         this.o4886 = o17485(param1,"Event-Rewards",o4886) as String;
         this.o12665 = o17485(param1,"NewsBanner-Priority",o12665) as int;
         var _loc4_:String = o17485(param1,"MpSpTextHighlightColour","0x" + o17297.toString(16)) as String;
         this.o17297 = uint("0x" + _loc4_.substr(2));
         if(param1["BlackKeyChances"] != null)
         {
            this.o20331 = new o7722(param1["BlackKeyChances"]);
            this.o18188 = true;
         }
         _loc5_ = 0;
         while(_loc5_ < o17439.o17834.length)
         {
            _loc7_ = param1["zombieModifiers"];
            if(_loc7_)
            {
               _loc7_ = _loc7_[o17439.o17834[_loc5_]];
               if(_loc7_)
               {
                  if(o16419[_loc5_] != null)
                  {
                     _loc9_ = o16419[_loc5_];
                     _loc9_.o3848(_loc7_);
                  }
                  else if(param2 == null || param2.search("--") == -1)
                  {
                     _loc9_ = new o9956(_loc7_);
                     if(_loc9_)
                     {
                        o16419[_loc5_] = _loc9_;
                     }
                  }
               }
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < o15542.o5289.length)
         {
            _loc7_ = param1["mapModifiers"];
            if(_loc7_)
            {
               _loc7_ = _loc7_[o15542.o5289[_loc5_]];
               if(_loc7_)
               {
                  if(o18098[_loc5_] != null)
                  {
                     _loc3_ = o18098[_loc5_];
                     _loc3_.o3848(_loc7_);
                  }
                  else if(param2 == null || param2.search("--") == -1)
                  {
                     _loc3_ = new o624(_loc7_);
                     if(_loc3_)
                     {
                        o18098[o15542.o5289[_loc5_]] = _loc3_;
                     }
                  }
               }
            }
            _loc5_++;
         }
         if(param1["modeFilter"] != null)
         {
            o956 = new o2580(param1["modeFilter"],o14197);
         }
         if(param1["ContractSettings"] != null)
         {
            o6202 = new o4788(param1["ContractSettings"],this);
         }
         if(param1["HighScoreEventSettings"] != null)
         {
            o5735 = new o19140(param1["HighScoreEventSettings"]);
         }
         if(param1["GlobalEventData"] != null)
         {
            o6680 = new o20544(param1["GlobalEventData"]);
         }
      }
      
      private function o1919() : void
      {
         var _loc1_:int = 0;
         var _loc2_:o9956 = null;
         _loc1_ = 0;
         while(_loc1_ < o17439.o17834.length)
         {
            _loc2_ = o16419[_loc1_];
            if(_loc2_)
            {
               _loc2_.o5948();
            }
            _loc1_++;
         }
      }
      
      private function o3009(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:o9956 = null;
         _loc2_ = 0;
         while(_loc2_ < o17439.o17834.length)
         {
            if(o16419[_loc2_] != null)
            {
               _loc3_ = o16419[_loc2_];
               if(_loc3_)
               {
                  _loc3_.o3848(param1);
               }
            }
            _loc2_++;
         }
      }
      
      private function o17867(param1:Object, param2:String) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for(var _loc3_ in param1)
         {
            if(_loc3_.charAt(0) != "[")
            {
               if(_loc3_ == param2)
               {
                  o11004 = param1[_loc3_];
                  o8266 = _loc3_;
               }
            }
            else
            {
               o17867(param1[_loc3_],param2);
            }
         }
      }
      
      private function o17485(param1:Object, param2:String, param3:*) : *
      {
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc8_:int = 0;
         if(!param1)
         {
            throw new Error("[Attention Event Manager] Could not find any event information for event preset \'" + o14925 + "\'");
         }
         if(!o3576)
         {
            throw new Error("[Attention Event Manager] Event Manager missing the field \'Event-Preset\' and so no event data can be loaded");
         }
         var _loc9_:* = param3;
         if(param1 && param1[param2] != null && param1[param2] != "[PRESET_DEFINED]")
         {
            _loc9_ = param1[param2];
         }
         var _loc7_:uint = _loc9_ as uint;
         var _loc4_:String = _loc9_ as String;
         _loc7_ = _loc4_ as uint;
         if(_loc9_ as String is String)
         {
            _loc5_ = _loc9_ as String;
            _loc6_ = _loc5_.match(new RegExp(/\[\w+\]/g));
            _loc8_ = 0;
            while(_loc8_ < _loc6_.length)
            {
               if(o16886[_loc6_[_loc8_]] != null)
               {
                  _loc5_ = _loc5_.replace(_loc6_[_loc8_],o16886[_loc6_[_loc8_]]);
               }
               else
               {
                  _loc5_ = _loc5_.replace(_loc6_[_loc8_],"");
               }
               _loc8_++;
            }
            _loc9_ = _loc5_;
         }
         return _loc9_;
      }
      
      public function o19534(param1:o14128) : Boolean
      {
         var _loc2_:o2580 = param1.o956;
         var _loc3_:Boolean = _loc2_.o20501(o9854,o17431);
         if(!_loc3_)
         {
         }
         return _loc3_;
      }
      
      public function o6249(param1:o18442, param2:int, param3:int, param4:int = 1) : o18442
      {
         var _loc5_:* = null;
         if(!o956.o17766(param3))
         {
            return param1;
         }
         if(o11889() && o16419[param1.type] != null)
         {
            _loc5_ = o16419[param1.type];
            if(_loc5_)
            {
               if(param4 >= _loc5_.o2530 && o14200.o19505.o7923.level >= 15)
               {
                  param1.o18476(_loc5_.o6554,_loc5_.o13205,_loc5_.o15321,_loc5_.o4328);
                  if(_loc5_.o18326 == false)
                  {
                     param1.o4111 = true;
                  }
               }
               if(param1.o4084 && param1.o16277)
               {
                  param1.o17127 = _loc5_.o4008 > 0?true:false;
               }
               else if(param1.o16277)
               {
                  param1.o17127 = _loc5_.o16663 > 0?true:false;
               }
               else if(param1.o4084)
               {
                  param1.o17127 = _loc5_.o15533 > 0?true:false;
               }
               else
               {
                  param1.o17127 = _loc5_.o9633 > 0?true:false;
               }
            }
         }
         return param1;
      }
      
      public function o11889() : Boolean
      {
         var _loc3_:* = null;
         var _loc1_:String = o15542.o9146(o3047.o12413,o3047.o14789);
         var _loc2_:Boolean = false;
         if(_loc1_ == "Contract")
         {
            o2580;
            switch(int(o6921.o15035))
            {
               case 0:
                  _loc2_ = o956.o18023;
                  break;
               case 1:
                  _loc2_ = o956.o2627;
                  break;
               case 2:
                  _loc2_ = o956.o1471;
                  break;
               case 3:
                  _loc2_ = o956.o1279;
                  break;
               case 4:
                  _loc2_ = o956.o20245;
            }
         }
         else if(_loc1_ == "Null")
         {
            _loc2_ = false;
         }
         else
         {
            _loc3_ = o18098[_loc1_];
            if(_loc3_)
            {
               _loc2_ = _loc3_.o6837(o3047.o12413);
            }
         }
         return _loc2_;
      }
      
      private function o15173() : void
      {
         switch(int(o9854) - 1)
         {
            case 0:
               this.type = 0;
               break;
            default:
            default:
            default:
               this.type = 5;
               break;
            case 4:
               this.type = 3;
               if(this.o14925 == "Elite Squads")
               {
                  o20963 = 57;
               }
               else if(this.o14925 == "Lone Wolf")
               {
                  o20963 = 58;
               }
               else
               {
                  o20963 = 55;
               }
               break;
            case 5:
               this.o15421 = 4;
               this.type = 1;
               this.o9854 = 15;
               this.o17431 = 6;
               break;
            case 6:
               this.o15421 = 5;
               this.type = 1;
               this.o9854 = 15;
               this.o17431 = 7;
               break;
            case 7:
               this.o15421 = 3;
               this.type = 1;
               this.o9854 = 15;
               this.o17431 = 8;
               break;
            case 8:
            default:
            default:
            default:
            default:
            default:
               this.o15421 = 7;
               this.type = 1;
               this.o9854 = 15;
               this.o17431 = 9;
               break;
            case 14:
               this.type = 1;
         }
      }
      
      private function o18858() : void
      {
         var _loc1_:* = undefined;
         if(o4886 != null && o4886 != "[PRESET_DEFINED]")
         {
            _loc1_ = o8767(type,o4886);
            if(_loc1_)
            {
               this.o9938 = _loc1_;
            }
            return;
         }
         throw new Error("Event rewards cannot be found. Reward ID set to: " + (!!o4886?o4886:"null") + " (If \'null\' then no \'Event-Rewards\' key has been found within any of the eventPresets - If " + "\'[PRESET_DEFINED]\' then no event rewards were overwritten and base rewards were not set up via the Event Manager.");
      }
      
      private function o8767(param1:int, param2:String) : Vector.<o7631>
      {
         var _loc3_:* = null;
         var _loc4_:o638 = o4519.o8116.o15599.o476.o3413(param1);
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
      
      public function o9581() : Vector.<int>
      {
         var _loc1_:int = 0;
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc2_:o624 = null;
         var _loc3_:int = -1;
         _loc1_ = 0;
         while(_loc1_ < o15542.o5289.length)
         {
            if(o18098[o15542.o5289[_loc1_]] != null)
            {
               _loc2_ = o18098[o15542.o5289[_loc1_]];
               if(_loc2_.o15186.o13917)
               {
                  _loc3_ = o15542.o5603(o15542.o5289[_loc1_]);
               }
               _loc4_.push(_loc3_);
            }
            _loc1_++;
         }
         return _loc4_;
      }
      
      public function o19460(param1:int, param2:Boolean, param3:Boolean, param4:int = 0) : int
      {
         var _loc6_:* = NaN;
         var _loc5_:int = 0;
         if(o16419[param1] != null && o14200.o19505.o7923.level >= 15)
         {
            o4914 = o16419[param1];
            if(o4914)
            {
               _loc5_ = o4914.o14951(param2,param3);
            }
         }
         if(_loc5_ > 0 && o4519.o13206.o2685.o4326 == 4)
         {
            _loc6_ = Number(_loc5_ / 10);
            _loc6_ = Number(Math.ceil(_loc6_));
            if(_loc6_ <= 1)
            {
               _loc6_ = 1;
            }
            _loc5_ = _loc6_;
         }
         return _loc5_;
      }
      
      public function o7161() : Boolean
      {
         if(o956.o17766(o3047.o12413) && o11889() && o14200.o19505.o7923.level >= 15)
         {
            return true;
         }
         return false;
      }
      
      public function o10001() : void
      {
         var _loc1_:int = 0;
         trace("");
         trace("+---------------------------------------------------------------------------------------");
         trace("|---------------------------------------------------------------------------------------");
         trace("|");
         trace("| \t\t\t\t\t" + o14925);
         trace("|");
         trace("|---------------------------------------------------------------------------------------");
         trace("|---------------------------------------------------------------------------------------");
         trace("|");
         trace("| Event Title: " + o14925);
         trace("| Icon Image URL: " + o3700);
         trace("| News Banner Image URL: " + o4018);
         trace("| Description Long: " + o1415);
         trace("| Description Short: " + o1442);
         trace("| SP/MP Event Title Message: " + o870);
         trace("| SP/MP Image URL: " + o889);
         trace("| News Banner Priority: " + o12665);
         trace("| Event Rewards Name: " + o4886);
         trace("|");
         trace("+======================================================================================+");
         trace("|");
         trace("| Event Ranking Type: " + o871.o18804(o18804));
         trace("| Dynamic Task Type: " + o805.o2479(o9854));
         trace("| Task Type: " + o2225.o716(o20963));
         trace("| Mode Type: " + o13347.o4705(o15421));
         trace("|");
         trace("+======================================================================================+");
         if(o20331)
         {
            trace("| Black Key Chances");
            trace("+======================================================================================+");
            o20331.o10001();
         }
         trace("+======================================================================================+");
         trace("| Mode Filter Data");
         trace("+======================================================================================+");
         if(o956)
         {
            o956.o10001();
         }
         else
         {
            trace("|");
            trace("| Assumed that there is no need for a mode filter (Apoc/LMS/VS event only etc)");
            trace("|");
         }
         trace("+======================================================================================+");
         trace("| Map Filter Data");
         trace("+======================================================================================+");
         trace("|");
         var _loc4_:o624 = null;
         _loc1_ = 0;
         while(_loc1_ < o15542.o5289.length)
         {
            if(o18098[o15542.o5289[_loc1_]] != null)
            {
               _loc4_ = o18098[o15542.o5289[_loc1_]];
               if(_loc4_)
               {
                  trace("| [" + o15542.o5289[_loc1_] + "]");
                  trace("|    Active Modes +--> " + _loc4_.o10001());
               }
            }
            _loc1_++;
         }
         trace("|");
         trace("+======================================================================================+");
         trace("| Enemy Filter Data");
         trace("+======================================================================================+");
         trace("|");
         var _loc2_:o9956 = null;
         _loc1_ = 0;
         while(_loc1_ < o17439.o17834.length)
         {
            if(o16419[_loc1_] != null)
            {
               _loc2_ = o16419[_loc1_];
               if(_loc2_)
               {
                  trace("| -=[" + o17439.o17834[_loc1_] + "]=-");
                  trace("|");
                  _loc2_.o10001();
               }
            }
            _loc1_++;
         }
         trace("+======================================================================================+");
         if(o6202)
         {
            trace("+======================================================================================+");
            trace("| Contract Data Settings");
            trace("+======================================================================================+");
            o6202.o10001();
            trace("+======================================================================================+");
         }
         trace("| Key Words Loaded");
         trace("+======================================================================================+");
         trace("|");
         var _loc6_:int = 0;
         var _loc5_:* = o16886;
         for(var _loc3_ in o16886)
         {
            trace("| Key: " + _loc3_ + "\t\tReplaced with: " + (o16886[_loc3_] as String));
         }
         trace("+======================================================================================+");
      }
   }
}
