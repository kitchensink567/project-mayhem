package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o7662 extends o9743
   {
       
      
      private var o960:o15625;
      
      private var o3076:o15625;
      
      private var o13632:Vector.<o15625>;
      
      private var o9590:Vector.<o15625>;
      
      private var o2699:o16253;
      
      private var o15162:int = 3;
      
      private var o4265:Boolean = false;
      
      private var o11230:Timer;
      
      private var o3198:Boolean = false;
      
      private var o18899:Boolean = false;
      
      public function o7662()
      {
         super();
         this.o283 = false;
         this.o3880 = false;
      }
      
      private function o10054(param1:Event) : void
      {
         o11230.stop();
         close();
      }
      
      public function o16376() : void
      {
         o11230.stop();
      }
      
      public function o11925(param1:MovieClip) : void
      {
         var _loc4_:int = 0;
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = null;
         super.init(param1);
         o11230 = new Timer(4000);
         o11230.addEventListener("timer",o10054,false,0,true);
         param1.gotoAndStop("In");
         o3076 = o9679.o17578("btnTab");
         o3076.addEventListener("click",o17504,false,0,true);
         o960 = o9679.o17578("btnCancelConfirm");
         o960.addEventListener("click",o6665,false,0,true);
         o960.visible = false;
         o13632 = new Vector.<o15625>();
         o9590 = new Vector.<o15625>();
         o2699 = o4519.o8116.profileData.o5292.o11370;
         var _loc3_:Boolean = o4519.o8116.profileData.o7923.o3525.o17992();
         _loc4_ = 0;
         while(_loc4_ < o15162)
         {
            _loc6_ = o9679.o8759("powerUp" + _loc4_.toString());
            _loc6_.addEventListener("click",o12577,false,0,true);
            _loc6_.o14171 = _loc4_;
            _loc5_ = _loc6_.asset.getChildByName("icon") as MovieClip;
            _loc8_ = o2699.o10961[_loc4_];
            if(_loc3_)
            {
               _loc5_.gotoAndStop(_loc8_.o7784);
            }
            else
            {
               _loc5_.gotoAndStop(_loc8_.o12087);
            }
            _loc7_ = _loc6_.asset.getChildByName("lblCost") as TextField;
            _loc7_.text = "$" + o16724.o10417(_loc8_.o300);
            _loc2_ = o9679.o17578("btnConfirm" + _loc4_.toString());
            _loc2_.o14171 = _loc4_;
            _loc2_.addEventListener("click",o17607,false,0,true);
            _loc2_.visible = false;
            o13632.push(_loc6_);
            o9590.push(_loc2_);
            _loc4_++;
         }
         o4712(true);
         o9042();
      }
      
      public function o9042() : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc1_:int = 0;
         var _loc2_:* = false;
         var _loc6_:* = null;
         var _loc5_:o8443 = o4519.o13206.o2685.o10591[o4519.o32.o5973];
         var _loc7_:Vector.<int> = _loc5_.o11008;
         var _loc8_:Boolean = true;
         _loc4_ = 0;
         while(_loc4_ < o15162)
         {
            _loc3_ = o2699.o10961[_loc4_];
            _loc1_ = _loc3_.id;
            _loc2_ = _loc7_.indexOf(_loc1_) >= 0;
            _loc6_ = o13632[_loc4_];
            _loc6_.enabled = _loc2_ == false;
            if(_loc2_ == false)
            {
               _loc8_ = false;
            }
            _loc4_++;
         }
         this.o4265 = _loc8_;
         this.visible = o4265 == false;
      }
      
      private function o6665(param1:MouseEvent) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = o9590;
         for each(var _loc2_ in o9590)
         {
            _loc2_.visible = false;
         }
         var _loc7_:int = 0;
         var _loc6_:* = o13632;
         for each(var _loc3_ in o13632)
         {
            _loc3_.o3993 = false;
         }
         o960.visible = false;
         o9042();
         this.close();
      }
      
      private function o12577(param1:MouseEvent) : void
      {
         var _loc2_:o15625 = param1.currentTarget as o15625;
         var _loc5_:int = 0;
         var _loc4_:* = o13632;
         for each(var _loc3_ in o13632)
         {
            _loc3_.enabled = false;
         }
         _loc2_.enabled = true;
         _loc2_.o3993 = true;
         o9590[_loc2_.o14171].visible = true;
         o960.visible = true;
         o16376();
      }
      
      private function o17607(param1:MouseEvent) : void
      {
         var _loc3_:o14200 = o4519.o8116.profileData;
         var _loc2_:o15625 = param1.currentTarget as o15625;
         var _loc6_:o8443 = o4519.o13206.o2685.o10591[o4519.o32.o5973];
         var _loc7_:Vector.<int> = _loc6_.o11008;
         var _loc4_:o19467 = o2699.o10961[_loc2_.o14171];
         var _loc5_:Boolean = o4519.o8116.profileData.o7923.o3525.o17992();
         var _loc8_:int = _loc4_.o300;
         if(_loc8_ > _loc3_.o7923.o20170)
         {
            o4519.o13206.o4793();
            o4519.o10093.o16989.o20948(o12891.o19505.o8287);
            return;
         }
         _loc3_.o7923.o20170 = _loc3_.o7923.o20170 - _loc8_;
         _loc4_.o18204();
         _loc7_.push(_loc4_.id);
         o4519.o8116.profileData.o202.o11032.push(_loc4_);
         _loc6_.o12081(_loc7_);
         o12891.o19505.o5674();
         _loc3_.o15894.o4848.o2719.o17459(_loc3_.o202.o10211,_loc4_.id == 4,_loc4_.id == 5,_loc4_.id == 6,true);
         _loc3_.o15894.save();
         o6665(null);
      }
      
      private function o17504(param1:MouseEvent) : void
      {
         if(o11985 == 1)
         {
            this.close();
         }
         else if(o11985 == 3)
         {
            this.o13042(null,null);
         }
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
         o4712(true);
      }
      
      override public function o13640() : void
      {
         o3076.removeEventListener("click",o17504);
         o960.removeEventListener("click",o6665);
         var _loc4_:int = 0;
         var _loc3_:* = o13632;
         for each(var _loc2_ in o13632)
         {
            _loc2_.removeEventListener("click",o12577);
         }
         var _loc6_:int = 0;
         var _loc5_:* = o9590;
         for each(var _loc1_ in o9590)
         {
            _loc1_.removeEventListener("click",o17607);
         }
         o11230.removeEventListener("timer",o10054);
         o3076 = null;
         o13632 = null;
         o9590 = null;
         o960 = null;
         o11230 = null;
         super.o13640();
      }
      
      public function o4246(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = param1 / param2;
         if(o3198 == false && _loc3_ < 0.5)
         {
            o3198 = true;
            this.o18390();
         }
      }
      
      public function o2430() : void
      {
         if(o18899 == false)
         {
            o18899 = true;
            this.o18390();
         }
      }
      
      public function o18390() : void
      {
         if(o4265)
         {
            return;
         }
         this.o16489();
         o11230.start();
      }
   }
}
