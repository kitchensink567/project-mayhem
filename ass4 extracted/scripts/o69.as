package
{
   public class o69
   {
       
      
      public var o5916:o2736;
      
      private var o15094:o16123;
      
      private var o1635:o16123;
      
      public var o6393:String;
      
      public var o7219:String;
      
      public var o1007:String;
      
      private var o17215:o16123;
      
      public var o16204:String;
      
      public var o1745:String;
      
      public var o16372:int = 0;
      
      public var o19841:Vector.<String>;
      
      public var o8530:Vector.<String>;
      
      private var o19263:o16123;
      
      private var o2490:o16123;
      
      public var o13385:Boolean = true;
      
      private var o862:o16123;
      
      public function o69()
      {
         o15094 = new o16123(0);
         o1635 = new o16123(0);
         o17215 = new o16123(0);
         o16204 = "";
         o1745 = "";
         o19263 = new o16123(0);
         o2490 = new o16123(0);
         o862 = new o16123(0);
         super();
      }
      
      public function get o18800() : int
      {
         return o15094.value;
      }
      
      public function get o17861() : int
      {
         return o1635.value;
      }
      
      public function get o3807() : int
      {
         return o17215.value;
      }
      
      public function get o5894() : int
      {
         return o19263.value;
      }
      
      public function get o10387() : int
      {
         return o2490.value;
      }
      
      public function get o7023() : int
      {
         return o862.value;
      }
      
      public function set o18800(param1:int) : void
      {
         o15094.value = param1;
      }
      
      public function set o17861(param1:int) : void
      {
         o1635.value = param1;
      }
      
      public function set o3807(param1:int) : void
      {
         o17215.value = param1;
      }
      
      public function set o5894(param1:int) : void
      {
         o19263.value = param1;
      }
      
      public function set o10387(param1:int) : void
      {
         o2490.value = param1;
      }
      
      public function set o7023(param1:int) : void
      {
         o862.value = param1;
      }
      
      public function o18084() : o69
      {
         var _loc1_:o69 = new o69();
         _loc1_.o15094.value = o15094.value;
         _loc1_.o1635.value = o1635.value;
         _loc1_.o6393 = "Test level";
         _loc1_.o7219 = o7219;
         _loc1_.o1007 = "Test level";
         _loc1_.o17215.value = 0;
         _loc1_.o16204 = "test level failed";
         _loc1_.o1745 = "test short msg";
         _loc1_.o16372 = o16372;
         _loc1_.o19841 = new Vector.<String>();
         _loc1_.o8530 = new Vector.<String>();
         _loc1_.o19263.value = o19263.value;
         _loc1_.o2490.value = o2490.value;
         _loc1_.o13385 = o13385;
         _loc1_.o5916 = o5916;
         return _loc1_;
      }
   }
}
