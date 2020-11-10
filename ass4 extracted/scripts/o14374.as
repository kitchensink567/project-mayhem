package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o14374 extends o9743
   {
       
      
      protected var o18855:o15625;
      
      protected var o748:o15625;
      
      protected var o16989:o13064;
      
      public function o14374()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         this.o16989 = param2;
         o18855 = o9679.o17578("btnWatchVideo",container);
         o748 = o9679.o17578("btnCompletePartnerOffers",container);
         var _loc5_:MovieClip = container.getChildByName("videoEarnGroup") as MovieClip;
         var _loc4_:TextField = _loc5_.getChildByName("lblSasCashEarned") as TextField;
         _loc4_.text = "$" + o16724.o10417(param3);
         o18855.addEventListener("click",o17090,false,0,true);
         o748.addEventListener("click",o13781,false,0,true);
      }
      
      override public function o13640() : void
      {
         o18855.removeEventListener("click",o17090);
         o748.removeEventListener("click",o13781);
         o18855 = null;
         o748 = null;
         o16989 = null;
         super.o13640();
      }
      
      public function o17090(param1:MouseEvent) : void
      {
      }
      
      public function o13781(param1:MouseEvent) : void
      {
      }
   }
}
