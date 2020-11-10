package
{
   public class o8000
   {
      
      public static const o1549:int = 1;
      
      public static const o18518:int = 2;
      
      public static const o3980:int = 3;
      
      public static const o5592:int = 4;
      
      public static const o11671:int = 5;
      
      public static const o15888:int = 6;
      
      public static const o17210:int = 7;
      
      public static const o9434:int = 8;
      
      public static const o14206:int = 10;
      
      public static const o11374:int = 11;
      
      public static const o15702:int = 12;
      
      public static const o13211:int = 13;
      
      public static const o19366:int = 14;
       
      
      public function o8000()
      {
         super();
      }
      
      public static function o6008(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Rubicon Industries";
            case 1:
               return "HVM";
            case 2:
               return "Critical Mass";
            case 3:
               return "Smoke Stack";
            case 4:
               return "Harris Intelligent Kill Systems";
            case 5:
               return "Teknoboom";
            case 6:
               return "Rancor";
            case 7:
               return "Ronson";
            default:
               return "???(" + param1.toString() + ")";
            case 9:
               return "Spaceskin";
            case 10:
               return "Atomic";
            case 11:
               return "Shotlite";
            case 12:
               return "Z Armtech";
            case 13:
               return "Government";
         }
      }
   }
}
