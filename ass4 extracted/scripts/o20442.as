package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o20442 extends o6539
   {
       
      
      public var o16989:o13064;
      
      protected var o19689:o978;
      
      private var o7750:o20565;
      
      private var o11840:TextField;
      
      private var o20173:o15625;
      
      private var o3835:o15625;
      
      private var o13689:o15625;
      
      private var o6750:o15625;
      
      private var o19419:o14200;
      
      public function o20442()
      {
         super();
      }
      
      protected function get o4253() : String
      {
         return o11840.text;
      }
      
      public function o16384(param1:MovieClip, param2:o978, param3:o13064) : void
      {
         super.init(param1);
         this.o16989 = param3;
         this.o19689 = param2;
         this.o19419 = o14200.o19505;
         o7750 = new o20565(this);
         var _loc4_:MovieClip = param1.getChildByName("dialogContainer") as MovieClip;
         o11840 = _loc4_.getChildByName("txtName") as TextField;
         var _loc5_:o15625 = o7750.o17578("btnFakeBg",_loc4_);
         _loc5_.visible = false;
         o20173 = o7750.o17578("btnOk",_loc4_);
         o3835 = o7750.o17578("btnCreateMatch",_loc4_);
         o6750 = o7750.o17578("btnSinglePlayer",_loc4_);
         o13689 = o7750.o17578("btnCreateMatchRanked",_loc4_);
         o20173.addEventListener("click",o5382,false,0,true);
         o3835.addEventListener("click",o11735,false,0,true);
         o13689.addEventListener("click",o10343,false,0,true);
         o6750.addEventListener("click",o5191,false,0,true);
         o11840.text = "";
         o11840.restrict = "0-9a-zA-Z";
         o11840.maxChars = 19;
         o4519.stage.focus = o11840;
         o4519.stage.addEventListener("keyDown",o1772,false,0,true);
      }
      
      private function o1772(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 13)
         {
            o5382(null);
         }
      }
      
      protected function o5191(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o14200.o19505;
         _loc2_.o202.o15492 = "2";
         _loc2_.o202.o10211 = false;
         var _loc3_:int = _loc2_.o202.o18339;
         _loc2_.o202.o15222 = _loc2_.o202.o10220.o12387;
         if(_loc2_.data.o12697())
         {
            _loc2_.data.o14047();
            o16989.screen = 6;
         }
         else
         {
            o19689.screen = 25;
         }
      }
      
      protected function o5382(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(o4253.length <= 2)
         {
            o16989.o12407("Match name too short","Match name must be greater than two characters.");
         }
         else if(o4253.length >= 20)
         {
            o16989.o12407("Match name too long","Match name must be less than twenty characters.");
         }
         else if(o4253.indexOf("Nightmare") >= 0)
         {
            o16989.o12407("Invalid name","Can\'t contain the word nightmare.");
         }
         else
         {
            _loc2_.o202.o15492 = o4253;
            o4519.o8116.profileData.o202.o10211 = true;
            if(_loc2_.data.o12697())
            {
               _loc2_.data.o14047();
               o19689.screen = 20;
            }
            else
            {
               o19689.screen = 26;
            }
         }
      }
      
      private function o15539(param1:o14200) : String
      {
         var _loc2_:* = null;
         var _loc3_:o1611 = o4519.o8116.o476.o9392;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = _loc3_.o2304;
         for each(var _loc4_ in _loc3_.o2304)
         {
            if(param1.o7923.level >= _loc4_)
            {
               _loc2_ = "-";
               if(_loc4_ == 100)
               {
                  _loc2_ = _loc2_ + 100;
               }
               else if(_loc4_ == 0 && _loc5_ - 1 >= 0)
               {
                  _loc2_ = _loc2_ + (1 + "-" + (_loc3_.o2304[_loc5_ - 1] - 1));
               }
               else if(_loc5_ - 1 >= 0)
               {
                  _loc2_ = _loc2_ + (_loc4_ + "-" + (_loc3_.o2304[_loc5_ - 1] - 1));
               }
               else
               {
                  _loc2_ = _loc2_ + (_loc4_ + "-" + 100);
               }
               return _loc2_;
            }
            _loc5_++;
         }
         if(param1.o7923.level >= 75)
         {
            return "75-100";
         }
         if(param1.o7923.level >= 50)
         {
            return "50-74";
         }
         if(param1.o7923.level >= 25)
         {
            return "25-49";
         }
         if(param1.o7923.level >= 10)
         {
            return "10-24";
         }
         return "1-9";
      }
      
      protected function o11735(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(_loc2_.o202.o18339 == 2)
         {
            _loc2_.o202.o15492 = o15539(_loc2_);
            o4519.o8116.profileData.o202.o10211 = true;
            if(_loc2_.data.o12697())
            {
               _loc2_.data.o14047();
               o19689.screen = 20;
            }
            else
            {
               o19689.screen = 26;
            }
            return;
         }
         o4519.o8116.profileData.o202.o15492 = o6921.o1774(_loc2_.o202.o10220.o15231.o18339) + "-" + _loc2_.o202.o10220.o12387.toString();
         o4519.o8116.profileData.o202.o10211 = true;
         if(_loc2_.data.o12697())
         {
            _loc2_.data.o14047();
            o19689.screen = 20;
         }
         else
         {
            o19689.screen = 26;
         }
      }
      
      protected function o10343(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(_loc2_.o202.o18339 == 2)
         {
            _loc2_.o202.o15492 = o15539(_loc2_);
            o4519.o8116.profileData.o202.o10211 = true;
            if(_loc2_.data.o12697())
            {
               _loc2_.data.o14047();
               o19689.screen = 20;
            }
            else
            {
               o19689.screen = 26;
            }
            return;
         }
         o4519.o8116.profileData.o202.o15492 = o6921.o1774(_loc2_.o202.o10220.o15231.o18339) + "-" + _loc2_.o202.o10220.o12387.toString() + o15539(_loc2_);
         o4519.o8116.profileData.o202.o10211 = true;
         if(_loc2_.data.o12697())
         {
            _loc2_.data.o14047();
            o19689.screen = 20;
         }
         else
         {
            o19689.screen = 26;
         }
      }
      
      override protected function o6662(param1:Event) : void
      {
         super.o6662(param1);
         if(asset == null)
         {
            return;
         }
         o11692(o3835.asset.getChildByName("arrow") as MovieClip);
      }
      
      override public function o13640() : void
      {
         o7750.o13640();
         o20173.removeEventListener("click",o5382);
         o3835.removeEventListener("click",o11735);
         o13689.removeEventListener("click",o10343);
         o4519.stage.removeEventListener("keyDown",o1772);
         o6750.removeEventListener("click",o5191);
         o16989 = null;
         o7750 = null;
         o11840 = null;
         o20173 = null;
         o3835 = null;
         o13689 = null;
         o6750 = null;
         o19419 = null;
         super.o13640();
      }
   }
}
