package
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o16160 extends o19152
   {
       
      
      private var o19419:o14200;
      
      private var o7822:Boolean;
      
      public function o16160(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override protected function o11048() : void
      {
         o19466(o19419.o1317.o400);
         o20254(o19419.o1317.o9671);
         o15845(o19419.o1317.o3288);
         o1479(o19419.o1317.o12773);
         o17228(o19419.o1317.o6458);
         o17614(o19419.o1317.o9690);
         o16284(o19419.o1317.o19130);
         o4519.o13206.o16280(null,o16450.o12392,o2399);
         var _loc1_:TextField = this.o7770.asset.getChildByName("label") as TextField;
         if(o19419.o202.o10211)
         {
            _loc1_.text = "Cancel";
         }
         else
         {
            _loc1_.text = "Resume";
         }
      }
      
      private function o2399(param1:Event) : void
      {
         if(o12514 == false)
         {
            this.close();
         }
      }
      
      override public function o9072(param1:Function, param2:Function = null) : void
      {
         var _loc9_:Boolean = false;
         o4519.o8116.o6169.o14427(true);
         if(o4519.o8116.o2535.o16923 == false)
         {
            return;
         }
         o7822 = o19419.o202.o3063 == false;
         o8268.visible = o19419.o202.o10211 == false;
         super.o9072(param1,param2);
         var _loc5_:o69 = o19419.o202.o18702();
         var _loc4_:String = "";
         var _loc7_:int = 0;
         var _loc3_:String = "#333333";
         var _loc8_:String = "#999999";
         var _loc11_:int = 0;
         var _loc10_:* = _loc5_.o19841;
         for each(var _loc6_ in _loc5_.o19841)
         {
            _loc9_ = o19419.o202.o9500[_loc7_];
            _loc4_ = _loc4_ + ("<font color=\"" + (!!_loc9_?_loc3_:_loc8_) + "\">");
            if(_loc9_)
            {
               o8688(_loc7_);
               _loc4_ = _loc4_ + ("COMPLETE: " + _loc6_ + "\n");
               _loc4_ = _loc4_ + "</font>";
               _loc7_++;
               continue;
            }
            o20460(_loc7_);
            _loc4_ = _loc4_ + (_loc6_ + "\n");
            _loc4_ = _loc4_ + "</font>";
            break;
         }
         o11394(_loc4_);
         o2789(o19419.o202.o12874.o1867());
      }
      
      override protected function o5382(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o19419.o202.o19062.length > 0)
         {
            _loc2_ = o19419.o10206("dialogMessage.confirmQuitWithStrongbox.title");
            _loc3_ = o19419.o10206("dialogMessage.confirmQuitWithStrongbox.message");
         }
         else
         {
            _loc2_ = o19419.o10206("dialogMessage.confirmQuit.title");
            _loc3_ = o19419.o10206("dialogMessage.confirmQuit.message");
         }
         o19419.o202.o7702 = true;
         o9584(_loc2_,_loc3_,o4287,o9545);
      }
      
      protected function o9545() : void
      {
         o19419.o202.o7702 = false;
      }
      
      protected function o4287() : void
      {
         o19419.o202.o18730 = true;
         if(o4519.o13206.o2685.o4326 == 5 || o4519.o13206.o2685.o4326 == 4)
         {
            o19419.o202.o18730 = false;
            o19419.o13206.o32.o15777(o2777.o18730);
            o4519.o13206.o14994();
         }
         else
         {
            o4519.o13206.o17799();
         }
         this.close();
      }
      
      override protected function o521() : void
      {
         o19419.saveData();
      }
      
      override protected function o19466(param1:Boolean) : void
      {
         super.o19466(param1);
         o19419.o1317.o400 = param1;
      }
      
      override protected function o16284(param1:Boolean) : void
      {
         super.o16284(param1);
         o19419.o1317.o19130 = param1;
      }
      
      override protected function o20254(param1:Boolean) : void
      {
         super.o20254(param1);
         o19419.o1317.o9671 = param1;
      }
      
      override protected function o15845(param1:Boolean) : void
      {
         super.o15845(param1);
         o19419.o1317.o3288 = param1;
      }
      
      override protected function o1479(param1:Boolean) : void
      {
         super.o1479(param1);
         o19419.o1317.o12773 = param1;
      }
      
      override protected function o19172(param1:Event) : void
      {
         o4519.o13206.o12392();
         super.o19172(param1);
      }
      
      override protected function o17228(param1:Boolean) : void
      {
         super.o17228(param1);
         o19419.o1317.o6458 = param1;
      }
      
      override protected function o17614(param1:Boolean) : void
      {
         super.o17614(param1);
         o19419.o1317.o9690 = param1;
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o4519.o13206.o12657(o16450.o12392,o2399);
         if(o19419.o1317.o400)
         {
            o4519.o8116.o6169.o14427(false);
         }
         o19419 = null;
         super.o13640();
      }
      
      override protected function o5924(param1:MouseEvent) : void
      {
         o16989.o9171(false,true);
      }
      
      override protected function o10080(param1:MouseEvent) : void
      {
         o16989.o9171(false,false);
      }
   }
}
