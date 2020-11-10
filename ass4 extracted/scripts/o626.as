package
{
   public class o626
   {
       
      
      private var o20260:o15787;
      
      private var o185:o15787;
      
      private var o7041:o15787;
      
      private var o9309:o15787;
      
      private var o15989:o15787;
      
      private var o15417:o15787;
      
      private var o8662:o15787;
      
      private var o5938:o15787;
      
      private var o2172:o15787;
      
      private var o19816:o15787;
      
      private var o15182:o15787;
      
      private var o14544:o15787;
      
      private var o12622:o15787;
      
      public function o626()
      {
         o20260 = new o15787(0);
         o185 = new o15787(0);
         o7041 = new o15787(0);
         o9309 = new o15787(0);
         o15989 = new o15787(0);
         o15417 = new o15787(0);
         o8662 = new o15787(0);
         o5938 = new o15787(0);
         o2172 = new o15787(0);
         o19816 = new o15787(0);
         o15182 = new o15787(0);
         o14544 = new o15787(0);
         o12622 = new o15787(0);
         super();
      }
      
      public function get o8672() : Number
      {
         return o20260.value;
      }
      
      public function get o9362() : Number
      {
         return o185.value;
      }
      
      public function get o75() : Number
      {
         return o7041.value;
      }
      
      public function get o17636() : Number
      {
         return o9309.value;
      }
      
      public function get o10167() : Number
      {
         return o15989.value;
      }
      
      public function get o9170() : Number
      {
         return o15417.value;
      }
      
      public function get energy() : Number
      {
         return o8662.value;
      }
      
      public function get o11243() : Number
      {
         return o5938.value;
      }
      
      public function get regenHealth() : Number
      {
         return o2172.value;
      }
      
      public function get o11031() : Number
      {
         return o19816.value;
      }
      
      public function get o331() : Number
      {
         return o15182.value;
      }
      
      public function get o2262() : Number
      {
         return o14544.value;
      }
      
      public function get o16109() : Number
      {
         return o12622.value;
      }
      
      public function init(param1:o2693) : void
      {
         var _loc2_:String = "loot.claimStrongbox.equipmentAugTypePool.";
         o20260.value = param1.o17521(_loc2_ + "armorPhysical");
         o185.value = param1.o17521(_loc2_ + "armorHeat");
         o7041.value = param1.o17521(_loc2_ + "armorToxic");
         o9309.value = param1.o17521(_loc2_ + "equipmentMovementScale");
         o15989.value = param1.o17521(_loc2_ + "equipmentSpread");
         o15417.value = param1.o17521(_loc2_ + "equipmentDamage");
         o8662.value = param1.o17521(_loc2_ + "energy");
         o5938.value = param1.o17521(_loc2_ + "health");
         o2172.value = param1.o17521(_loc2_ + "regenHealth");
         o19816.value = param1.o17521(_loc2_ + "regenEnergy");
         o15182.value = param1.o17521(_loc2_ + "recovery");
         o14544.value = param1.o17521(_loc2_ + "equipmentReloadTime");
         o12622.value = param1.o17521(_loc2_ + "meleeDamage");
      }
   }
}
