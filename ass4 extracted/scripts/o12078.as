package
{
   public class o12078
   {
       
      
      private var o13450:o16123;
      
      private var o16828:o15787;
      
      private var o5220:o15787;
      
      private var o14725:o15787;
      
      public function o12078()
      {
         o13450 = new o16123(0);
         o16828 = new o15787(0);
         o5220 = new o15787(0);
         o14725 = new o15787(0);
         super();
      }
      
      public function get o14357() : int
      {
         return o13450.value;
      }
      
      public function get o18714() : Number
      {
         return o16828.value;
      }
      
      public function get o20760() : Number
      {
         return o5220.value;
      }
      
      public function get o13679() : Number
      {
         return o14725.value;
      }
      
      public function init(param1:o2693, param2:String) : o12078
      {
         o13450.value = param1.o3554(param2 + "playerLevel");
         o16828.value = param1.o17521(param2 + "slot0Chance");
         o5220.value = param1.o17521(param2 + "slot1Chance");
         o14725.value = param1.o17521(param2 + "slot2Chance");
         if(o13450.value == -1)
         {
            o13450.value = 2147483647;
         }
         return this;
      }
   }
}
