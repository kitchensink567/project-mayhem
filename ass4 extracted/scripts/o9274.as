package
{
   public class o9274
   {
      
      public static const o11997:Array = [43,28,6,15,3,3];
      
      public static var o259:Array = null;
       
      
      public function o9274()
      {
         super();
      }
      
      public static function o13653(param1:Number) : int
      {
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         if(o259 == null)
         {
            o259 = [];
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < o11997.length)
            {
               _loc2_ = Number(_loc2_ + o11997[_loc3_]);
               _loc3_++;
            }
            _loc3_ = 0;
            while(_loc3_ < o11997.length)
            {
               if(_loc3_ > 0)
               {
                  o259.push(o11997[_loc3_] / _loc2_ + o259[_loc3_ - 1]);
               }
               else
               {
                  o259.push(o11997[_loc3_] / _loc2_);
               }
               _loc3_++;
            }
         }
         if(param1 < o259[0])
         {
            return 0;
         }
         if(param1 < o259[1])
         {
            return 1;
         }
         if(param1 < o259[2])
         {
            return 2;
         }
         if(param1 < o259[3])
         {
            return 3;
         }
         if(param1 < o259[4])
         {
            return 4;
         }
         if(param1 < o259[5])
         {
            return 5;
         }
         return 0;
      }
   }
}
