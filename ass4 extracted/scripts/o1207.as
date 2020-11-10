package
{
   public class o1207 extends o1492
   {
       
      
      private var o9364:o16123;
      
      private var o3128:o16123;
      
      private var o16638:o16123;
      
      public function o1207()
      {
         o9364 = new o16123(0);
         o3128 = new o16123(0);
         o16638 = new o16123(0);
         super();
      }
      
      public function get o155() : int
      {
         return o9364.value;
      }
      
      public function get o9299() : int
      {
         return o3128.value;
      }
      
      public function get o20532() : int
      {
         return o16638.value;
      }
      
      public function set o155(param1:int) : void
      {
         o9364.value = param1;
      }
      
      public function set o9299(param1:int) : void
      {
         o3128.value = param1;
      }
      
      public function set o20532(param1:int) : void
      {
         o16638.value = param1;
      }
      
      public function o9509(param1:int) : int
      {
         var _loc2_:int = param1 / o16638.value;
         return o9364.value + _loc2_ * o3128.value;
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[dropMedkitsTotal]",o9509(param1));
         return _loc2_;
      }
   }
}
