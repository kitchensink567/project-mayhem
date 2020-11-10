package
{
   import flash.events.MouseEvent;
   
   public class o172 extends o11902
   {
       
      
      public function o172()
      {
         super();
      }
      
      override protected function o5382(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(o4253.length <= 2)
         {
            o16989.o12407("Match name too short","Match name must be greater than two characters");
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
         var _loc6_:* = _loc3_.o8974;
         for each(var _loc4_ in _loc3_.o8974)
         {
            if(param1.o7923.level >= _loc4_)
            {
               _loc2_ = "Public-";
               if(_loc4_ == 100)
               {
                  _loc2_ = _loc2_ + 100;
               }
               else if(_loc4_ == 0 && _loc5_ - 1 >= 0)
               {
                  _loc2_ = _loc2_ + (1 + "-" + (_loc3_.o8974[_loc5_ - 1] - 1));
               }
               else if(_loc5_ - 1 >= 0)
               {
                  _loc2_ = _loc2_ + (_loc4_ + "-" + (_loc3_.o8974[_loc5_ - 1] - 1));
               }
               else
               {
                  _loc2_ = _loc2_ + (_loc4_ + "-" + 100);
               }
               return _loc2_;
            }
            _loc5_++;
         }
         if(param1.o7923.level >= 95)
         {
            return "Public-95-100";
         }
         if(param1.o7923.level >= 70)
         {
            return "Public-70-94";
         }
         if(param1.o7923.level >= 50)
         {
            return "Public-50-69";
         }
         return "Public-35-49";
      }
      
      override protected function o11735(param1:MouseEvent) : void
      {
         var _loc2_:o14200 = o4519.o8116.profileData;
         if(_loc2_.o202.o18339 == 2)
         {
            _loc2_.o202.o15492 = "Public";
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
         o4519.o8116.profileData.o202.o15492 = "2";
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
      
      override protected function o10343(param1:MouseEvent) : void
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
         o4519.o8116.profileData.o202.o15492 = "2";
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
}
