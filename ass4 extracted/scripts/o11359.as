package
{
   use namespace b2internal;
   
   public class o11359
   {
       
      
      private var o3028:o1693;
      
      private var o11409:o1693;
      
      private var o10801:o14127;
      
      b2internal var o13186:o1693;
      
      b2internal var o11152:Number;
      
      b2internal var o1570:o11359;
      
      b2internal var o14645:o5173;
      
      b2internal var o12319:o17586;
      
      b2internal var o19703:Number;
      
      b2internal var o9701:Number;
      
      b2internal var o17102;
      
      b2internal var o10911:o11501;
      
      b2internal var o3728:Boolean;
      
      b2internal var o5958;
      
      public function o11359()
      {
         o3028 = new o1693();
         o11409 = new o1693();
         o10911 = new o11501();
         super();
         o13186 = new o1693();
         o5958 = null;
         o14645 = null;
         o1570 = null;
         o12319 = null;
         o11152 = 0;
         o19703 = 0;
         o9701 = 0;
      }
      
      public function o20697() : int
      {
         return o12319.o20697();
      }
      
      public function o4861() : o17586
      {
         return o12319;
      }
      
      public function o12083(param1:Boolean) : void
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         if(o3728 == param1)
         {
            return;
         }
         o3728 = param1;
         if(o14645 == null)
         {
            return;
         }
         var _loc4_:o684 = o14645.o926();
         while(_loc4_)
         {
            _loc5_ = _loc4_.o9663;
            _loc3_ = _loc5_.o18972();
            _loc2_ = _loc5_.o13950();
            if(_loc3_ == this || _loc2_ == this)
            {
               _loc5_.o12083(_loc3_.o13437() || _loc2_.o13437());
            }
            _loc4_ = _loc4_.o3176;
         }
      }
      
      public function o13437() : Boolean
      {
         return o3728;
      }
      
      public function o13518(param1:o11501) : void
      {
         var _loc5_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         o10911 = param1.o2747();
         if(o14645 == null)
         {
            return;
         }
         var _loc4_:o684 = o14645.o926();
         while(_loc4_)
         {
            _loc5_ = _loc4_.o9663;
            _loc3_ = _loc5_.o18972();
            _loc2_ = _loc5_.o13950();
            if(_loc3_ == this || _loc2_ == this)
            {
               _loc5_.o1389();
            }
            _loc4_ = _loc4_.o3176;
         }
      }
      
      public function o3553() : o11501
      {
         return o10911.o2747();
      }
      
      public function o18997() : o11501
      {
         return o10911;
      }
      
      public function o15686() : o5173
      {
         return o14645;
      }
      
      public function o10535() : o11359
      {
         return o1570;
      }
      
      public function o3272() : *
      {
         return o5958;
      }
      
      public function o7620(param1:*) : void
      {
         o5958 = param1;
      }
      
      public function o14704(param1:o20021) : Boolean
      {
         return o12319.o14704(o14645.o13749(),param1);
      }
      
      public function o4566(param1:o14303, param2:o13148) : Boolean
      {
         return o12319.o4566(param1,param2,o14645.o13749());
      }
      
      public function o11864(param1:o14127 = null) : o14127
      {
         if(param1 == null)
         {
            param1 = new o14127();
         }
         o12319.o14604(param1,o11152);
         return param1;
      }
      
      public function o2142(param1:Number) : void
      {
         o11152 = param1;
      }
      
      public function o2750() : Number
      {
         return o11152;
      }
      
      public function o14362() : Number
      {
         return o19703;
      }
      
      public function o7623(param1:Number) : void
      {
         o19703 = param1;
      }
      
      public function o616() : Number
      {
         return o9701;
      }
      
      public function o16203(param1:Number) : void
      {
         o9701 = param1;
      }
      
      public function o11871() : o1693
      {
         return o13186;
      }
      
      b2internal function o6611(param1:o5173, param2:o12362, param3:o19776) : void
      {
         o5958 = param3.o18152;
         o19703 = param3.o12438;
         o9701 = param3.o7742;
         o14645 = param1;
         o1570 = null;
         o10911 = param3.filter.o2747();
         o3728 = param3.o4982;
         o12319 = param3.o10289.o2747();
         o11152 = param3.o16036;
      }
      
      b2internal function o18143() : void
      {
         o12319 = null;
      }
      
      b2internal function o3221(param1:o13430, param2:o12362) : void
      {
         o12319.o7379(o13186,param2);
         o17102 = param1.o3221(o13186,this);
      }
      
      b2internal function o13799(param1:o13430) : void
      {
         if(o17102 == null)
         {
            return;
         }
         param1.o13799(o17102);
         o17102 = null;
      }
      
      b2internal function o10947(param1:o13430, param2:o12362, param3:o12362) : void
      {
         if(!o17102)
         {
            return;
         }
         o12319.o7379(o3028,param2);
         o12319.o7379(o11409,param3);
         o13186.o1852(o3028,o11409);
         var _loc4_:o20021 = o10852.o6072(param3.position,param2.position);
         param1.o3619(o17102,o13186,_loc4_);
      }
   }
}
