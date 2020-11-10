package
{
   public class o6077 extends o4411
   {
       
      
      public var o14685:int = -1;
      
      public var o3492:o14096;
      
      protected var o14246:String;
      
      protected var o2058:String;
      
      protected var o1162:o17517;
      
      protected var o2246:Boolean = false;
      
      private var o20903:Number = 1;
      
      private var o18793:o8464;
      
      public function o6077(param1:o8925, param2:o7848, param3:o4332, param4:Number)
      {
         super(param1,param2,param3,param4);
         o14246 = o4519.o8116.o5830.o9009(param1.o6670);
         o2058 = o4519.o8116.o5830.o9009(param1.o11608);
         o1162 = o17517(param2);
         o16485 = 0.6;
      }
      
      public function o60(param1:o14096) : void
      {
         this.o3492 = param1;
         if(param1.o14419 > 0 || param1.o11549() > 0)
         {
            o18216();
         }
         else
         {
            o8470();
         }
         o20682 = param1.o18554();
      }
      
      override public function o20957() : void
      {
         o20903 = o4670.o16832;
         super.o20957();
      }
      
      public function o13408() : void
      {
         var _loc1_:Number = NaN;
         if(o4992)
         {
            _loc1_ = o4761 / o20903;
            o4761 = _loc1_ * o4670.o16832;
         }
      }
      
      override public function o9450() : Boolean
      {
         if(o4992)
         {
            return false;
         }
         if(o20682 == o3492.o11344)
         {
            return false;
         }
         if(o2246)
         {
            if(o3492.o11549() <= 0)
            {
               return false;
            }
            return true;
         }
         if(o3492.o6779)
         {
            return true;
         }
         return o3492.o2069() > 0;
      }
      
      override public function o19463() : void
      {
         super.o19463();
         o20682 = o3492.o2140();
      }
      
      override protected function o466() : void
      {
         o3492.o18664();
         super.o466();
      }
      
      override protected function o6670(param1:int) : void
      {
         o18793 = o3346();
         if(o2246)
         {
            o18793.o1815 = o18793.o1815 * o1162.o13012.o10100;
         }
         super.o6670(param1);
      }
      
      override protected function o5980(param1:Number, param2:o18509, param3:int) : void
      {
      }
      
      override protected function o4437() : void
      {
         var _loc1_:Boolean = o3492.o4192();
         if(o2246 && !_loc1_)
         {
            o20682 = o3492.o13429;
            o8470();
            if(o20682 == 0 && o9450())
            {
               o20957();
            }
         }
         else if(o9450())
         {
            o20957();
         }
         else
         {
            o15777(o11468.o9587);
         }
      }
      
      private function o8470() : void
      {
         o2246 = false;
         o10762.o10589(o14246);
         o15777(o11468.o10770);
      }
      
      public function o18216() : void
      {
         o2246 = true;
         o10762.o10589(o2058);
         o15777(o11468.o14359);
      }
      
      public function o3914() : Boolean
      {
         return o2246;
      }
      
      private function o3346() : o8464
      {
         var _loc1_:o8464 = new o8464();
         _loc1_.o14685 = o14685;
         if(Math.random() < o1162.o3116)
         {
            _loc1_.o12680 = o1162.o10423;
         }
         if(Math.random() < o1162.o19483 + o1162.o8138)
         {
            _loc1_.o7859 = true;
            if(Math.random() < o1162.o13012.o13904)
            {
               _loc1_.o18873 = true;
               _loc1_.o1815 = _loc1_.o1815 * o1162.o13012.o11932;
            }
            else
            {
               _loc1_.o1815 = _loc1_.o1815 * o1162.o13789;
            }
         }
         return _loc1_;
      }
   }
}
