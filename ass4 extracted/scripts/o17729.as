package
{
   public class o17729
   {
      
      public static const o11996:int = 0;
      
      public static const o17115:int = 1;
      
      public static const o1464:int = 2;
      
      public static const o11660:int = 3;
      
      public static const o13897:int = 4;
      
      public static const o8847:int = 5;
      
      public static const o2019:int = 6;
      
      public static const o8601:int = 7;
      
      public static const o20619:int = 8;
      
      public static const o5095:int = 9;
      
      public static const o11028:int = 10;
      
      public static const o526:int = 11;
       
      
      public var o797:int;
      
      public var o8463:int;
      
      public var x:Number;
      
      public var y:Number;
      
      public var o3458:Number = 0;
      
      public var alpha:Number = 0;
      
      public function o17729()
      {
         super();
      }
      
      public function o2008() : void
      {
         if(o3458 <= 0)
         {
            alpha = 0;
            o3458 = 1;
         }
      }
      
      public function o20013() : Boolean
      {
         if(o3458 >= 0)
         {
            o3458 = -5;
         }
         return alpha <= 0;
      }
      
      public function o7658(param1:Number) : void
      {
         if(o3458 == 0 || param1 == 0)
         {
            return;
         }
         alpha = alpha + o3458 * param1;
         if(alpha <= 0)
         {
            alpha = 0;
            o3458 = 0;
         }
         else if(alpha >= 1)
         {
            alpha = 1;
            o3458 = 0;
         }
      }
   }
}
