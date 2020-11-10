package
{
   public class o13987
   {
      
      public static const o10442:int = 1;
      
      public static const o16041:int = 2;
      
      public static const energy:int = 3;
      
      public static const o5317:int = 4;
      
      public static const o15610:int = 5;
      
      public static const o5645:int = 6;
      
      public static const o5338:int = 7;
      
      public static const o8073:int = 8;
      
      public static const min:int = 1;
      
      public static const max:int = 8;
       
      
      public function o13987()
      {
         super();
      }
      
      public static function o8975(param1:int) : int
      {
         switch(int(param1) - 5)
         {
            case 0:
               return 3;
            case 1:
               return 2;
            case 2:
               return 4;
         }
      }
      
      public static function o160(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "physical";
            case 1:
               return "thermal";
            case 2:
               return "energy";
            case 3:
               return "chemical";
            case 4:
               return "shock";
            case 5:
               return "cryo";
            case 6:
               return "necro";
         }
      }
   }
}
