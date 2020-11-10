package
{
   use namespace b2internal;
   
   public class o17586
   {
      
      b2internal static const o17547:int = -1;
      
      b2internal static const o6715:int = 0;
      
      b2internal static const o7541:int = 1;
      
      b2internal static const o4678:int = 2;
      
      b2internal static const o386:int = 3;
      
      public static const o7996:int = 1;
      
      public static const o14722:int = 0;
      
      public static const o17892:int = -1;
       
      
      b2internal var o3804:int;
      
      b2internal var o4879:Number;
      
      public function o17586()
      {
         super();
         o3804 = -1;
         o4879 = 0.005;
      }
      
      public static function o15642(param1:o17586, param2:o12362, param3:o17586, param4:o12362) : Boolean
      {
         var _loc6_:o3899 = new o3899();
         _loc6_.o9917 = new o10231();
         _loc6_.o9917.o18596(param1);
         _loc6_.o5256 = new o10231();
         _loc6_.o5256.o18596(param3);
         _loc6_.o11204 = param2;
         _loc6_.o20039 = param4;
         _loc6_.o14251 = true;
         var _loc5_:o7731 = new o7731();
         _loc5_.o16191 = 0;
         var _loc7_:o19 = new o19();
         o17268.o1713(_loc7_,_loc5_,_loc6_);
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function o2747() : o17586
      {
         return null;
      }
      
      public function o18596(param1:o17586) : void
      {
         o4879 = param1.o4879;
      }
      
      public function o20697() : int
      {
         return o3804;
      }
      
      public function o14704(param1:o12362, param2:o20021) : Boolean
      {
         return false;
      }
      
      public function o4566(param1:o14303, param2:o13148, param3:o12362) : Boolean
      {
         return false;
      }
      
      public function o7379(param1:o1693, param2:o12362) : void
      {
      }
      
      public function o14604(param1:o14127, param2:Number) : void
      {
      }
      
      public function o5496(param1:o20021, param2:Number, param3:o12362, param4:o20021) : Number
      {
         return 0;
      }
   }
}
