package
{
   import flash.display.Sprite;
   
   public class o14779 extends Sprite
   {
       
      
      public function o14779()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o17947;
      }
   }
}

import flash.utils.ByteArray;

class o17947 extends o15755
{
   
   public static var o20272:Array = [];
    
   
   private var o1278:int = 0;
   
   private var o19206:int = 0;
   
   function o17947()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      o4519.o13206.o16280(this,o8694.o1956,o14957);
      var o19505:* = this;
      o4519.o13206.o16280(this,o16450.o9745,function():void
      {
         o20806("zombiePodsMapArrow1");
         o20806("zombiePodsMapArrow2");
         o20806("zombiePodsMapArrow3");
         o20806("zombiePodsMapArrow4");
         o20806("zombiePodsMapArrow5");
         o20806("zombiePodsMapArrow6");
         o20806("zombiePodsMapArrow7");
         o1278 = 0;
         o19206 = 0;
         o11807();
         o1051.o4767(o19505,1,o11807,0,true);
      });
   }
   
   private function o11807() : void
   {
      var _loc1_:int = 0;
      var _loc3_:* = undefined;
      var _loc2_:* = 6;
      _loc1_ = 1;
      while(_loc1_ <= 5)
      {
         _loc3_ = o4519.o9721.o12334("PurgeNest" + _loc1_.toString());
         if(_loc3_ != null)
         {
            if(_loc3_.o14101() == false)
            {
               _loc2_ = _loc1_;
               break;
            }
         }
         _loc1_++;
      }
      if(o1278 == _loc2_)
      {
         return;
      }
      o1278 = _loc2_;
      switch(int(_loc2_) - 1)
      {
         case 0:
            o7698("zombiePodsMapArrow2");
            o7698("zombiePodsMapArrow3");
            o7698("zombiePodsMapArrow4");
            o7698("zombiePodsMapArrow5");
            o7698("zombiePodsMapArrow6");
            o7698("zombiePodsMapArrow7");
            o20806("zombiePodsMapArrow1");
            break;
         case 1:
            o7698("zombiePodsMapArrow1");
            o7698("zombiePodsMapArrow4");
            o7698("zombiePodsMapArrow5");
            o7698("zombiePodsMapArrow6");
            o7698("zombiePodsMapArrow7");
            o20806("zombiePodsMapArrow3");
            o20806("zombiePodsMapArrow2");
            o4519.o8116.o20488.o20575(1);
            break;
         case 2:
            o7698("zombiePodsMapArrow1");
            o7698("zombiePodsMapArrow2");
            o7698("zombiePodsMapArrow4");
            o7698("zombiePodsMapArrow5");
            o7698("zombiePodsMapArrow6");
            o7698("zombiePodsMapArrow7");
            o20806("zombiePodsMapArrow3");
            break;
         case 3:
            o7698("zombiePodsMapArrow2");
            o7698("zombiePodsMapArrow3");
            o7698("zombiePodsMapArrow5");
            o7698("zombiePodsMapArrow6");
            o20806("zombiePodsMapArrow4");
            if(o4519.o13206.o2685.o4326 == 2)
            {
               o20806("zombiePodsMapArrow7");
            }
            else
            {
               o7698("zombiePodsMapArrow7");
            }
            break;
         case 4:
            o7698("zombiePodsMapArrow1");
            o7698("zombiePodsMapArrow2");
            o7698("zombiePodsMapArrow3");
            o7698("zombiePodsMapArrow5");
            o7698("zombiePodsMapArrow6");
            o7698("zombiePodsMapArrow7");
            o20806("zombiePodsMapArrow4");
            break;
         case 5:
            o7698("zombiePodsMapArrow1");
            o7698("zombiePodsMapArrow2");
            o7698("zombiePodsMapArrow3");
            o7698("zombiePodsMapArrow4");
            o7698("zombiePodsMapArrow6");
            o7698("zombiePodsMapArrow7");
            o20806("zombiePodsMapArrow5");
            o4519.o8116.o20488.o20575(2);
      }
   }
   
   private function o20806(param1:String) : void
   {
      o4519.o8116.o20488.o13122(param1);
   }
   
   private function o7698(param1:String) : void
   {
      o4519.o8116.o20488.o12056(param1);
   }
   
   private function o14957(param1:o11210) : void
   {
      if(param1.o13743 == 5 || param1.o13743 == 10 || param1.o13743 == 20 || param1.o13743 == 100)
      {
         o19206 = Number(o19206) + 1;
         if(o19206 >= 4)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      }
      if(param1.o13743 == 3000)
      {
         o4519.o8116.o20488.o20575(0);
      }
   }
}
