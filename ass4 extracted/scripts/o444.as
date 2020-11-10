package
{
   public class o444
   {
       
      
      private var o2608:int;
      
      private var o3634:int;
      
      public var o5689:String;
      
      public var o18409:int;
      
      private var o4959:o10411;
      
      public function o444()
      {
         o4959 = new o10411(false);
         super();
      }
      
      public function get o4114() : Boolean
      {
         return o4959.value;
      }
      
      public function set o4114(param1:Boolean) : void
      {
         o4959.value = param1;
      }
      
      public function get o5693() : int
      {
         return o2608;
      }
      
      public function get o1830() : int
      {
         return o3634;
      }
      
      public function o6671(param1:int) : void
      {
         o2608 = param1;
      }
      
      public function o20414(param1:int) : void
      {
         o3634 = param1;
      }
      
      public function o2199() : void
      {
         this.o3634++;
      }
      
      public function o10682() : void
      {
         this.o3634--;
      }
      
      public function o14264() : Object
      {
         var _loc1_:Object = {};
         _loc1_[108] = o2608;
         _loc1_[109] = o3634;
         return _loc1_;
      }
      
      public function o8169(param1:Object) : void
      {
         o2608 = param1[108];
         o3634 = param1[109];
      }
   }
}
