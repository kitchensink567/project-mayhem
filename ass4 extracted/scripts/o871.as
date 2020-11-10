package
{
   public class o871
   {
      
      public static const o2562:int = 0;
      
      public static const o2760:int = 1;
       
      
      public function o871()
      {
         super();
      }
      
      public static function o18804(param1:*) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case 0:
               return "Normal Ranking";
            case 1:
               return "Threshold Ranking";
            default:
               return "Not Setup";
         }
      }
   }
}
