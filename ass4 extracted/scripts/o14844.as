package
{
   public class o14844
   {
       
      
      private var o15679:o16123;
      
      public var name:String;
      
      private var o15274:o16123;
      
      private var o13519:o16123;
      
      public function o14844()
      {
         o15679 = new o16123(0);
         o15274 = new o16123(0);
         o13519 = new o16123(0);
         super();
      }
      
      public function get o15322() : int
      {
         return o15679.value;
      }
      
      public function get o20235() : int
      {
         return o15274.value;
      }
      
      public function get o9421() : int
      {
         return o13519.value;
      }
      
      public function set o15322(param1:int) : void
      {
         o15679.value = param1;
      }
      
      public function set o20235(param1:int) : void
      {
         o15274.value = param1;
      }
      
      public function set o9421(param1:int) : void
      {
         o13519.value = param1;
      }
      
      public function o18084() : o14844
      {
         var _loc1_:o14844 = new o14844();
         _loc1_.o15679.value = this.o15679.value;
         _loc1_.name = this.name;
         _loc1_.o15274.value = this.o15274.value;
         _loc1_.o13519.value = this.o13519.value;
         return _loc1_;
      }
   }
}
