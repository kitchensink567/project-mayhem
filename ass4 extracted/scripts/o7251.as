package
{
   public class o7251
   {
      
      public static const o20319:int = 0;
      
      public static const o3038:int = 1;
      
      public static const o11006:int = 2;
      
      public static const o9661:int = 3;
      
      public static const o14273:int = 4;
      
      public static const o20185:int = 5;
       
      
      public function o7251()
      {
         super();
      }
      
      public static function o3402(param1:int) : o18631
      {
         var _loc2_:o18631 = o14200.o19505.o5292.o418.o18182(param1);
         return _loc2_;
      }
      
      public static function o1990(param1:int, param2:int) : o18631
      {
         var _loc3_:o18631 = new o18631(param1);
         switch(int(param2) - 1)
         {
            case 0:
               _loc3_.o2233 = true;
            case 1:
               _loc3_.o7581 = true;
            case 2:
               _loc3_.o405 = true;
         }
         return _loc3_;
      }
      
      public static function o20313(param1:o14096 = null, param2:int = -1, param3:Boolean = false, param4:Boolean = false, param5:int = -1) : String
      {
         var _loc6_:Boolean = false;
         if(param1)
         {
            param2 = param1.o2752.id;
            param3 = param1.o2752.o19901;
            param4 = param1.o1419;
            param5 = param1.o4752;
            _loc6_ = o3402(param1.o2752.id).o8044;
         }
         else
         {
            _loc6_ = o3402(param2).o8044;
         }
         if(param3)
         {
            return "Premium";
         }
         if(_loc6_)
         {
            if(param4)
            {
               return "None";
            }
            return "Championship";
         }
         switch(int(param5) - 1)
         {
            case 0:
               return "Halloween";
            case 1:
               return "Christmas";
            case 2:
               return "Easter";
         }
      }
      
      public static function o19044(param1:o1253 = null, param2:int = -1, param3:Boolean = false, param4:Boolean = false, param5:int = -1) : String
      {
         var _loc6_:Boolean = false;
         if(param1)
         {
            param2 = param1.o10239.id;
            param3 = param1.o10239.o19901;
            param4 = param1.o1419;
            param5 = -1;
         }
         if(param4)
         {
            return "None";
         }
         if(param3)
         {
            return "Premium";
         }
         if(_loc6_)
         {
            return "Championship";
         }
         switch(int(param5) - 1)
         {
            case 0:
               return "Halloween";
            case 1:
               return "Christmas";
            case 2:
               return "Easter";
         }
      }
   }
}
