package
{
   public class o18960
   {
       
      
      private var o2608:o16123;
      
      public var o5689:String;
      
      public var o3544:int;
      
      public function o18960()
      {
         o2608 = new o16123(0);
         super();
      }
      
      public static function o8169(param1:Object) : o18960
      {
         var _loc2_:o18960 = new o18960();
         _loc2_.o5693 = param1[108];
         _loc2_.o5689 = param1[97];
         _loc2_.o3544 = param1[226];
         return _loc2_;
      }
      
      public function get o5693() : int
      {
         return o2608.value;
      }
      
      public function set o5693(param1:int) : void
      {
         o2608.value = param1;
      }
      
      public function o14264() : Object
      {
         var _loc1_:Object = {};
         _loc1_[108] = o5693;
         _loc1_[97] = o5689;
         _loc1_[226] = o3544;
         return _loc1_;
      }
   }
}
