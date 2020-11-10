package
{
   public class o8143 extends o3052
   {
       
      
      private var o12823:o16123;
      
      public function o8143(param1:String, param2:o2693)
      {
         o12823 = new o16123(0);
         super();
         super.init(param1,param2);
         o12823.value = param2.o3554(param1 + "bonusEnergy");
      }
      
      public function get o8321() : int
      {
         return o12823.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o7272 = param1.o7272 + o8321;
         param1.energy = param1.o10957;
      }
      
      override public function o11882(param1:o17517) : void
      {
         throw new Error("Can\'t remove");
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_ENERGY]",o8321);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 16;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o8321;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o8321;
      }
   }
}
