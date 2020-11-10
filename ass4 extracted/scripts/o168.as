package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o168 extends o9743
   {
       
      
      protected var o16989:o13064;
      
      private var o2006:MovieClip;
      
      private var o19864:TextField;
      
      private var o9313:TextField;
      
      public function o168()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:Function = null, param4:Function = null) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o9679 = new o20565(this);
         this.o8714 = param3;
         this.o12205 = param4;
         o20173 = o9679.o17578("btnOk",(param1.getChildAt(0) as MovieClip).getChildAt(5) as MovieClip,true);
         o7770 = o9679.o17578("btnCancel",(param1.getChildAt(0) as MovieClip).getChildAt(5) as MovieClip,true);
         if(o20173 != null)
         {
            o20173.addEventListener("click",o5382,false,0,true);
         }
         if(o7770 != null)
         {
            o7770.addEventListener("click",o19172,false,0,true);
         }
         o19864 = ((param1.getChildAt(0) as MovieClip).getChildAt(5) as MovieClip).getChildByName("sasCreds") as TextField;
         o9313 = ((param1.getChildAt(0) as MovieClip).getChildAt(5) as MovieClip).getChildByName("craftCost") as TextField;
         o19864.text = o16724.o10417(o13800.o17142).toString();
         o9313.text = o16724.o10417(o13800.o9692).toString() + " Alloy";
         o2006 = (param1.getChildAt(0) as MovieClip).getChildByName("craftingAnimation") as MovieClip;
         o2006.gotoAndStop(0);
      }
      
      override protected function o5382(param1:Event) : void
      {
         if(o14200.o19505.o7923.o10252 >= o13800.o9692 && o14200.o19505.o7923.o20170 >= o13800.o17142)
         {
            o14200.o19505.o15894.o4848.o2719.o5441(o13800.o9692,o13800.o17142,o14200.o19505.o7923.o10252,o14200.o19505.o7923.o20170);
            o14200.o19505.data.o6234++;
            o11407.o16003();
            o14200.o19505.o7923.o10252 = o14200.o19505.o7923.o10252 - o13800.o9692;
            o14200.o19505.o7923.o20170 = o14200.o19505.o7923.o20170 - o13800.o17142;
            o14200.o19505.o7923.o18104++;
            o14200.o19505.saveData();
            o2006.gotoAndPlay(0);
            o2006.addEventListener("enterFrame",o9593,false,0,true);
            if(o20173 != null)
            {
               o20173.removeEventListener("click",o5382);
               o20173.visible = false;
            }
            if(o7770 != null)
            {
               o7770.removeEventListener("click",o19172);
               o7770.visible = false;
            }
            this.o17920 = false;
         }
         else
         {
            o16989.o12407("Not enough funds to craft this item!","This item requires " + o16724.o10417(o13800.o9692) + " Alloy and $" + o16724.o10417(o13800.o17142) + " SAS cash.");
         }
      }
      
      private function o9593(param1:Event) : void
      {
         if(o2006 && o2006.currentFrame >= o2006.totalFrames)
         {
            o2006.stop();
            if(this.o8714)
            {
               this.o8714();
            }
            super.o5310();
         }
      }
      
      override public function o13640() : void
      {
         o19864 = null;
         o9313 = null;
         o2006 = null;
         super.o13640();
      }
   }
}
