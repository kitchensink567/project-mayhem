package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o5498 extends o9743
   {
       
      
      private var o20817:o15625;
      
      private var o5546:o17905;
      
      private var o4941:o17905;
      
      private var o15560:Boolean = false;
      
      private var o10052:Boolean = false;
      
      public function o5498()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o17905, param3:o17905) : void
      {
         var _loc7_:int = 0;
         super.init(param1);
         this.o5546 = param2;
         this.o4941 = param3;
         var _loc9_:o20565 = new o20565(this);
         o20817 = _loc9_.o17578("btnCollectReward",container);
         var _loc8_:String = "Level " + param2.level.toString() + " Augment Expertise Reward!";
         var _loc6_:String = param2.o14733();
         this.o20035.text = _loc8_;
         this.o4527.text = _loc6_;
         var _loc5_:TextField = container.getChildByName("description") as TextField;
         _loc5_.text = _loc6_;
         var _loc10_:TextField = container.getChildByName("lblInfo") as TextField;
         var _loc4_:o14200 = o4519.o8116.profileData;
         if(param3.o20829)
         {
            _loc10_.text = "Max level reached";
         }
         else
         {
            _loc7_ = _loc4_.o7923.o15202;
            _loc7_ = _loc7_ - param2.o18875;
            if(_loc7_ > param3.o3173)
            {
               _loc7_ = param3.o3173;
            }
            _loc10_.text = "XP to next level: " + _loc7_.toString() + "/" + param3.o3173.toString();
         }
         (container.getChildByName("icon") as MovieClip).gotoAndStop(param2.o13439);
         o20817.addEventListener("click",o8433,false,0,true);
      }
      
      override public function close() : void
      {
         super.close();
      }
      
      private function o8433(param1:MouseEvent) : void
      {
         o5546.o2904();
         this.o20817.enabled = false;
         o15940();
      }
      
      private function o15940() : void
      {
         if(o15560 == false)
         {
            if(o5546.o2754 > 0)
            {
               o15560 = true;
               o4519.o10093.o16989.o7712(3,o15940,o5546.o2754);
               return;
            }
         }
         if(o10052 == false)
         {
            if(o5546.o5532 > 0)
            {
               o10052 = true;
               o4519.o10093.o16989.o7712(2,o15940,o5546.o5532);
               return;
            }
         }
         this.o19172(null);
      }
      
      override public function o13640() : void
      {
         o20817.removeEventListener("click",o8433);
         o20817 = null;
         o5546 = null;
         super.o13640();
      }
   }
}
