package
{
   public class o4733
   {
       
      
      private var o15094:o16123;
      
      private var o2766:o16123;
      
      private var o20345:o16123;
      
      private var o1574:o16123;
      
      private var o3493:o16123;
      
      private var o11726:o10411;
      
      public function o4733()
      {
         o15094 = new o16123(0);
         o2766 = new o16123(0);
         o20345 = new o16123(0);
         o1574 = new o16123(0);
         o3493 = new o16123(0);
         o11726 = new o10411(false);
         super();
      }
      
      public function get o18800() : int
      {
         return o15094.value;
      }
      
      public function get o8293() : int
      {
         return o2766.value;
      }
      
      public function get o18433() : int
      {
         return o20345.value;
      }
      
      public function get o15682() : int
      {
         return o1574.value;
      }
      
      public function get o13590() : int
      {
         return o3493.value;
      }
      
      public function get o17255() : int
      {
         return o1574.value + o3493.value;
      }
      
      public function get o10318() : Boolean
      {
         return o11726.value;
      }
      
      public function set o18800(param1:int) : void
      {
         o15094.value = param1;
      }
      
      public function set o8293(param1:int) : void
      {
         o2766.value = param1;
      }
      
      public function set o18433(param1:int) : void
      {
         o20345.value = param1;
      }
      
      public function set o15682(param1:int) : void
      {
         o1574.value = param1;
      }
      
      public function set o13590(param1:int) : void
      {
         o3493.value = param1;
      }
      
      public function set o10318(param1:Boolean) : void
      {
         o11726.value = param1;
      }
      
      public function o19599() : Object
      {
         var _loc1_:Object = {};
         _loc1_[110] = o15094.value;
         _loc1_[111] = o2766.value;
         _loc1_[112] = o20345.value;
         _loc1_[113] = o11726.value;
         _loc1_[114] = o1574.value;
         _loc1_[115] = o3493.value;
         return _loc1_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
      
      public function o1686(param1:Object) : void
      {
         o15094.value = param1[110];
         if(param1[111] != null)
         {
            o2766.value = param1[111];
            o20345.value = param1[112];
            o11726.value = param1[113];
         }
         if(param1[114] != null)
         {
            o1574.value = param1[114];
            o3493.value = param1[115];
         }
      }
      
      public function o8169(param1:Object) : void
      {
         o1686(param1);
      }
   }
}
