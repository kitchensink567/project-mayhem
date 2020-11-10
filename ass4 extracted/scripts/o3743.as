package
{
   public class o3743
   {
       
      
      public var o4589:o14018;
      
      private var o13452:o16123;
      
      public function o3743()
      {
         o13452 = new o16123(0);
         super();
      }
      
      public function get grade() : int
      {
         return o13452.value;
      }
      
      public function set grade(param1:int) : void
      {
         o13452.value = param1;
      }
      
      public function get o8265() : o18474
      {
         return o4589.o4036[o13452.value - 1];
      }
      
      public function init(param1:o14018, param2:int) : o3743
      {
         this.o4589 = param1;
         this.o13452.value = param2;
         return this;
      }
      
      public function o19599(param1:Boolean) : Object
      {
         var _loc2_:Object = {};
         _loc2_[116] = o4589.o18172;
         _loc2_[2] = o13452.value;
         _loc2_[117] = param1;
         return _loc2_;
      }
      
      public function o14264(param1:Boolean) : Object
      {
         return o19599(param1);
      }
      
      public function o1686(param1:o14200, param2:Object) : o3743
      {
         this.o13452.value = param2[2];
         var _loc4_:int = param2[116];
         this.o13452.value = param2[2];
         var _loc3_:Boolean = param2[117];
         this.o4589 = param1.o5292.o5812(_loc4_);
         return this;
      }
      
      public function o8169(param1:o14200, param2:Object) : o3743
      {
         return o1686(param1,param2);
      }
   }
}
