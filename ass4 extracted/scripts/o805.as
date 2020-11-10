package
{
   public class o805
   {
      
      public static const o8285:int = 0;
      
      public static const o8405:int = 1;
      
      public static const o16374:int = 2;
      
      public static const o19469:int = 3;
      
      public static const o1272:int = 4;
      
      public static const o1749:int = 5;
      
      public static const o9515:int = 6;
      
      public static const o20084:int = 7;
      
      public static const o16912:int = 8;
      
      public static const o15414:int = 9;
      
      public static const o1471:int = 10;
      
      public static const o2627:int = 11;
      
      public static const o18023:int = 12;
      
      public static const o1279:int = 13;
      
      public static const o20245:int = 14;
      
      public static const o7011:int = 15;
      
      public static var o3716:Array = ["notSetup","bountyEvent","globalEvent","collectionEvent","triggerEvent","championshipEvent","lastManStandingEvent","apocalypseEvent","alphaVirusEvent","virusSamplesEvent","supportWeaponsShipment","ammoRecovery","dataRetrieval","equipmentSalvage","zombieHotspot","highScoreEvent"];
       
      
      public function o805()
      {
         super();
      }
      
      public static function o13313(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o3716;
         for each(var _loc2_ in o3716)
         {
            if(_loc2_.search(param1) != -1)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      public static function o2479(param1:int) : String
      {
         if(param1 < o3716.length)
         {
            return o3716[param1];
         }
         return "notSetup";
      }
      
      public static function o8452(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case 2:
               break;
            case 1:
               break;
            case 6:
               break;
            case 3:
               8;
               break;
            case 7:
               9;
               break;
            case 4:
               6;
               break;
            case 5:
               7;
               break;
            case 101:
               12;
               break;
            case 102:
               13;
               break;
            case 104:
               14;
               break;
            case 103:
               10;
               break;
            case 100:
               11;
         }
         return 0;
      }
   }
}
