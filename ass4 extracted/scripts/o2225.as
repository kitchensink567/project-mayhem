package
{
   public class o2225
   {
      
      public static const o14851:int = 0;
      
      public static const o6833:int = 1;
      
      public static const o14889:int = 55;
      
      public static const o9552:int = 56;
      
      public static const o1551:int = 57;
      
      public static const o2273:int = 58;
      
      public static const o6012:int = 59;
      
      public static const o11114:int = 60;
      
      public static const o7690:int = 61;
      
      public static const o6946:int = 62;
      
      public static const o16844:int = 1000;
       
      
      public function o2225()
      {
         super();
      }
      
      public static function o716(param1:*) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case 0:
               return "Bounty";
            case 1:
               return "Bounty";
            case 55:
               return "Custom Championship";
            case 56:
               return "Storm of Bullets";
            case 57:
               return "Elite Squads";
            case 58:
               return "Lone Wolf";
            case 59:
               return "SAS Blitz";
            case 60:
               return "Daily Quest: Singleplayer Wins";
            case 61:
               return "Daily Quest: Multiplayer Wins";
            case 62:
               return "Super Event Boss Kills ";
            case 1000:
               return "Dynamic Event";
            default:
               return "Wrong TaskType Supplied";
         }
      }
   }
}
