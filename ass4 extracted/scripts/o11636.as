package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class o11636 extends o766
   {
       
      
      private var o19419:o14200;
      
      private var o19855:Vector.<o9612>;
      
      private var o5916:o2736;
      
      private var o20407:int = 2;
      
      public function o11636(param1:o14200)
      {
         super();
         this.o19419 = param1;
         o19855 = new Vector.<o9612>();
         if(o19419.o202.o10220 == null)
         {
            o5916 = param1.o5292.o9177.o4014()[param1.o202.o18271];
         }
         else
         {
            o5916 = param1.o5292.o9177.o3945(o19419.o202.o10220);
         }
         var _loc3_:o17849 = o4519.o8116.o16619;
         var _loc4_:o6883 = o4519.o8116.o15916;
         var _loc6_:int = 0;
         var _loc5_:* = o5916.o19855;
         for each(var _loc2_ in o5916.o19855)
         {
            o19855.push(new o9612().init(_loc2_.o18800,_loc2_.o1007,_loc2_.o6393,0));
         }
         param1.o202.o10211 = false;
      }
      
      override protected function o3433(param1:MouseEvent) : void
      {
         if(o19419.data.o12697())
         {
            o19419.data.o14047();
            o16989.screen = 6;
         }
         else
         {
            o19689.screen = 25;
         }
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         super.o16384(param1,param2,param3);
         param2.o9799.o5809 = o5809;
         param2.o9799.o6784 = o6784;
         o10637();
      }
      
      private function o5809() : void
      {
         o3433(null);
      }
      
      private function o6784() : void
      {
         o19689.screen = 5;
      }
      
      private function o10637() : void
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:int = o19419.o1343();
         var _loc7_:int = 0;
         var _loc1_:Boolean = o19419.o15894.o4848.isGuest;
         var _loc9_:int = 0;
         var _loc8_:* = o19855;
         for each(var _loc2_ in o19855)
         {
            _loc4_ = o5916.o19855[_loc5_];
            if(o19419.o7923.level >= _loc4_.o10387)
            {
               _loc7_++;
            }
            _loc5_++;
         }
         if(_loc1_ && _loc7_ >= o20407 - 1)
         {
            if(_loc7_ > o20407)
            {
               _loc7_ = o20407;
            }
         }
         if(_loc7_ == o5916.o19855.length)
         {
            if(o19419.o202.o13798 == null)
            {
               _loc6_ = Math.random() * o5916.o19855.length;
               o19419.o202.o13798 = o5916.o19855[_loc6_];
            }
            o20510.o2120 = o5916.o12404(o19419.o202.o13798);
            o555(o20510.o2120);
         }
         else
         {
            o20510.o2120 = _loc7_ - 1;
            o555(_loc7_ - 1);
         }
      }
      
      override protected function o13545() : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc3_:int = o19419.o1343();
         var _loc1_:Boolean = o19419.o15894.o4848.isGuest;
         if(_loc1_)
         {
            var _loc7_:int = 0;
            var _loc6_:* = o19855;
            for each(_loc2_ in o19855)
            {
               _loc4_ = o5916.o19855[_loc5_];
               if(o19419.o7923.level < _loc4_.o10387 || _loc5_ >= o20407)
               {
                  if(_loc5_ >= o20407)
                  {
                     this.o3209(_loc2_.name);
                  }
                  else
                  {
                     this.o1730(_loc2_.name,_loc4_.o10387);
                  }
               }
               else
               {
                  this.o13614(_loc2_.name);
               }
               _loc5_++;
            }
         }
         else
         {
            var _loc9_:int = 0;
            var _loc8_:* = o19855;
            for each(_loc2_ in o19855)
            {
               _loc4_ = o5916.o19855[_loc5_];
               if(o19419.o7923.level < _loc4_.o10387)
               {
                  this.o1730(_loc2_.name,_loc4_.o10387);
               }
               else
               {
                  this.o13614(_loc2_.name);
               }
               _loc5_++;
            }
         }
      }
      
      override protected function o20128(param1:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc9_:* = null;
         var _loc8_:* = false;
         var _loc2_:* = null;
         var _loc7_:Boolean = false;
         var _loc6_:* = NaN;
         if(param1 >= 0 && param1 < o19855.length)
         {
            _loc4_ = o19855[param1];
            o19419.o202.o15222 = _loc4_.id;
            _loc5_ = o19419.o202.o14613();
            _loc3_ = o19419.o202.o18702();
            _loc9_ = o19419.o202.o701();
            _loc8_ = o19419.o7923.level < _loc3_.o10387;
            if(_loc5_ == null)
            {
               this.o16713(-1);
            }
            else
            {
               this.o14485(-1,_loc5_.o1007,_loc5_.o6393,_loc5_.o7219,param1,_loc8_);
            }
            this.o14485(0,_loc3_.o1007,_loc3_.o6393,_loc3_.o7219,param1 + 1,_loc8_);
            if(_loc9_ == null)
            {
               this.o16713(1);
            }
            else
            {
               this.o14485(1,_loc9_.o1007,_loc9_.o6393,_loc9_.o7219,param1 + 2,_loc8_);
            }
            if(o3491)
            {
               o3491.visible = false;
            }
            if(o4519.o8116.o476.o9392.o9104(_loc3_.o18800))
            {
               if(o14053)
               {
                  o14053.visible = true;
               }
               _loc2_ = "";
               _loc7_ = false;
               _loc6_ = 0;
               if(o4519.o8116.o476.o9392.o16959(_loc3_.o18800) >= 2)
               {
                  _loc6_ = Number(o4519.o8116.o476.o9392.o16959(_loc3_.o18800));
                  _loc2_ = "2x Alloy";
                  if(o3491)
                  {
                     o3491.visible = o4519.o8116.o476.o9392.o905;
                  }
               }
               else if(o4519.o8116.o476.o9392.o20722(_loc3_.o18800) > 1)
               {
                  _loc6_ = Number(o4519.o8116.o476.o9392.o20722(_loc3_.o18800));
                  _loc2_ = _loc6_ + "x XP";
               }
               _loc2_ = _loc2_ + " Bonus!";
               if(o7114)
               {
                  o7114.text = _loc2_;
                  o7114.visible = true;
               }
            }
            else if(o14053)
            {
               o14053.visible = false;
               o7114.visible = false;
            }
         }
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
         if(o19689.o9799 != null)
         {
            o19689.o9799.o5809 = null;
            o19689.o9799.o6784 = null;
         }
         o19419 = null;
         o19855 = null;
         o5916 = null;
         super.o13640();
      }
   }
}
