package
{
   public class o2580
   {
       
      
      private var o17890:o10411;
      
      private var o2728:o10411;
      
      private var o10120:o10411;
      
      private var o11784:o10411;
      
      private var o27:o10411;
      
      private var o6622:o10411;
      
      private var o9821:o10411;
      
      private var o2874:o10411;
      
      private var o4860:o10411;
      
      private var o12923:o10411;
      
      private var o14657:o10411;
      
      private var o9275:o10411;
      
      private var o14218:o10411;
      
      public function o2580(param1:String, param2:Object)
      {
         o17890 = new o10411(false);
         o2728 = new o10411(false);
         o10120 = new o10411(false);
         o11784 = new o10411(false);
         o27 = new o10411(false);
         o6622 = new o10411(false);
         o9821 = new o10411(false);
         o2874 = new o10411(false);
         o4860 = new o10411(false);
         o12923 = new o10411(false);
         o14657 = new o10411(false);
         o9275 = new o10411(false);
         o14218 = new o10411(false);
         super();
         param2 = param2["[Properties]"]["modeFilters"][param1];
         if(param2)
         {
            o14031 = !!isNaN(param2["SP"])?false:param2["SP"];
            o2183 = !!isNaN(param2["MP"])?false:param2["MP"];
            o1654 = !!isNaN(param2["NOR"])?false:param2["NOR"];
            o5788 = !!isNaN(param2["NM"])?false:param2["NM"];
            o16219 = !!isNaN(param2["LMS"])?false:param2["LMS"];
            o15626 = !!isNaN(param2["VS"])?false:param2["VS"];
            o18255 = !!isNaN(param2["AP"])?false:param2["AP"];
            o17024 = !!isNaN(param2["AV"])?false:param2["AV"];
            o1471 = !!isNaN(param2["SWS"])?false:param2["SWS"];
            o2627 = !!isNaN(param2["AR"])?false:param2["AR"];
            o18023 = !!isNaN(param2["DR"])?false:param2["DR"];
            o1279 = !!isNaN(param2["ES"])?false:param2["ES"];
            o20245 = !!isNaN(param2["ZH"])?false:param2["ZH"];
         }
      }
      
      public function get o14031() : Boolean
      {
         return this.o17890.value;
      }
      
      public function get o2183() : Boolean
      {
         return this.o2728.value;
      }
      
      public function get o1654() : Boolean
      {
         return this.o10120.value;
      }
      
      public function get o5788() : Boolean
      {
         return this.o11784.value;
      }
      
      public function get o16219() : Boolean
      {
         return this.o27.value;
      }
      
      public function get o15626() : Boolean
      {
         return this.o6622.value;
      }
      
      public function get o18255() : Boolean
      {
         return this.o9821.value;
      }
      
      public function get o17024() : Boolean
      {
         return this.o2874.value;
      }
      
      public function get o1471() : Boolean
      {
         return this.o4860.value;
      }
      
      public function get o1279() : Boolean
      {
         return this.o12923.value;
      }
      
      public function get o18023() : Boolean
      {
         return this.o14657.value;
      }
      
      public function get o20245() : Boolean
      {
         return this.o9275.value;
      }
      
      public function get o2627() : Boolean
      {
         return this.o14218.value;
      }
      
      public function set o14031(param1:Boolean) : void
      {
         this.o17890.value = param1;
      }
      
      public function set o2183(param1:Boolean) : void
      {
         this.o2728.value = param1;
      }
      
      public function set o1654(param1:Boolean) : void
      {
         this.o10120.value = param1;
      }
      
      public function set o5788(param1:Boolean) : void
      {
         this.o11784.value = param1;
      }
      
      public function set o16219(param1:Boolean) : void
      {
         this.o27.value = param1;
      }
      
      public function set o15626(param1:Boolean) : void
      {
         this.o6622.value = param1;
      }
      
      public function set o18255(param1:Boolean) : void
      {
         this.o9821.value = param1;
      }
      
      public function set o17024(param1:Boolean) : void
      {
         this.o2874.value = param1;
      }
      
      public function set o1471(param1:Boolean) : void
      {
         this.o4860.value = param1;
      }
      
      public function set o1279(param1:Boolean) : void
      {
         this.o12923.value = param1;
      }
      
      public function set o18023(param1:Boolean) : void
      {
         this.o14657.value = param1;
      }
      
      public function set o20245(param1:Boolean) : void
      {
         this.o9275.value = param1;
      }
      
      public function set o2627(param1:Boolean) : void
      {
         this.o14218.value = param1;
      }
      
      public function o20501(param1:int, param2:int) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc3_:* = param1;
         if(param1 == 15)
         {
            _loc3_ = param2;
         }
         switch(int(_loc3_) - 1)
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
               if(o14031 && !o3047.o470 || o2183 && o3047.o470)
               {
                  _loc4_ = true;
               }
               break;
            case 5:
               _loc4_ = o16219;
               break;
            case 6:
               _loc4_ = o18255;
               break;
            case 7:
               _loc4_ = o17024;
               break;
            case 8:
               _loc4_ = o15626;
               break;
            case 9:
               _loc4_ = o1471;
               break;
            case 10:
               _loc4_ = o2627;
               break;
            case 11:
               _loc4_ = o18023;
               break;
            case 12:
               _loc4_ = o1279;
               break;
            case 13:
               _loc4_ = o20245;
         }
         return _loc4_;
      }
      
      public function o17766(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         switch(int(param1) - 100)
         {
            case 0:
               _loc2_ = o2627;
               break;
            case 1:
               _loc2_ = o18023;
               break;
            case 2:
               _loc2_ = o1279;
               break;
            case 3:
               _loc2_ = o1471;
               break;
            case 4:
               _loc2_ = o20245;
         }
         if(_loc2_)
         {
            if(o14031 && !o3047.o470 || o2183 && o3047.o470)
            {
               return _loc2_;
            }
            return false;
         }
         switch(int(param1) - 3)
         {
            case 0:
               return o17024;
            case 1:
               return o16219;
            case 2:
               return o18255;
            default:
               switch(int(param1))
               {
                  case 0:
                  case 1:
                     _loc2_ = o1654;
                     if(_loc2_ && o14031 && !o3047.o470 || _loc2_ && o2183 && o3047.o470)
                     {
                        _loc2_ = true;
                        return _loc2_;
                     }
                     return _loc2_;
                  case 2:
                     return o5788;
               }
            case 4:
               return o15626;
         }
      }
      
      public function o10001() : void
      {
         trace("|");
         trace("|-- Main Filter Flags --");
         trace("| Singleplayer: \t\t\t" + o14031);
         trace("| Multiplayer: \t\t\t\t" + o2183);
         trace("|");
         trace("| +-----+");
         trace("|\t== Mission Types ==");
         trace("|\t|");
         trace("|\t+-> Normal Missions: \t\t" + o1654);
         trace("|\t+-> Nightmare: \t\t\t" + o5788);
         trace("|");
         trace("|\t== Events ==");
         trace("|\t|");
         trace("|\t+-> Last Man Standing: \t\t" + o16219);
         trace("|\t+-> Virus Samples: \t\t" + o15626);
         trace("|\t+-> Apocalypse: \t\t" + o18255);
         trace("|\t+-> Alpha Virus: \t\t" + o17024);
         trace("|");
         trace("|\t== Contracts ==");
         trace("|\t|");
         trace("|\t+-> Support Weapons Shipment: \t" + o1471);
         trace("|\t+-> Equipment Salvage: \t\t" + o1279);
         trace("|\t+-> Data Retrieval: \t\t" + o18023);
         trace("|\t+-> Zombie Hotspot: \t\t" + o20245);
         trace("|\t+-> Ammo Recovery: \t\t" + o2627);
      }
      
      public function o19115() : void
      {
         o17890.o19115();
         o2728.o19115();
         o11784.o19115();
         o27.o19115();
         o6622.o19115();
         o9821.o19115();
         o2874.o19115();
         o4860.o19115();
         o12923.o19115();
         o14657.o19115();
         o9275.o19115();
         o14218.o19115();
         o17890 = null;
         o2728 = null;
         o11784 = null;
         o27 = null;
         o6622 = null;
         o9821 = null;
         o2874 = null;
         o4860 = null;
         o12923 = null;
         o14657 = null;
         o9275 = null;
         o14218 = null;
      }
   }
}
