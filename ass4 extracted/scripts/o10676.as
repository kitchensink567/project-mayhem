package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o10676 extends o6539
   {
       
      
      private var o7750:o20565;
      
      private var o15129:MovieClip;
      
      protected var o16989:o13064;
      
      protected var o9539:o12290;
      
      protected var o2213:o12290;
      
      protected var o15949:o15625;
      
      protected var o7545:o15625;
      
      private var o3871:TextField;
      
      protected var o11010:o10832;
      
      private var o17232:MovieClip;
      
      private var o9680:MovieClip;
      
      private var o2881:MovieClip;
      
      private var o7517:TextField;
      
      private var o18514:TextField;
      
      private var o20233:MovieClip;
      
      private var o11140:TextField;
      
      private var o11503:TextField;
      
      private var o14001:TextField;
      
      private var o7025:MovieClip;
      
      private var o7096:MovieClip;
      
      private var o17135:MovieClip;
      
      protected var o19012:TextField;
      
      public function o10676()
      {
         super();
      }
      
      public function o11347(param1:int, param2:int, param3:int) : void
      {
         o19012.text = "Note: You can only take a maximum of " + param1.toString() + " of each type of turret, " + param2.toString() + " frag grenades and " + param3.toString() + " cryo grenades at the start of each game";
      }
      
      private function o5297(param1:String, param2:MovieClip, param3:int) : o1528
      {
         var _loc4_:o1528 = new o1528();
         _loc4_.init(param2.getChildByName(param1) as MovieClip);
         _loc4_.o13439 = param3;
         this.o5452(_loc4_);
         return _loc4_;
      }
      
      public function o16384(param1:MovieClip, param2:int, param3:o13064) : void
      {
         var _loc7_:int = 0;
         var _loc9_:* = null;
         var _loc4_:* = null;
         super.init(param1);
         this.o16989 = param3;
         o7750 = new o20565(this);
         o15129 = asset.getChildByName("supportDetails") as MovieClip;
         o9539 = o7750.o15961("btnSell","Sell All",o15129);
         o2213 = o7750.o15961("btnBuy","Buy x",o15129);
         o3871 = o15129.getChildByName("lblDetailsTitle") as TextField;
         o7517 = o15129.getChildByName("lblSellFor") as TextField;
         o18514 = o15129.getChildByName("lblPurchaseInfo") as TextField;
         o20233 = o15129.getChildByName("lblUnableToPurchase") as MovieClip;
         o9539.addEventListener("click",o17899,false,0,true);
         o2213.addEventListener("click",o7949,false,0,true);
         o7096 = o15129.getChildByName("turretStats") as MovieClip;
         o11140 = o7096.getChildByName("lblStatHeadings") as TextField;
         o11503 = o7096.getChildByName("lblStatValues") as TextField;
         o17135 = o7096.getChildByName("damageTypeIcon") as MovieClip;
         o17135.gotoAndStop(1);
         o14001 = o15129.getChildByName("lblInfo") as TextField;
         o17232 = o15129.getChildByName("turretDetailsIcon") as MovieClip;
         o9680 = o15129.getChildByName("grenadeDeatilsIcon") as MovieClip;
         o19012 = o15129.getChildByName("lblLimitInfo") as TextField;
         o2881 = o15129.getChildByName("info") as MovieClip;
         o7025 = o15129.getChildByName("brandname") as MovieClip;
         var _loc6_:MovieClip = asset.getChildByName("slotHolder") as MovieClip;
         var _loc5_:Vector.<o15625> = new Vector.<o15625>();
         _loc7_ = 0;
         while(_loc7_ < 10)
         {
            _loc9_ = _loc6_.getChildByName("btnSupport" + _loc7_) as MovieClip;
            _loc4_ = o5297("btnNotPurchased",_loc9_,_loc7_ + 1);
            _loc5_.push(_loc4_);
            _loc7_++;
         }
         o15949 = o7750.o17578("btnPrev",_loc6_);
         o7545 = o7750.o17578("btnNext",_loc6_);
         var _loc8_:MovieClip = _loc6_.getChildByName("weaponRecordPagingCenter") as MovieClip;
         this.o11010 = o7750.o3870(o15949,o7545,_loc5_,o18561,_loc8_);
         o11010.addEventListener(o5595.o16737,o10767,false,0,true);
         o11010.o2120 = 0;
         o5870();
      }
      
      protected function o20387(param1:String, param2:String, param3:String, param4:int, param5:int) : void
      {
         o11140.text = "Damage\nRate of Fire\nRange\nTotal Ammo";
         o11503.text = param1 + "\n" + param2 + "\n" + param3 + "\n" + param4.toString();
         o17135.gotoAndStop(param5);
      }
      
      protected function o4967(param1:String, param2:int) : void
      {
         o11140.text = "Damage\n";
         o11503.text = param1;
         o17135.gotoAndStop(param2);
         o17135.gotoAndStop(param2);
      }
      
      override public function o13640() : void
      {
         o11010.removeEventListener(o5595.o16737,o10767);
         o9539.removeEventListener("click",o17899);
         o2213.removeEventListener("click",o7949);
         o7750.o13640();
         o7750 = null;
         o15129 = null;
         o16989 = null;
         o9539 = null;
         o2213 = null;
         o15949 = null;
         o7545 = null;
         o3871 = null;
         o11010 = null;
         o17232 = null;
         o9680 = null;
         o2881 = null;
         o7517 = null;
         o18514 = null;
         o20233 = null;
         o11140 = null;
         o11503 = null;
         o14001 = null;
         o7025 = null;
         o7096 = null;
         o17135 = null;
         o19012 = null;
         super.o13640();
      }
      
      protected function o15165() : Boolean
      {
         return false;
      }
      
      protected function o9323() : Boolean
      {
         return false;
      }
      
      protected function o1498() : int
      {
         return -1;
      }
      
      protected function o20888() : int
      {
         return -1;
      }
      
      protected function o5942() : void
      {
         if(o15165())
         {
            o19024(o1498());
            o3973(o1498());
         }
         else if(o9323())
         {
            o7056(o20888());
            o19061(o20888());
         }
         o5870();
         this.o1258();
      }
      
      protected function o3232() : void
      {
      }
      
      protected function o1187() : void
      {
      }
      
      private function o17899(param1:MouseEvent) : void
      {
         if(o15165())
         {
            o3232();
         }
         else
         {
            o1187();
         }
      }
      
      private function o7949(param1:MouseEvent) : void
      {
         if(o15165())
         {
            o2102(o1498());
            o3973(o1498());
         }
         else if(o9323())
         {
            o1104(o20888());
            o19061(o20888());
         }
         o5870();
      }
      
      protected function o5053(param1:Boolean) : void
      {
      }
      
      protected function o335() : String
      {
         return "";
      }
      
      protected function o8993() : String
      {
         return "";
      }
      
      public function o14226(param1:int, param2:String, param3:String, param4:int, param5:int, param6:Boolean, param7:int) : void
      {
         o17232.visible = true;
         o9680.visible = false;
         o3871.text = param2;
         o14001.text = param3;
         o17232.gotoAndStop(param1 + 1);
         o7517.text = o335();
         if(param6)
         {
            o18514.text = "for $ " + param4;
         }
         else
         {
            o18514.text = "";
         }
         o2213.o13586 = "Buy";
         o20233.visible = param6 == false;
         o9539.enabled = param5 > 0;
         o2213.enabled = param6;
         o7517.visible = param5 > 0;
         o7025.visible = true;
         o7025.gotoAndStop(param7);
      }
      
      public function o15507(param1:int, param2:String, param3:String, param4:int, param5:int, param6:int) : void
      {
         o17232.visible = false;
         o9680.visible = true;
         o3871.text = param2;
         o14001.text = param3;
         o9680.gotoAndStop(param1);
         o2213.o13586 = "Buy " + param5.toString();
         o7517.text = o8993();
         o18514.text = " for $ " + param4.toString();
         o9539.enabled = param6 > 0;
         o7517.visible = param6 > 0;
         o2213.enabled = true;
         o20233.visible = false;
         o7025.visible = false;
      }
      
      protected function o17536() : int
      {
         return o4502(this.o20888());
      }
      
      protected function o16262() : int
      {
         return o2248(this.o1498());
      }
      
      protected function o5870() : void
      {
      }
      
      protected function o1104(param1:int) : void
      {
      }
      
      protected function o2102(param1:int) : void
      {
      }
      
      protected function o7056(param1:int) : void
      {
      }
      
      protected function o19024(param1:int) : void
      {
      }
      
      protected function o19061(param1:int) : void
      {
      }
      
      protected function o3973(param1:int) : void
      {
      }
      
      protected function o4502(param1:int) : int
      {
         return 0;
      }
      
      protected function o2248(param1:int) : int
      {
         return 0;
      }
      
      protected function o15811(param1:int, param2:o1528) : void
      {
      }
      
      private function o18561(param1:int, param2:o15625) : void
      {
         o15811(param1,param2 as o1528);
      }
      
      private function o10767(param1:o11507) : void
      {
         if(o15165())
         {
            o3973(o1498());
         }
         else if(o9323())
         {
            o19061(o20888());
         }
      }
   }
}
