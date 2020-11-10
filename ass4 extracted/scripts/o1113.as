package
{
   use namespace b2internal;
   
   public class o1113 extends o16520
   {
       
      
      public function o1113()
      {
         super();
      }
      
      public static function o6611(param1:*) : o16520
      {
         return new o1113();
      }
      
      public static function o18143(param1:o16520, param2:*) : void
      {
      }
      
      public function o6246(param1:o11359, param2:o11359) : void
      {
         super.o6246(param1,param2);
         o14980.o12199(param1.o20697() == 1);
         o14980.o12199(param2.o20697() == 0);
      }
      
      override b2internal function o5562() : void
      {
         var _loc1_:o5173 = o5573.o14645;
         var _loc2_:o5173 = o18752.o14645;
         o11710.o14395(o19876,o5573.o4861() as o13884,_loc1_.o7718,o18752.o4861() as o15114,_loc2_.o7718);
      }
   }
}
