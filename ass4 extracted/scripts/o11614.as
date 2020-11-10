package
{
   import flash.utils.Dictionary;
   
   public class o11614
   {
       
      
      public var o8749:int = -1;
      
      private var o6681:o16123;
      
      private var o13820:o16123;
      
      private var o12323:o16123;
      
      private var o20236:o16123;
      
      private var o1129:o16123;
      
      private var o15947:o16123;
      
      public var o642:Dictionary;
      
      public var o16978:Dictionary;
      
      private var o11963:o16123;
      
      private var o16686:o16123;
      
      private var o19657:o16123;
      
      private var o18227:o16123;
      
      public var o15217:o1928 = null;
      
      public var o10936:int;
      
      public function o11614()
      {
         o6681 = new o16123(0);
         o13820 = new o16123(0);
         o12323 = new o16123(0);
         o20236 = new o16123(0);
         o1129 = new o16123(0);
         o15947 = new o16123(0);
         o642 = new Dictionary();
         o16978 = new Dictionary();
         o11963 = new o16123(0);
         o16686 = new o16123(0);
         o19657 = new o16123(0);
         o18227 = new o16123(0);
         super();
      }
      
      public static function o18106(param1:int) : String
      {
         switch(int(param1) - 55)
         {
            case 0:
               return "customChampionship";
            case 1:
               return "stormOfBullets";
            case 2:
               return "eliteSquads";
            case 3:
               return "loneWolf";
            case 4:
               return "SASBlitz";
         }
      }
      
      public function get o15076() : int
      {
         return o18227.value;
      }
      
      public function set o15076(param1:int) : void
      {
         o18227.value = param1;
      }
      
      public function get o6287() : int
      {
         return o6681.value;
      }
      
      public function set o6287(param1:int) : void
      {
         o6681.value = param1;
      }
      
      public function get o5532() : int
      {
         return o13820.value;
      }
      
      public function set o5532(param1:int) : void
      {
         o13820.value = param1;
      }
      
      public function get o7136() : int
      {
         return o12323.value;
      }
      
      public function set o7136(param1:int) : void
      {
         o12323.value = param1;
      }
      
      public function get o2754() : int
      {
         return o20236.value;
      }
      
      public function set o2754(param1:int) : void
      {
         o20236.value = param1;
      }
      
      public function get o3223() : int
      {
         return o1129.value;
      }
      
      public function set o3223(param1:int) : void
      {
         o1129.value = param1;
      }
      
      public function get o7634() : int
      {
         return o15947.value;
      }
      
      public function set o7634(param1:int) : void
      {
         o15947.value = param1;
      }
      
      public function get o3998() : int
      {
         return o11963.value;
      }
      
      public function set o3998(param1:int) : void
      {
         o11963.value = param1;
      }
      
      public function get o12753() : int
      {
         return o16686.value;
      }
      
      public function set o12753(param1:int) : void
      {
         o16686.value = param1;
      }
      
      public function get o10252() : int
      {
         return o19657.value;
      }
      
      public function set o10252(param1:int) : void
      {
         o19657.value = param1;
      }
      
      public function get o18147() : String
      {
         switch(int(o10936))
         {
            case 0:
               return "bronze";
            case 1:
               return "silver";
            case 2:
               return "gold";
            case 3:
               return "diamond";
            case 4:
               return "redDiamond";
            case 5:
               return "blackDiamond";
         }
      }
      
      public function o8153(param1:int, param2:int) : void
      {
         if(param2 == 0)
         {
            return;
         }
         o642[param1] = param2;
      }
      
      public function o14271(param1:int, param2:int) : void
      {
         if(param2 == 0)
         {
            return;
         }
         o16978[param1] = param2;
      }
      
      private function o3895(param1:Boolean, param2:Array, param3:int, param4:String, param5:String) : void
      {
         if(param3 == 1)
         {
            if(param1)
            {
               param2.push(param4);
            }
            else
            {
               param2.push("1 " + param4);
            }
         }
         else if(param3 > 1)
         {
            param2.push(param3 + " " + param5);
         }
      }
      
      public function o18656(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = true, param9:Boolean = true, param10:Boolean = true, param11:Boolean = true, param12:Boolean = true) : String
      {
         var _loc18_:int = 0;
         var _loc17_:* = null;
         var _loc15_:int = 0;
         var _loc21_:* = null;
         var _loc13_:* = null;
         var _loc20_:Array = [];
         var _loc19_:String = "";
         if(o6287 != 0 && param1 == false)
         {
            _loc18_ = o4519.o8116.profileData.o5292.o11857() * o6287;
            _loc19_ = " ($" + o16724.o10417(_loc18_) + ")";
         }
         if(param8)
         {
            if(o15217 != null)
            {
               _loc17_ = o15217.o229();
               o3895(param1,_loc20_,1,_loc17_.o7501,_loc17_.o7501);
            }
         }
         if(param5)
         {
            o3895(param1,_loc20_,o2754,"Elite Core","Elite Cores");
         }
         if(param11)
         {
            o3895(param1,_loc20_,o7136,"Black Box","Black Boxes");
         }
         if(param10)
         {
            o3895(param1,_loc20_,o5532,"Black Key","Black Keys");
         }
         if(param12)
         {
            o3895(param1,_loc20_,o10252,"Alloy","Alloy");
         }
         if(param4)
         {
            o3895(param1,_loc20_,o7634,"Respec Token","Respec Tokens");
         }
         if(param6)
         {
            o3895(param1,_loc20_,o3223,"Nightmare Ticket","Nightmare Tickets");
         }
         if(param7)
         {
            o3895(param1,_loc20_,o12753,"Full Boost (1 hour)","Full Boost (hours)");
         }
         if(param9)
         {
            var _loc24_:int = 0;
            var _loc23_:* = o642;
            for(var _loc14_ in o642)
            {
               _loc15_ = o642[_loc14_];
               var _loc22_:* = _loc14_;
               switch(_loc22_)
               {
                  case o4189.o19843:
                     o3895(param1,_loc20_,_loc15_,"Steel Box","Steel Boxes");
                     continue;
                  case o4189.o17868:
                     o3895(param1,_loc20_,_loc15_,"Titanium Box","Titanium Boxes");
                     continue;
                  case o4189.o20918:
                     o3895(param1,_loc20_,_loc15_,"Molybdenum Box","Molybdenum Boxes");
                     continue;
                  case o4189.o6765:
                     o3895(param1,_loc20_,_loc15_,"Iridium Box","Iridium Boxes");
                     continue;
                  case o4189.o16296:
                     o3895(param1,_loc20_,_loc15_,"Neodymium Box","Neodymium Boxes");
                     continue;
                  case o4189.o11328:
                     o3895(param1,_loc20_,_loc15_,"Promethium Box","Promethium Boxes");
                     continue;
                  case o4189.o15243:
                     o3895(param1,_loc20_,_loc15_,"Thulium Box","Thulium Boxes");
                     continue;
                  case o4189.o1897:
                     o3895(param1,_loc20_,_loc15_,"Nantonium Box","Nantonium Boxes");
                     continue;
                  default:
                     continue;
               }
            }
         }
         var _loc26_:int = 0;
         var _loc25_:* = o16978;
         for(var _loc16_ in o16978)
         {
            _loc15_ = o16978[_loc16_];
            switch(int(_loc16_) - 1)
            {
               case 0:
                  o3895(param1,_loc20_,_loc15_,"Frag Grenade","Frag Grenades");
                  continue;
               case 1:
                  o3895(param1,_loc20_,_loc15_,"Cryo Grenade","Cryo Grenades");
                  continue;
               default:
                  continue;
               case 3:
                  o3895(param1,_loc20_,_loc15_,"HMG Turret","HMG Turrets");
                  continue;
               case 4:
                  o3895(param1,_loc20_,_loc15_,"Cryo Turret","Cryo Turrets");
                  continue;
               case 5:
                  o3895(param1,_loc20_,_loc15_,"HIKS Turret","HIKS Turrets");
                  continue;
               case 6:
                  o3895(param1,_loc20_,_loc15_,"Missle Turret","Missle Turrets");
                  continue;
               case 7:
                  o3895(param1,_loc20_,_loc15_,"Flame Turret","Flame Turrets");
                  continue;
               case 8:
                  o3895(param1,_loc20_,_loc15_,"Zeus Turrets","Zeus Turrets");
                  continue;
               case 9:
                  o3895(param1,_loc20_,_loc15_,"Plasma Turret","Plasma Turrets");
                  continue;
            }
         }
         if(param3)
         {
            o3895(param1,_loc20_,o3998,"Revive Token","Revive Tokens");
         }
         if(param2)
         {
            o3895(param1,_loc20_,o6287,"SAS Cred Pack" + _loc19_,"SAS Cred Packs" + _loc19_);
         }
         if(_loc20_.length == 0)
         {
            return "";
         }
         if(_loc20_.length == 1)
         {
            return _loc20_[0];
         }
         _loc21_ = _loc20_[_loc20_.length - 1];
         if(param1)
         {
            _loc20_.splice(_loc20_.length - 1,1);
            _loc13_ = _loc20_.join(", ");
            return _loc13_ + " and " + _loc21_;
         }
         return _loc20_.join("\n");
      }
   }
}
