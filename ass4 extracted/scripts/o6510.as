package
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class o6510 extends o19814
   {
       
      
      private var o10843:Dictionary = null;
      
      private var o10458:o11951 = null;
      
      private var o1763:Boolean = true;
      
      private var o20095:int = 0;
      
      private var o3819:int = 0;
      
      public function o6510()
      {
         super();
      }
      
      public function o2380(param1:o11951, param2:Boolean = false) : void
      {
         this.o10458 = param1;
         this.o1763 = param2;
         o10843 = Mem.create(this,Dictionary) as Dictionary;
      }
      
      override protected function o15343(param1:Class) : void
      {
         super.o15343(param1);
         if(o19055)
         {
            o18456();
         }
      }
      
      override public function play() : void
      {
         super.play();
         o18456();
      }
      
      override public function stop() : void
      {
         super.stop();
         o11908();
      }
      
      override public function o11224(param1:int, param2:int) : void
      {
         super.o11224(param1,param2);
         o18456();
      }
      
      private function o11908(param1:Boolean = false) : void
      {
         if(!param1)
         {
            if(o6691 != null && o6691.o9663)
            {
               return;
            }
            if(o1763)
            {
               return;
            }
         }
         var _loc4_:int = 0;
         var _loc3_:* = o10843;
         for(var _loc2_ in o10843)
         {
            o10458.o6988(o16350,_loc2_);
         }
         o10843 = Mem.create(this,Dictionary) as Dictionary;
      }
      
      private function o18456() : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc1_:* = 0;
         if(o20095 == o3284 && o3819 == o2984)
         {
            return;
         }
         o11908();
         if(!o19055)
         {
            return;
         }
         if(o6691 != null && !o6691.o9663)
         {
            return;
         }
         o20095 = o3284;
         o3819 = o2984;
         _loc3_ = o3284;
         while(_loc3_ < o2984)
         {
            _loc2_ = _loc3_ + 1;
            if(o10843[_loc2_] == null)
            {
               _loc1_ = uint(o10458.o13252(o16350,_loc2_));
               o10843[_loc2_] = _loc1_;
            }
            _loc3_++;
         }
      }
      
      public function o2570(param1:Event = null) : void
      {
         o18456();
      }
      
      override public function o11525(param1:o4332) : void
      {
         if(o6691 != null)
         {
            o6691.o12657(o6783.o11541,o2570);
         }
         super.o11525(param1);
         if(o6691 != null)
         {
            o6691.o16280(this,o6783.o11541,o2570);
         }
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         if(o6691 != null)
         {
            o6691.o12657(o6783.o11541,o2570);
         }
         o11908(true);
         super.o19115();
      }
   }
}
