package
{
   public class o281 extends o3052
   {
       
      
      private var o16635:o15787;
      
      private var o8397:o15787;
      
      public function o281(param1:String, param2:o2693)
      {
         o16635 = new o15787(0);
         o8397 = new o15787(0);
         super();
         super.init(param1,param2);
         o16635.value = param2.o17521(param1 + "movementSpeed");
      }
      
      public function get o18907() : Number
      {
         return o16635.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         o8397.value = param1.o11045 * o18907;
         param1.o1687 = param1.o1687 + o8397.value;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o1687 = param1.o1687 - o8397.value;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[MOVEMENT_SPEED]",o18907);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 22;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o18907;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o18907;
      }
   }
}
