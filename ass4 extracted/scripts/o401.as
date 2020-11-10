package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o401 extends o9743
   {
       
      
      private var o9583:o12290;
      
      private var o11034:o12290;
      
      private var o16989:o13064;
      
      private var o7290:o15625;
      
      private var o1385:o15625;
      
      private var o3449:o15625;
      
      private var o15196:o15625;
      
      private var o459:TextField;
      
      private var o5902:MovieClip;
      
      private var o7552:MovieClip;
      
      private var o15170:TextField;
      
      private var o13027:TextField;
      
      private var o1082:TextField;
      
      private var o8574:TextField;
      
      private var o16771:MovieClip;
      
      private var o19419:o14200;
      
      private var o2045:o20094;
      
      public function o401()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc4_:* = null;
         super.init(param1);
         this.o16989 = param2;
         o19419 = o4519.o8116.profileData;
         var _loc3_:o20565 = new o20565(this);
         o3449 = _loc3_.o17578("btnArmorAugCore",container);
         o7290 = _loc3_.o17578("btnWeaponAugCore",container);
         o1082 = container.getChildByName("lblEliteCores") as TextField;
         o1385 = _loc3_.o17578("btnCraftEliteCore",container);
         o8574 = o1385.asset.getChildByName("shards") as TextField;
         o13027 = o1385.asset.getChildByName("sasCreds") as TextField;
         o13027.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
         o5902 = container.getChildByName("shardsCounter") as MovieClip;
         o459 = o5902.getChildByName("shards") as TextField;
         o15196 = _loc3_.o17578("btnMoreInfo",container);
         o16771 = container.getChildByName("sasCash") as MovieClip;
         o15170 = o16771.getChildByName("lblSasMoney") as TextField;
         o15170.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
         o9583 = _loc3_.o15961("btnDebug","Blk SB+E-Core",container);
         o9583.visible = false;
         o11034 = _loc3_.o15961("btnDebugAlloy","More Alloy",container);
         o11034.visible = false;
         o3449.addEventListener("click",o13636,false,0,true);
         o7290.addEventListener("click",o10883,false,0,true);
         o7552 = container.getChildByName("craftingLocked") as MovieClip;
         if(o13800.o8459)
         {
            if(o14200.o19505.o7923.level >= 35)
            {
               o1385.addEventListener("click",o9405,false,0,true);
               o7552.visible = false;
            }
            else
            {
               o7552.visible = true;
               _loc4_ = o7552.getChildByName("txt") as TextField;
               _loc4_.text = "Unlock at level " + 35;
            }
            o15196.addEventListener("click",o20124,false,0,true);
         }
         else
         {
            o8574.visible = false;
            o1385.visible = false;
            o5902.visible = false;
            o15196.visible = false;
            o7552.visible = false;
         }
         _loc3_.o13640();
         _loc3_ = null;
         o2045 = new o20094();
         o2045.o16384(container,param2,null);
         this.o5452(o2045);
         o2045.o14826(o19995);
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         if(o13800.o8459)
         {
            o1082.text = "You have " + o19419.o7923.o18104.toString() + " Elite Augment Cores";
            o459.text = o16724.o10417(o14200.o19505.o7923.o10252) + " Alloy";
            o8574.text = o16724.o10417(o13800.o9692) + " Alloy";
            o13027.text = "$" + o16724.o10417(o13800.o17142);
            o15170.text = "$" + o16724.o10417(o14200.o19505.o7923.o20170);
         }
      }
      
      protected function o19995() : void
      {
         draw();
      }
      
      private function o20124(param1:MouseEvent) : void
      {
         if(o13800.o15839().o19134)
         {
            this.o16989.o15563(o9102,"Go to Collections");
         }
      }
      
      private function o9102() : void
      {
         this.close();
         this.o16989.o9162();
      }
      
      private function o9405(param1:MouseEvent) : void
      {
         if(o2045.o1708)
         {
            return;
         }
         o16989.o8529(draw);
      }
      
      private function o10883(param1:MouseEvent) : void
      {
         if(o2045.o1708)
         {
            return;
         }
         if(o19419.o7923.o20557() <= 0)
         {
            return;
         }
         o16989.o11214(true,o1258);
      }
      
      private function o13636(param1:MouseEvent) : void
      {
         if(o2045.o1708)
         {
            return;
         }
         if(o19419.o7923.o16938() <= 0)
         {
            return;
         }
         o16989.o11214(false,o1258);
      }
      
      override public function o13640() : void
      {
         o1385.removeEventListener("click",o10883);
         o7290.removeEventListener("click",o10883);
         o3449.removeEventListener("click",o13636);
         o15196.removeEventListener("click",o20124);
         o19419 = null;
         o9583 = null;
         o15170 = null;
         o16989 = null;
         o13027 = null;
         o15196 = null;
         o11034 = null;
         o1082 = null;
         o5902 = null;
         o459 = null;
         o1385 = null;
         o3449 = null;
         o7290 = null;
         o8574 = null;
         o2045 = null;
         super.o13640();
      }
   }
}
