package
{
   public class o15963 extends o3052
   {
       
      
      private var o18120:o15787;
      
      public function o15963(param1:String, param2:o2693)
      {
         o18120 = new o15787(0);
         super();
         super.init(param1,param2);
         o18120.value = param2.o17521(param1 + "ignoreResistance");
      }
      
      public function get o1775() : Number
      {
         return o18120.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         param1.o13012.o7934 = param1.o13012.o7934 - o1775;
      }
      
      override public function o11882(param1:o17517) : void
      {
         param1.o13012.o7934 = param1.o13012.o7934 + o1775;
      }
      
      override public function o3309(param1:String) : String
      {
         return o12267(param1,"[IGNORE_RESISTANCE]",o1775);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 3;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o1775;
      }
   }
}
