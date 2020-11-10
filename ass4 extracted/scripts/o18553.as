package
{
   public class o18553
   {
      
      public static const o2850:int = 1;
      
      public static const o8219:int = 2;
      
      public static const o8768:int = 3;
      
      public static const o18029:int = 4;
      
      public static const o20100:int = 5;
      
      public static const o18179:int = 6;
      
      public static const o5781:int = 7;
      
      public static const o11663:int = 8;
      
      public static const o13125:int = 9;
      
      public static const o20921:int = 10;
      
      public static const o1420:int = 11;
      
      public static const o18195:int = 12;
      
      public static const min:int = 1;
      
      public static const max:int = 12;
       
      
      public function o18553()
      {
         super();
      }
      
      public static function o11759(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Pistol";
            case 1:
               return "SMG";
            case 2:
               return "Assault Rifle";
            case 3:
               return "Shotgun";
            case 4:
               return "Sniper Rifle";
            case 5:
               return "Rocket Launcher";
            default:
               return "";
            case 7:
               return "Flamethrower";
            case 8:
               return "LMG";
            case 9:
               return "Disc Thrower";
            case 10:
               return "Laser Gun";
            case 11:
               return "Acid Thrower";
         }
      }
   }
}
