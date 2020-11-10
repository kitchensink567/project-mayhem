package
{
   public class o14989 extends o3052
   {
       
      
      private var o12016:o15787;
      
      public function o14989(param1:String, param2:o2693)
      {
         o12016 = new o15787(0);
         super();
         super.init(param1,param2);
         o12016.value = param2.o17521(param1 + "burnTime");
      }
      
      public function get o841() : Number
      {
         return o12016.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o17122 = param1.o13012.o17122 + o841;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o17122 = param1.o13012.o17122 - o841;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[BURN_TIME]",o841);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 7;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return param1 * o841;
      }
   }
}
