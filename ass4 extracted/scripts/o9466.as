package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class o9466 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o19239:o20421;
      
      private var o8294:o20421;
      
      private var o16368:o20421;
      
      private var o20833:o20421;
      
      private var o20375:o20421;
      
      protected var o2217:o10832;
      
      public var o3611:Boolean = true;
      
      private var o15801:o15625;
      
      private var o15096:o15625;
      
      private var o4902:o15625;
      
      private var o5789:MovieClip;
      
      private var o2319:MovieClip;
      
      private var o8559:MovieClip;
      
      private var o10955:Vector.<o14096>;
      
      private var o11531:Vector.<o1253>;
      
      private var o20165:Vector.<o14096>;
      
      private var o16312:Vector.<o1253>;
      
      private var o16143:int = 1;
      
      private var o2516:int = 1;
      
      private var o12008:int = 0;
      
      private var o14823:o12290;
      
      private var o3170:o12290;
      
      private var o20745:o12290;
      
      private var o15196:o15625;
      
      private var o18148:int = 0;
      
      private var o16985:int = 0;
      
      private var o12130:Dictionary;
      
      private var o18044:Dictionary;
      
      private var o9679:o20565;
      
      private var o14532:int = 0;
      
      private var o14001:TextField;
      
      private var o4636:TextField;
      
      public function o9466()
      {
         o10955 = new Vector.<o14096>();
         o11531 = new Vector.<o1253>();
         o20165 = new Vector.<o14096>();
         o16312 = new Vector.<o1253>();
         super();
      }
      
      private function o5180(param1:int, param2:String) : o12290
      {
         var _loc3_:o12290 = o9679.o15961("radWeaponCategory" + param1.toString(),param2,o5789);
         o12130[param1] = _loc3_;
         return _loc3_;
      }
      
      private function o15854(param1:int, param2:String) : o12290
      {
         var _loc3_:o12290 = o9679.o15961("radEquipmentCategory" + param1.toString(),param2,o2319);
         o18044[param1] = _loc3_;
         return _loc3_;
      }
      
      private function o4116(param1:int, param2:String) : o12290
      {
         var _loc3_:o12290 = o9679.o15961("radTop" + param1.toString(),param2,o8559);
         return _loc3_;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc8_:int = 0;
         var _loc10_:* = null;
         var _loc3_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o18173();
         o13585();
         o9679 = new o20565(this);
         o14001 = container.getChildByName("lblInfo") as TextField;
         o14001.text = "";
         o4636 = container.getChildByName("lblCollectionRewards") as TextField;
         o15801 = o9679.o15961("btnAddAll","Add Page - 1",container);
         o15096 = o9679.o15961("btnAddPage","Add Page",container);
         o4902 = o9679.o15961("btnClear","Clear",container);
         o15801.visible = false;
         o15096.visible = false;
         o4902.visible = false;
         o14823 = o9679.o15961("btnWeapons","Weapons (" + o18148.toString() + "/" + o20165.length.toString() + ")",container);
         o3170 = o9679.o15961("btnEquipment","Armor (" + o16985.toString() + "/" + o16312.length.toString() + ")",container);
         o20745 = o9679.o15961("btnTop","Top Records",container);
         o19239 = o9679.o3538([o14823,o3170,o20745]);
         o19239.o2120 = 0;
         o19239.addEventListener(o5595.o16737,o9000,false,0,true);
         var _loc13_:o12290 = o9679.o15961("radVersion0","Standard",container);
         var _loc14_:o12290 = o9679.o15961("radVersion1","Red",container);
         var _loc5_:o12290 = o9679.o15961("radVersion2","Black",container);
         o8294 = o9679.o3538([_loc13_,_loc14_,_loc5_]);
         o8294.o2120 = 0;
         o8294.addEventListener(o5595.o16737,o10438,false,0,true);
         o12130 = new Dictionary();
         o5789 = container.getChildByName("weaponCategory") as MovieClip;
         o2319 = container.getChildByName("equipmentCategory") as MovieClip;
         o8559 = container.getChildByName("topCategory") as MovieClip;
         o2319.visible = false;
         o8559.visible = false;
         var _loc12_:Array = [];
         _loc12_.push(o5180(1,"Pistol"));
         _loc12_.push(o5180(2,"SMG"));
         _loc12_.push(o5180(3,"Assault Rifle"));
         _loc12_.push(o5180(4,"Shotgun"));
         _loc12_.push(o5180(5,"Sniper Rifle"));
         _loc12_.push(o5180(6,"Rocket Launcher"));
         var _loc11_:o12290 = o5180(7,"Paw");
         _loc11_.visible = false;
         _loc12_.push(_loc11_);
         _loc12_.push(o5180(8,"Flame Thrower"));
         _loc12_.push(o5180(9,"LMG"));
         _loc12_.push(o5180(10,"Disc Thrower"));
         _loc12_.push(o5180(11,"Laser"));
         o16368 = o9679.o3538(_loc12_);
         o16368.o2120 = 0;
         o16368.addEventListener(o5595.o16737,o9977,false,0,true);
         var _loc4_:Array = [];
         _loc4_.push(o4116(0,"Total Damage"));
         _loc4_.push(o4116(1,"SP Kills"));
         _loc4_.push(o4116(2,"MP Kills"));
         _loc4_.push(o4116(3,"Boss Kills"));
         _loc4_.push(o4116(4,"Service Record"));
         _loc4_.push(o4116(5,"Max Damage"));
         o20375 = o9679.o3538(_loc4_);
         o20375.o2120 = 0;
         o20375.addEventListener(o5595.o16737,o15804,false,0,true);
         o18044 = new Dictionary();
         var _loc15_:Array = [];
         _loc15_.push(o15854(0,"Helmet"));
         _loc15_.push(o15854(1,"Vest"));
         _loc15_.push(o15854(2,"Pants"));
         _loc15_.push(o15854(3,"Gloves"));
         _loc15_.push(o15854(4,"Boots"));
         o20833 = o9679.o3538(_loc15_);
         o20833.o2120 = 0;
         o20833.addEventListener(o5595.o16737,o10693,false,0,true);
         var _loc7_:o15625 = o9679.o17578("btnPrev",container);
         var _loc9_:o15625 = o9679.o17578("btnNext",container);
         var _loc16_:Vector.<o15625> = new Vector.<o15625>();
         _loc8_ = 0;
         while(_loc8_ < 16)
         {
            _loc10_ = container.getChildByName("btnWeapon" + _loc8_) as MovieClip;
            _loc3_ = new o15653();
            _loc3_.init(_loc10_);
            this.o5452(_loc3_);
            _loc16_.push(_loc3_);
            _loc8_++;
         }
         o15196 = o9679.o17578("btnMoreInfo",container);
         if(o13800.o15839().o19134)
         {
            o15196.visible = true;
            o15196.addEventListener("click",o20124,false,0,true);
         }
         else
         {
            o15196.visible = false;
         }
         var _loc6_:MovieClip = container.getChildByName("weaponRecordPagingCenter") as MovieClip;
         o2217 = o9679.o3870(_loc7_,_loc9_,_loc16_,o19269,_loc6_);
         o2217.addEventListener(o5595.o16737,o7685,false,0,true);
         o2217.o1746(o14793());
         o2217.o1258();
         o10455();
      }
      
      override protected function o12638(param1:Event) : void
      {
         o14200.o19505.o7923.o13012.o19556();
         super.o12638(param1);
      }
      
      private function o18173(param1:Boolean = false) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         if(param1)
         {
            o20165 = new Vector.<o14096>();
            o10955 = new Vector.<o14096>();
         }
         var _loc3_:o14200 = o14200.o19505;
         var _loc2_:Dictionary = _loc3_.data.o14403;
         o18148 = 0;
         var _loc9_:int = 0;
         var _loc8_:* = o4519.o8116.o1184.o6795;
         for each(var _loc4_ in o4519.o8116.o1184.o6795)
         {
            if(_loc4_.o5168 == false && _loc4_.o6947 == false && _loc4_.o11412 != 13)
            {
               _loc7_ = _loc3_.o15894.o19318(_loc4_.id);
               _loc7_.grade = -1;
               _loc7_.o17656.length = 0;
               _loc7_.o4680 = 0;
               if(_loc2_[_loc4_.id] != null)
               {
                  o18148 = Number(o18148) + 1;
                  _loc6_ = _loc2_[_loc4_.id] as o15520;
                  _loc7_.grade = _loc6_.o963;
                  _loc5_ = 0;
                  while(_loc5_ < _loc6_.o14451)
                  {
                     _loc7_.o17656.push(new o3743());
                     _loc5_++;
                  }
                  _loc7_.o4680 = _loc6_.o14451;
               }
               o20165.push(_loc7_);
            }
         }
      }
      
      private function o20124(param1:MouseEvent) : void
      {
         if(o13800.o15839().o19134)
         {
            this.o16989.o15563(o9102,"See Crafting Menu");
         }
      }
      
      private function o9102() : void
      {
         o7685(new o11507("",0));
      }
      
      private function o2713() : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         _loc4_ = 1;
         while(_loc4_ <= 12)
         {
            _loc2_ = 0;
            _loc6_ = 0;
            var _loc8_:int = 0;
            var _loc7_:* = o20165;
            for each(_loc3_ in o20165)
            {
               if(!(_loc3_.o2752.o6365 != _loc4_ || _loc3_.o2752.o11570 != o16143))
               {
                  if(_loc3_.grade != -1)
                  {
                     _loc2_++;
                  }
                  _loc6_++;
               }
            }
            if(!(_loc6_ == 0 && _loc2_ == 0))
            {
               _loc1_ = o12130[_loc4_] as o12290;
               _loc5_ = "???";
               _loc5_ = o2150(_loc4_);
               _loc1_.o13586 = _loc5_ + " (" + _loc2_.toString() + "/" + _loc6_.toString() + ")";
            }
            _loc4_++;
         }
      }
      
      private function o2150(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Pistol";
            case 1:
               return "SMG";
            case 2:
               return "Assault Rifle";
            case 3:
               return "Shotgun";
            case 4:
               return "Sniper Rifle";
            case 5:
               return "Rocket Launcher";
            case 6:
               return "PAW";
            case 7:
               return "Flame Thrower";
            case 8:
               return "LMG";
            case 9:
               return "Disc Thrower";
            case 10:
               return "Laser";
         }
      }
      
      private function o17835(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Pistols";
            case 1:
               return "SMGs";
            case 2:
               return "Assault Rifles";
            case 3:
               return "Shotguns";
            case 4:
               return "Sniper Rifles";
            case 5:
               return "Rocket Launchers";
            case 6:
               return "PAWs";
            case 7:
               return "Flame Throwers";
            case 8:
               return "LMGs";
            case 9:
               return "Disc Throwers";
            case 10:
               return "Lasers";
         }
      }
      
      private function o8619() : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         _loc4_ = 0;
         while(_loc4_ <= 4)
         {
            _loc2_ = 0;
            _loc6_ = 0;
            var _loc8_:int = 0;
            var _loc7_:* = o16312;
            for each(_loc3_ in o16312)
            {
               if(!(_loc3_.o10239.o20559 != _loc4_ || _loc3_.o10239.o18072 != o16143))
               {
                  if(_loc3_.grade != -1)
                  {
                     _loc2_++;
                  }
                  _loc6_++;
               }
            }
            _loc1_ = o18044[_loc4_] as o12290;
            _loc5_ = "???";
            switch(int(_loc4_))
            {
               case 0:
                  _loc5_ = "Helmet";
                  break;
               case 1:
                  _loc5_ = "Vest";
                  break;
               case 2:
                  _loc5_ = "Pants";
                  break;
               case 3:
                  _loc5_ = "Gloves";
                  break;
               case 4:
                  _loc5_ = "Boots";
            }
            _loc1_.o13586 = _loc5_ + " (" + _loc2_.toString() + "/" + _loc6_.toString() + ")";
            _loc4_++;
         }
      }
      
      public function o8202(param1:int) : String
      {
         switch(int(param1))
         {
            case 0:
               return "Helmets";
            case 1:
               return "Vests";
            case 2:
               return "Pants";
            case 3:
               return "Gloves";
            case 4:
               return "Boots";
         }
      }
      
      private function o13585(param1:Boolean = false) : void
      {
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc7_:int = 0;
         if(param1)
         {
            o16312 = new Vector.<o1253>();
            o11531 = new Vector.<o1253>();
         }
         var _loc2_:o14200 = o14200.o19505;
         var _loc5_:o17849 = o4519.o8116.o16619;
         o16985 = 0;
         var _loc6_:Dictionary = _loc2_.data.o1402;
         var _loc10_:int = 0;
         var _loc9_:* = o4519.o8116.o9511.o4256;
         for each(var _loc4_ in o4519.o8116.o9511.o4256)
         {
            _loc3_ = null;
            _loc3_ = new o1253().init(_loc4_,-1,_loc5_,0,-1);
            _loc3_.o1281();
            if(_loc6_[_loc3_.o15372] != null)
            {
               o16985 = Number(o16985) + 1;
               _loc8_ = _loc6_[_loc3_.o15372] as o15520;
               _loc3_.grade = _loc8_.o963;
               _loc7_ = 0;
               while(_loc7_ < _loc8_.o14451)
               {
                  _loc3_.o17656.push(new o3743());
                  _loc7_++;
               }
               _loc3_.o4680 = _loc8_.o14451;
            }
            if(_loc3_.o9912.indexOf("template") < 0)
            {
               o16312.push(_loc3_);
            }
         }
      }
      
      private function o9000(param1:o11507) : void
      {
         o3611 = param1.o6457 != 1;
         o5789.visible = param1.o6457 == 0;
         o2319.visible = param1.o6457 == 1;
         o8559.visible = param1.o6457 == 2;
         o10455();
      }
      
      private function o10438(param1:o11507) : void
      {
         o16143 = param1.o6457 + 1;
         o10455();
      }
      
      private function o9977(param1:o11507) : void
      {
         o2516 = param1.o6457 + 1;
         o10455();
      }
      
      private function o10693(param1:o11507) : void
      {
         o12008 = param1.o6457;
         o10455();
      }
      
      private function o15804(param1:o11507) : void
      {
         o14532 = param1.o6457;
         o10455();
      }
      
      public function o14477(param1:o7705) : String
      {
         if(param1.o5411 < param1.o14170)
         {
            return "(" + param1.o5411.toString() + "/" + param1.o14170.toString() + ")";
         }
         return "(Complete)";
      }
      
      private function o10455(param1:Boolean = false) : void
      {
         var _loc4_:* = null;
         var _loc7_:* = null;
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc10_:* = null;
         if(param1)
         {
            o13585(param1);
            o18173(param1);
         }
         o2217.removeEventListener(o5595.o16737,o7685);
         o2217.o2120 = -1;
         o2217.addEventListener(o5595.o16737,o7685,false,0,true);
         o2217.o1746(o14793());
         o2217.o1258();
         o2217.o10459 = 0;
         if(o3611)
         {
            _loc7_ = o14200.o19505.o5292.o20827.o14852(this.o2516,this.o16143);
         }
         else
         {
            _loc7_ = o14200.o19505.o5292.o20827.o6194(this.o12008,this.o16143);
         }
         var _loc5_:o9145 = o14200.o19505.o7923;
         o4636.visible = this.o19239.o2120 != 2;
         if(this.o19239.o2120 == 2)
         {
            o14001.text = "";
         }
         else
         {
            if(_loc7_ == null)
            {
               o14001.text = "";
            }
            else
            {
               if(o3611)
               {
                  _loc9_ = _loc5_.o13012.o5145(o16143,o2516);
                  _loc3_ = o17835(o2516);
               }
               else
               {
                  _loc9_ = _loc5_.o13012.o18221(o16143,o12008);
                  _loc3_ = o8202(o12008);
               }
               _loc2_ = "";
               if(this.o16143 == 1)
               {
                  _loc2_ = "Collect any version of all " + _loc3_;
               }
               else if(o16143 == 2)
               {
                  _loc2_ = "Collect all red " + _loc3_;
               }
               else
               {
                  _loc2_ = "Collect all black " + _loc3_;
               }
               o14001.text = _loc2_ + ": " + _loc7_.o9938[0].o13404();
               o14001.text = o14001.text + (" " + o14477(_loc9_) + "\n");
            }
            _loc6_ = "";
            if(o3611)
            {
               _loc9_ = _loc5_.o13012.o5145(this.o16143);
               _loc8_ = o14200.o19505.o5292.o20827.o7544(this.o16143);
            }
            else
            {
               _loc9_ = _loc5_.o13012.o18221(this.o16143);
               _loc8_ = o14200.o19505.o5292.o20827.o6120(this.o16143);
            }
            _loc10_ = !!o3611?" weapons":"armor";
            if(o16143 == 1)
            {
               _loc6_ = _loc6_ + ("Collect any version of all " + _loc10_);
            }
            else if(o16143 == 2)
            {
               _loc6_ = _loc6_ + ("Collect all red " + _loc10_);
            }
            else
            {
               _loc6_ = "Collect all black " + _loc10_;
            }
            o14001.text = o14001.text + (_loc6_ + ": " + _loc8_.o9938[0].o13404());
            o14001.text = o14001.text + (" " + o14477(_loc9_));
         }
      }
      
      override public function o13640() : void
      {
         this.o9679.o13640();
         o2217.removeEventListener(o5595.o16737,o7685);
         o8294.removeEventListener(o5595.o16737,o10438);
         o19239.removeEventListener(o5595.o16737,o9000);
         o16368.removeEventListener(o5595.o16737,o9977);
         o20833.removeEventListener(o5595.o16737,o10693);
         o20375.removeEventListener(o5595.o16737,o15804);
         o15196.removeEventListener("click",o20124);
         o19239 = null;
         o8294 = null;
         o2217 = null;
         o15801 = null;
         o15096 = null;
         o4902 = null;
         o5789 = null;
         o2319 = null;
         o15196 = null;
         o10955 = null;
         o11531 = null;
         o20165 = null;
         o16312 = null;
         o14823 = null;
         o3170 = null;
         o9679 = null;
         o20745 = null;
         o8559 = null;
         o20375 = null;
         o14001 = null;
         o4636 = null;
         super.o13640();
      }
      
      private function o3326(param1:int) : o14096
      {
         var _loc4_:int = 0;
         var _loc3_:* = o20165;
         for each(var _loc2_ in o20165)
         {
            if(_loc2_.o10748 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function o18078(param1:o14096, param2:o14096) : int
      {
         if(param1.o5588 < param2.o5588)
         {
            return -1;
         }
         if(param1.o5588 > param2.o5588)
         {
            return 1;
         }
         if(param1.o2752.o7498 < param2.o2752.o7498)
         {
            return -1;
         }
         if(param1.o2752.o7498 > param2.o2752.o7498)
         {
            return 1;
         }
         return 0;
      }
      
      private function o1639(param1:o1253, param2:o1253) : int
      {
         if(param1.o5588 < param2.o5588)
         {
            return -1;
         }
         if(param1.o5588 > param2.o5588)
         {
            return 1;
         }
         if(param1.o10239.o7498 < param2.o10239.o7498)
         {
            return -1;
         }
         if(param1.o10239.o7498 > param2.o10239.o7498)
         {
            return 1;
         }
         return 0;
      }
      
      protected function o14793() : int
      {
         var _loc4_:* = null;
         var _loc1_:* = undefined;
         var _loc8_:* = null;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:o14200 = o14200.o19505;
         if(o3611)
         {
            this.o10955.length = 0;
            if(o19239.o2120 == 2)
            {
               _loc1_ = _loc2_.data.o8636(o14532);
               _loc5_ = 16;
               _loc7_ = 0;
               _loc6_ = 0;
               while(_loc6_ < _loc5_)
               {
                  if(_loc6_ < _loc1_.length)
                  {
                     _loc8_ = _loc1_[_loc6_];
                     _loc4_ = o3326(_loc8_.id);
                     _loc7_ = _loc8_.o20820(o14532);
                     if(_loc7_ > 0)
                     {
                        if(_loc4_ != null)
                        {
                           o10955.push(_loc4_);
                        }
                     }
                     _loc6_++;
                     continue;
                  }
                  break;
               }
            }
            else
            {
               var _loc10_:int = 0;
               var _loc9_:* = o20165;
               for each(_loc4_ in o20165)
               {
                  if(_loc4_.o2752.o11570 == o16143 && _loc4_.o2752.o6365 == o2516)
                  {
                     o10955.push(_loc4_);
                  }
               }
               o2713();
               o10955.sort(o18078);
            }
            return o10955.length;
         }
         o11531.length = 0;
         var _loc12_:int = 0;
         var _loc11_:* = o16312;
         for each(var _loc3_ in o16312)
         {
            if(_loc3_.o10239.o18072 == o16143 && _loc3_.o10239.o20559 == o12008)
            {
               o11531.push(_loc3_);
            }
         }
         o8619();
         o11531.sort(o1639);
         return o11531.length;
      }
      
      private function o14630(param1:Boolean, param2:o14096, param3:o15653) : void
      {
         var _loc6_:* = null;
         var _loc5_:int = 0;
         param3.o13586 = param2.o7501;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o2397 = param1;
         param3.o14075 = param2.o4680;
         var _loc7_:o20006 = param2.o8815(null);
         _loc7_.o6088 = param3;
         param3.o3700 = _loc7_;
         var _loc4_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc4_)
         {
            _loc4_.gotoAndStop(o7251.o20313(param2));
         }
         if(o19239.o2120 == 2)
         {
            _loc6_ = o14200.o19505.data.o1334(param2.o10748);
            _loc5_ = _loc6_.o20820(this.o14532);
            param3.o14333 = o16724.o10417(_loc5_);
            if(o14532 == 4)
            {
               param3.o14333 = param3.o14333 + (" game" + (_loc5_ == 1?"":"s"));
            }
            else if(o14532 == 1 || o14532 == 2 || o14532 == 3)
            {
               param3.o14333 = param3.o14333 + (" kill" + (_loc5_ == 1?"":"s"));
            }
            else if(o14532 == 0 || o14532 == 5)
            {
               param3.o14333 = param3.o14333 + " dmg";
            }
            else
            {
               param3.o14333 = "";
            }
         }
         else if(param2.grade < 0)
         {
            param3.o14333 = "Approx Drop Lvl: " + o6239(param2.o5588);
         }
         else
         {
            param3.o14333 = "";
         }
         param3.o1258();
      }
      
      private function o6239(param1:int) : String
      {
         if(param1 > 100)
         {
            return "100";
         }
         return param1.toString();
      }
      
      private function o13091(param1:Boolean, param2:o1253, param3:o15653) : void
      {
         param3.o2397 = param1;
         param3.o13586 = param2.o9912;
         param3.grade = param2.grade;
         param3.o4990 = param2.o5520;
         param3.o14075 = param2.o4680;
         var _loc5_:o20006 = param2.o8815(null);
         _loc5_.o6088 = param3;
         param3.o3700 = _loc5_;
         var _loc4_:MovieClip = param3.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc4_)
         {
            _loc4_.gotoAndStop(o7251.o19044(param2));
         }
         if(param2.grade < 0)
         {
            param3.o14333 = "Approx Drop Lvl: " + o6239(param2.o5588);
         }
         else
         {
            param3.o14333 = "";
         }
         param3.o1258();
      }
      
      protected function o19269(param1:int, param2:o15625) : void
      {
         var _loc5_:* = null;
         var _loc4_:* = null;
         var _loc3_:o15653 = param2 as o15653;
         if(param1 < 0)
         {
            return;
         }
         if(o3611)
         {
            _loc5_ = this.o10955[param1];
            o14630(false,_loc5_,_loc3_);
         }
         else
         {
            _loc4_ = this.o11531[param1];
            o13091(false,_loc4_,_loc3_);
         }
      }
      
      private function o7685(param1:o11507) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc4_:int = param1.o6457;
         if(_loc4_ < 0)
         {
            return;
         }
         this.o2217.o2120 = -1;
         var _loc5_:o4117 = o4117.o18521(o14200.o19505,o14200.o19505.o7923);
         if(o3611)
         {
            _loc3_ = o10955[_loc4_];
            o16989.o18017(_loc3_,_loc5_,null,true,o10455);
         }
         else
         {
            _loc2_ = o11531[_loc4_];
            o16989.o9292(_loc2_,_loc5_,null,true,o10455);
         }
      }
   }
}
