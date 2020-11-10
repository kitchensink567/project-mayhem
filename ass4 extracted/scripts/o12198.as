package
{
   public class o12198 extends o3052
   {
       
      
      private var o1459:o15787;
      
      public function o12198(param1:String, param2:o2693)
      {
         o1459 = new o15787(0);
         super();
         super.init(param1,param2);
         o1459.value = param2.o17521(param1 + "damage");
      }
      
      public function get o3817() : Number
      {
         return o1459.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o3817 = param1.o3817 + o3817;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o3817 = param1.o3817 - o3817;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[DAMAGE]",o3817);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 1;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return param1 * o3817;
      }
   }
}
