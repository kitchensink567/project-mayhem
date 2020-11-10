package
{
   public class o4629 extends o15184
   {
       
      
      protected var o19419:o14200;
      
      private var o2752:o14096;
      
      private var o4256:o1253;
      
      public function o4629(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      public function o19731(param1:o14096) : void
      {
         throw new Error("Not used anymore");
      }
      
      public function o10213(param1:o1253) : void
      {
         o9193.clear();
         throw new Error("Not used anymore");
      }
      
      private function o18105() : void
      {
         var _loc3_:* = null;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(o19419.o7923.o20170 < o3073())
         {
            this.o1602();
            _loc3_ = this.o1878 as o18819;
            _loc1_ = o19419.o5099.o9009("dialogMessage.storeUnableToPurchaseDueToSasCash.title");
            _loc2_ = o19419.o5099.o9009("dialogMessage.storeUnableToPurchaseDueToSasCash.message");
            _loc3_.o16989.o12407(_loc1_,_loc2_);
         }
         else
         {
            o3032();
         }
      }
      
      private function o3073() : int
      {
         if(o2752 != null)
         {
            return o2752.o2752.o9421;
         }
         if(o4256 != null)
         {
            return o4256.o10239.o9421;
         }
         throw new Error("invalid item");
      }
      
      protected function o3032() : void
      {
         this.o1602();
         if(o2752 != null)
         {
            o19419.o15894.o4848.o2719.o1196(o2752.o10748,o2752.o7501,o19419.o7923.level);
            o19419.o7923.o20170 = o19419.o7923.o20170 - o2752.o2752.o9421;
            o19419.o7923.o20444(o2752);
            o19419.saveData();
         }
         else if(o4256 != null)
         {
            o19419.o15894.o4848.o2719.o1196(o4256.o10239.id,o4256.o9912,o19419.o7923.level);
            o19419.o7923.o20170 = o19419.o7923.o20170 - o4256.o10239.o9421;
            o19419.o7923.o2205(o4256);
            o19419.saveData();
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
         o19419 = null;
         o2752 = null;
         o4256 = null;
         super.o13640();
      }
   }
}
