package
{
   public class o6921
   {
      
      public static const o9187:int = -1;
      
      public static const o4159:int = 0;
      
      public static const o1247:int = 1;
      
      public static const o10137:int = 2;
      
      public static const o3949:int = 3;
      
      public static const o8315:int = 4;
      
      private static var o3766:int = -1;
      
      public static var o19336:Vector.<String> = Vector.<String>(["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractDataRetrieval","com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractAmmoRecovery","com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractSupportWeaponsShipment","com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractEquipmentSalvage","com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractZombieHotspot"]);
       
      
      public function o6921()
      {
         super();
      }
      
      public static function get o8570() : String
      {
         if(o3766 >= 0 && o3766 < o19336.length)
         {
            return o19336[o3766];
         }
         return "Invalid Contract Type";
      }
      
      public static function set o15035(param1:int) : void
      {
         switch(int(param1) - 100)
         {
            case 0:
               o3766 = 1;
               break;
            case 1:
               o3766 = 0;
               break;
            case 2:
               o3766 = 3;
               break;
            case 3:
               o3766 = 2;
               break;
            case 4:
               o3766 = 4;
         }
      }
      
      public static function o1774(param1:int) : String
      {
         switch(int(param1) - 100)
         {
            case 0:
               return "AR";
            case 1:
               return "DR";
            case 2:
               return "ES";
            case 3:
               return "SWS";
            case 4:
               return "ZH";
         }
      }
      
      public static function get o15035() : int
      {
         return o3766;
      }
      
      public static function reset() : void
      {
         o3766 = -1;
      }
   }
}
