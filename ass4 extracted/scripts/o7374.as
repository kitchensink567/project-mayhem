package
{
   public class o7374
   {
       
      
      public var o9344:o6596;
      
      public var o8919:o6596;
      
      public var o5281:o6596;
      
      public var o19789:o6596;
      
      public var o3007:o6596;
      
      public var o17861:o6596;
      
      public var o2032:o6596;
      
      public function o7374()
      {
         super();
      }
      
      private function o6030(param1:o2693, param2:String) : o6596
      {
         var _loc3_:String = "loot.rollDropRates." + param2 + ".";
         return new o6596(param1.o3554(_loc3_ + "dropClassId"),param1.o17521(_loc3_ + "cash"),param1.o17521(_loc3_ + "consumable"),param1.o17521(_loc3_ + "strongbox"));
      }
      
      public function init(param1:o2693) : void
      {
         o9344 = o6030(param1,"regular");
         o8919 = o6030(param1,"subBoss");
         o5281 = o6030(param1,"boss");
         o19789 = o6030(param1,"area");
         o3007 = o6030(param1,"weaponsCache");
         o17861 = o6030(param1,"cash");
         o2032 = o6030(param1,"regularHighRollerPowerup");
      }
   }
}
