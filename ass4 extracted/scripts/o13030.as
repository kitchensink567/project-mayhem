package
{
   public class o13030
   {
      
      public static const o7372:int = 1;
      
      public static const o17998:int = 2;
      
      public static const o6023:int = 3;
      
      public static const o6924:int = 4;
      
      public static const o13656:int = 5;
      
      public static const o2467:int = 6;
      
      public static const o20210:int = 7;
      
      public static const o17635:int = 8;
      
      public static const o19125:int = 10;
      
      public static const o17469:int = 9;
      
      public static const o13325:int = 11;
      
      public static const o10406:int = 12;
      
      public static const o20026:int = 13;
      
      public static const o4410:int = 14;
      
      public static const o14398:int = 15;
       
      
      public function o13030()
      {
         super();
      }
      
      public static function o2809(param1:String) : int
      {
         param1 = param1.toUpperCase();
         if(param1 == "CONTROL_OFFICER")
         {
            return 1;
         }
         if(param1 == "MANTIS_PILOT")
         {
            return 2;
         }
         if(param1 == "COMBOT")
         {
            return 3;
         }
         if(param1 == "INFECTED_COMBOT")
         {
            return 4;
         }
         if(param1 == "FRIGHTENED_CIVILIAN")
         {
            return 5;
         }
         if(param1 == "VIP")
         {
            return 6;
         }
         if(param1 == "HOSPITAL_ADMIN")
         {
            return 7;
         }
         if(param1 == "ASSAULT")
         {
            return 8;
         }
         if(param1 == "MEDIC")
         {
            return 10;
         }
         if(param1 == "HEAVY")
         {
            return 9;
         }
         if(param1 == "CHEREK_GRIN")
         {
            return 11;
         }
         if(param1 == "ACTIVE_CHARACTER")
         {
            return -1;
         }
         if(param1 == "Christmas")
         {
            return -1;
         }
         throw new Error("Unknown icon code");
      }
   }
}
