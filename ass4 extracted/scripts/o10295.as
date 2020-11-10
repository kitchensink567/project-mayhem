package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class o10295 extends o9743
   {
       
      
      private var o16989:o13064;
      
      private var o2213:o15625;
      
      public function o10295()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:Boolean) : void
      {
         super.init(param1);
         this.o16989 = param2;
         var _loc4_:o20565 = new o20565(this);
         var _loc5_:MovieClip = container.getChildByName("imgContainer") as MovieClip;
         _loc5_.removeChildren(0,_loc5_.numChildren - 1);
         if(o4519.o8116.profileData.o5292.o12970.o3296 != null)
         {
            _loc5_.addChild(o4519.o8116.profileData.o5292.o12970.o14670);
         }
         o2213 = _loc4_.o17578("btnBuy",container);
         o2213.visible = param3;
         o2213.addEventListener("click",o7949,false,0,true);
         _loc4_.o13640();
         _loc4_ = null;
      }
      
      private function o7949(param1:MouseEvent) : void
      {
         o16989.o18430(null);
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
         o4519.o8116.profileData.saveData();
      }
      
      override public function o13640() : void
      {
         o4519.o8116.profileData.o1317.o11294 = o9609.o6223().o20861;
         this.o2213.removeEventListener("click",o7949);
         o16989 = null;
         o2213 = null;
         super.o13640();
      }
   }
}
