package
{
   public class o9069 extends o3052
   {
       
      
      private var o5224:o16123;
      
      public function o9069(param1:String, param2:o2693)
      {
         o5224 = new o16123(0);
         super();
         super.init(param1,param2);
         o5224.value = param2.o3554(param1 + "bonusHealth");
      }
      
      public function get o8830() : int
      {
         return o5224.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o14978 = param1.o14978 + o8830;
         param1.o11243 = param1.o1589;
      }
      
      override public function o11882(param1:o17517) : void
      {
         throw new Error("Can\'t remove");
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_HEALTH]",o8830);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 17;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o8830;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o8830;
      }
   }
}
