package
{
   public class o1424
   {
      
      public static const o16961:int = 0;
      
      public static const A:int = 1;
      
      public static const o5404:int = 2;
      
      public static const o2969:int = 3;
      
      public static const B:int = 4;
      
      public static const o18773:int = 5;
      
      public static const o11002:int = 6;
      
      public static const C:int = 7;
      
      public static const o4442:int = 8;
      
      public static const o4036:Array = ["APlus","A","AMinus","BPlus","B","BMinus","CPlus","C","CMinus"];
       
      
      public function o1424()
      {
         super();
      }
      
      public static function o377(param1:int) : String
      {
         var _loc2_:String = "F";
         switch(int(param1))
         {
            case 0:
               _loc2_ = "A+";
               break;
            case 1:
               _loc2_ = "A";
               break;
            case 2:
               _loc2_ = "A-";
               break;
            case 3:
               _loc2_ = "B+";
               break;
            case 4:
               _loc2_ = "B";
               break;
            case 5:
               _loc2_ = "B-";
               break;
            case 6:
               _loc2_ = "C+";
               break;
            case 7:
               _loc2_ = "C";
               break;
            default:
               _loc2_ = "C-";
         }
         return _loc2_;
      }
   }
}
