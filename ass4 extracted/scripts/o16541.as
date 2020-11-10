package
{
   public class o16541 extends o8023
   {
       
      
      protected var o20160:o3047;
      
      protected var o9941:int;
      
      protected var o9533:Number;
      
      protected var o12898:Number;
      
      protected var o11432:Number;
      
      protected var o18614:int = 0;
      
      protected var o12555:int = 0;
      
      protected var o16831:Vector.<o20743>;
      
      protected var o7038:Number;
      
      protected var o6242:Number;
      
      protected var o17884:Number;
      
      protected var o9899:int;
      
      protected var o18183:Number;
      
      protected var o17625:Number;
      
      public function o16541(param1:o3047, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean = false, param9:Number = 1.0, param10:int = 0, param11:int = 0)
      {
         super();
         if(param9 == 0)
         {
            param9 = 1;
         }
         this.o20160 = param1;
         this.o9941 = param2;
         this.o9533 = param4;
         this.o12898 = param5;
         this.o11432 = param9;
         this.o18614 = param10;
         this.o12555 = param11;
         this.o9899 = param3;
         this.o18183 = param6;
         this.o17625 = param7;
         if(param8)
         {
            this.o17625 = param6 * param7;
         }
         if(param1)
         {
            param1.o16280(this,o14571.o19115,o19288);
         }
      }
      
      private function o19288(param1:o7734) : void
      {
         o19115();
      }
      
      public function o9594(param1:o3047) : void
      {
         this.o20160 = param1;
         param1.o16280(this,o14571.o19115,o19288);
      }
      
      public function o7255(param1:int) : void
      {
         o9941 = param1;
      }
      
      public function o4526() : void
      {
         if(o8289())
         {
            return;
         }
         o1051.o9310(this,o9533,o15661);
      }
      
      public function o7976(param1:Number) : void
      {
         o9533 = param1;
      }
      
      public function o5803(param1:Number) : void
      {
         o12898 = param1;
      }
      
      public function o15501() : Number
      {
         return o9533 + o12898;
      }
      
      protected function o15661() : void
      {
         o16831 = o10176.o10314(o9899,o18183,o17625);
         if(o16831.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<o20743> = new Vector.<o20743>();
         var _loc1_:int = o9941;
         while(o16831.length > 0)
         {
            _loc2_.push(o16831.splice(o4519.o8116.random.o10418(_loc1_) * o16831.length,1)[0]);
            _loc1_++;
         }
         o16831 = _loc2_;
         o6242 = o12898 / (o16831.length / ((o11432 + 1) / 2));
         o7038 = o6242;
         o17884 = o7038;
         o1051.o9310(this,o7038,o7506);
      }
      
      protected function o7506() : void
      {
         o8515();
         o16831.splice(0,1);
         o7038 = o6242 + (o6242 / o11432 - o6242) * (o17884 / o12898);
         o17884 = o17884 + o7038;
         if(o16831.length == 0)
         {
            o19115();
         }
         else
         {
            o1051.o9310(this,o7038,o7506);
         }
      }
      
      protected function o8515() : void
      {
         o20160.o3370(o16831[0].o18948,o16831[0].grade,null,o18614,o12555,false,o16831[0].o1673,o16831[0].o17014,o16831[0].o5751,o9941);
         o9941 = o9941 + o3047.o15922(o16831[0].o18948);
      }
      
      public function o17334() : int
      {
         if(o16831 == null)
         {
            return 0;
         }
         return o16831.length;
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         o16831 = null;
         super.o19115();
      }
   }
}
