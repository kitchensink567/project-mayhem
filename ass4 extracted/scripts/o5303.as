package
{
   public class o5303 extends o3052
   {
       
      
      private var o1922:o15787;
      
      public function o5303(param1:String, param2:o2693)
      {
         o1922 = new o15787(0);
         super();
         super.init(param1,param2);
         o1922.value = param2.o17521(param1 + "radius");
      }
      
      public function get o30() : Number
      {
         return o1922.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o1987 = param1.o13012.o1987 + o30;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o1987 = param1.o13012.o1987 - o30;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[RADIUS]",o30);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 4;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return param1 * o30;
      }
   }
}
