package
{
   public class o20401
   {
       
      
      private var o16304:o16123;
      
      private var o1586:o16123;
      
      private var o13452:o16123;
      
      private var o19347:Vector.<o16123>;
      
      private var o15956:o15787;
      
      private var o5937:o16123;
      
      private var o18895:o10411;
      
      private var o3436:o10411;
      
      private var o11158:o10411;
      
      private var o10130:o16123;
      
      public function o20401()
      {
         o16304 = new o16123(0);
         o1586 = new o16123(-1);
         o13452 = new o16123(0);
         o19347 = new Vector.<o16123>();
         o15956 = new o15787(0);
         o5937 = new o16123(0);
         o18895 = new o10411(false);
         o3436 = new o10411(false);
         o11158 = new o10411(false);
         o10130 = new o16123(0);
         super();
      }
      
      public function get o3257() : Boolean
      {
         return o3436.value;
      }
      
      public function get o8031() : Boolean
      {
         return o11158.value;
      }
      
      public function get o263() : int
      {
         return o10130.value;
      }
      
      public function set o3257(param1:Boolean) : void
      {
         o3436.value = param1;
      }
      
      public function set o8031(param1:Boolean) : void
      {
         o11158.value = param1;
      }
      
      public function set o263(param1:int) : void
      {
         o10130.value = param1;
      }
      
      public function get type() : int
      {
         return o16304.value;
      }
      
      public function get o11876() : int
      {
         return o1586.value;
      }
      
      public function get grade() : int
      {
         return o13452.value;
      }
      
      public function get o15192() : Number
      {
         return o15956.value;
      }
      
      public function get o4752() : int
      {
         return o5937.value;
      }
      
      public function get o1419() : Boolean
      {
         return o18895.value;
      }
      
      public function set type(param1:int) : void
      {
         o16304.value = param1;
      }
      
      public function set o11876(param1:int) : void
      {
         o1586.value = param1;
      }
      
      public function set grade(param1:int) : void
      {
         o13452.value = param1;
      }
      
      public function set o4752(param1:int) : void
      {
         o5937.value = param1;
      }
      
      public function set o1419(param1:Boolean) : void
      {
         o18895.value = param1;
      }
      
      public function set o15192(param1:Number) : void
      {
         o15956.value = param1;
      }
      
      public function get o631() : int
      {
         return o19347.length;
      }
      
      public function o14893(param1:int) : void
      {
         o19347.push(new o16123(param1));
      }
      
      public function o4530(param1:int) : int
      {
         return o19347[param1].value;
      }
      
      public function o20140() : void
      {
         o19347 = new Vector.<o16123>();
      }
      
      public function o19115() : void
      {
         o16304 = null;
         o1586 = null;
         o13452 = null;
         o19347 = null;
         o15956 = null;
         o3436 = null;
         o11158 = null;
         o10130 = null;
         o5937 = null;
         o18895 = null;
      }
   }
}
