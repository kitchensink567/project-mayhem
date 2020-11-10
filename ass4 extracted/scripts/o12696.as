package
{
   public class o12696
   {
      
      public static const o14454:int = 0;
      
      public static const o9045:int = 1;
      
      public static const o2263:int = 2;
      
      public static const o16921:int = 3;
       
      
      public function o12696()
      {
         super();
      }
      
      public static function o5840(param1:String) : int
      {
         var _loc2_:o20567 = o4519.o8116.o476.o9392.o4683(param1);
         if(_loc2_)
         {
            return _loc2_.id;
         }
         return 0;
      }
      
      public static function o19628(param1:int) : String
      {
         var _loc2_:o20567 = o4519.o8116.o476.o9392.o1131(param1);
         if(_loc2_)
         {
            return _loc2_.name + " Edition";
         }
         return "";
      }
      
      public static function o20082() : int
      {
         if(o4519.o8116.o476.o9392.o16643())
         {
            return o4519.o8116.o476.o9392.o7908().id;
         }
         return 0;
      }
   }
}
