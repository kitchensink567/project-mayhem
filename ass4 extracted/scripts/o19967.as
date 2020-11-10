package
{
   use namespace b2internal;
   
   public class o19967
   {
      
      public static const o18715:int = 1;
      
      public static const o573:int = 2;
      
      public static const o4659:int = 4;
       
      
      public var o6942:Vector.<o14892>;
      
      public var o17991:o20021;
      
      public var o11266:o20021;
      
      public var o3804:int;
      
      public var o13593:int = 0;
      
      public function o19967()
      {
         var _loc1_:int = 0;
         super();
         o6942 = new Vector.<o14892>(2);
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            o6942[_loc1_] = new o14892();
            _loc1_++;
         }
         o17991 = new o20021();
         o11266 = new o20021();
      }
      
      public function o6246() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            (o6942[_loc1_] as o14892).o6246();
            _loc1_++;
         }
         o17991.o14195();
         o11266.o14195();
         o3804 = 0;
         o13593 = 0;
      }
      
      public function o18596(param1:o19967) : void
      {
         var _loc2_:int = 0;
         o13593 = param1.o13593;
         _loc2_ = 0;
         while(_loc2_ < 2)
         {
            (o6942[_loc2_] as o14892).o18596(param1.o6942[_loc2_]);
            _loc2_++;
         }
         o17991.o13101(param1.o17991);
         o11266.o13101(param1.o11266);
         o3804 = param1.o3804;
      }
      
      public function o2747() : o19967
      {
         var _loc1_:o19967 = new o19967();
         _loc1_.o18596(this);
         return _loc1_;
      }
   }
}
