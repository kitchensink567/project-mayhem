package
{
   public class o8345 extends o3052
   {
       
      
      private var o15019:o15787;
      
      public function o8345(param1:String, param2:o2693)
      {
         o15019 = new o15787(0);
         super();
         super.init(param1,param2);
         o15019.value = param2.o17521(param1 + "range");
      }
      
      public function get o14120() : Number
      {
         return o15019.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o15812 = param1.o13012.o15812 + o14120;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o15812 = param1.o13012.o15812 + o14120;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[RANGE]",o14120);
      }
   }
}
