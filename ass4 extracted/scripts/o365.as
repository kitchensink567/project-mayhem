package
{
   public class o365 extends o3052
   {
       
      
      private var o15303:o15787;
      
      public function o365(param1:String, param2:o2693)
      {
         o15303 = new o15787(0);
         super();
         super.init(param1,param2);
         o15303.value = param2.o17521(param1 + "reduceMovementPenalty");
      }
      
      public function get o88() : Number
      {
         return o15303.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o14954 = param1.o14954 + o88;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o14954 = param1.o14954 - o88;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[REDUCE_MOVEMENT_PENALTY]",o88);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 10;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         if(param1 > 0)
         {
            return param1 * -o88;
         }
         return 0;
      }
   }
}
