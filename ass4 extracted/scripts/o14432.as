package
{
   public class o14432 extends o15520
   {
       
      
      private var o16960:o16123;
      
      private var o18314:o16123;
      
      private var o4267:o16123;
      
      private var o6620:o16123;
      
      private var o2212:o16123;
      
      private var o20010:o16123;
      
      public function o14432()
      {
         o16960 = new o16123(0);
         o18314 = new o16123(0);
         o4267 = new o16123(0);
         o6620 = new o16123(0);
         o2212 = new o16123(0);
         o20010 = new o16123(0);
         super();
      }
      
      public function get o10935() : int
      {
         return o16960.value;
      }
      
      public function get o5451() : int
      {
         return o18314.value;
      }
      
      public function get o1991() : int
      {
         return o4267.value;
      }
      
      public function get o13019() : int
      {
         return o6620.value;
      }
      
      public function get o12546() : int
      {
         return o2212.value;
      }
      
      public function get o10753() : int
      {
         return o20010.value;
      }
      
      public function set o10935(param1:int) : void
      {
         o16960.value = param1;
      }
      
      public function set o5451(param1:int) : void
      {
         o18314.value = param1;
      }
      
      public function set o1991(param1:int) : void
      {
         o4267.value = param1;
      }
      
      public function set o13019(param1:int) : void
      {
         o6620.value = param1;
      }
      
      public function set o12546(param1:int) : void
      {
         o2212.value = param1;
      }
      
      public function set o10753(param1:int) : void
      {
         o20010.value = param1;
      }
      
      public function o20820(param1:int) : int
      {
         switch(int(param1))
         {
            case 0:
               return o10935;
            case 1:
               return o5451;
            case 2:
               return o1991;
            case 3:
               return o13019;
            case 4:
               return o12546;
            case 5:
               return o10753;
         }
      }
      
      public function o2734(param1:o14096) : void
      {
         this.id = param1.o10748;
         this.version = param1.o2752.o11570;
         this.o963 = param1.grade;
         this.o3156 = param1.o5520;
         this.o14451 = param1.o4680;
      }
      
      override public function o17060(param1:Object) : void
      {
         super.o17060(param1);
         if(param1[420] != null)
         {
            o16960.value = param1[420];
            o18314.value = param1[421];
            o4267.value = param1[422];
            o6620.value = param1[423];
            o2212.value = param1[424];
            o20010.value = param1[425];
         }
      }
      
      override public function o13379() : Object
      {
         var _loc1_:Object = super.o13379();
         _loc1_[420] = o16960.value;
         _loc1_[421] = o18314.value;
         _loc1_[422] = o4267.value;
         _loc1_[423] = o6620.value;
         _loc1_[424] = o2212.value;
         _loc1_[425] = o20010.value;
         return _loc1_;
      }
   }
}
