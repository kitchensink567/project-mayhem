package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o18975 extends o9743
   {
       
      
      private var o10454:o15625;
      
      private var o20323:o5625;
      
      private var o9957:Boolean = false;
      
      private var o16989:o13064;
      
      public function o18975()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         super.init(param1);
         this.o16989 = param2;
         var _loc4_:o14200 = o4519.o8116.profileData;
         o10454 = o9679.o17578("btnCollect",container);
         o10454.addEventListener("click",o8225,false,0,true);
         var _loc7_:TextField = container.getChildByName("title") as TextField;
         _loc7_.text = "Daily Reward for " + _loc4_.o7923.o12110;
         var _loc6_:Vector.<o5625> = o9609.o6223().o11087.o11087;
         var _loc3_:MovieClip = container.getChildByName("imagesContainer0") as MovieClip;
         var _loc11_:int = 0;
         var _loc10_:* = _loc6_;
         for each(var _loc8_ in _loc6_)
         {
            _loc3_.gotoAndStop(_loc8_.o7219);
         }
         var _loc5_:int = _loc4_.o7923.o717;
         o20323 = o19217(_loc5_,0);
         o19217(_loc5_ + 1,1);
         o19217(_loc5_ + 2,2);
         o19217(_loc5_ + 3,3);
         var _loc9_:TextField = container.getChildByName("info") as TextField;
         _loc9_.text = "Congratulations! Your victory has earned: \n(x" + o20323.o7219 + ")";
      }
      
      private function o19217(param1:int, param2:int) : o5625
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc6_:* = null;
         var _loc3_:MovieClip = container.getChildByName("imagesContainer" + param2.toString()) as MovieClip;
         var _loc7_:o5625 = o9609.o6223().o11087.o16507(param1);
         if(_loc7_ == null)
         {
            throw new Error("Reward error");
         }
         try
         {
            _loc3_.gotoAndStop(_loc7_.o7219);
            if(_loc7_.o5921 == 3)
            {
               _loc5_ = _loc7_.o6203();
               _loc4_ = _loc3_.getChildByName("cashAmount") as TextField;
               if(_loc4_ != null)
               {
                  _loc4_.text = "$" + o16724.o10417(_loc5_);
               }
            }
            _loc6_ = container.getChildByName("dayCounter" + param2.toString()) as TextField;
            _loc6_.text = "Day " + param1.toString();
         }
         catch(o19631:Error)
         {
            throw new Error("Reward frame not found? " + _loc7_.o7219);
         }
         return _loc7_;
      }
      
      public function o8225(param1:Event) : void
      {
         o4519.o8116.profileData.o15894.o4848.o18504().defer(o18253);
         o10454.enabled = false;
      }
      
      private function o18253(param1:Boolean) : void
      {
         o20323.o8553();
         if(o20323.o5921 == 1)
         {
            o9957 = true;
         }
         this.close();
      }
      
      override public function o13640() : void
      {
         o10454.removeEventListener("click",o8225);
         if(o9957)
         {
            o16989.o13000();
         }
         o10454 = null;
         o20323 = null;
         super.o13640();
      }
   }
}
