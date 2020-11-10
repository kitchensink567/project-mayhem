package
{
   public class o5869 extends o3052
   {
       
      
      private var o13822:o15787;
      
      public function o5869(param1:String, param2:o2693)
      {
         o13822 = new o15787(0);
         super();
         super.init(param1,param2);
         o13822.value = param2.o17521(param1 + "backpedalSpeed");
      }
      
      public function get o3166() : Number
      {
         return o13822.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o15206 = param1.o15206 - o3166;
         if(param1.o15206 <= 0)
         {
            throw new Error("Invalid backward speed");
         }
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o15206 = param1.o15206 + o3166;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[BACKPEDAL_SPEED]",o3166);
      }
   }
}
