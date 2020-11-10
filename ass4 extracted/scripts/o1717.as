package
{
   public class o1717
   {
       
      
      private var o4842:o15787;
      
      private var o19176:o15787;
      
      private var o17814:o15787;
      
      private var o243:o15787;
      
      private var o7086:o15787;
      
      private var o18137:o15787;
      
      private var o20089:o15787;
      
      private var o7502:o15787;
      
      private var o5596:o15787;
      
      private var o8526:o15787;
      
      private var o11318:o15787;
      
      public function o1717()
      {
         o4842 = new o15787(0);
         o19176 = new o15787(0);
         o17814 = new o15787(0);
         o243 = new o15787(0);
         o7086 = new o15787(0);
         o18137 = new o15787(0);
         o20089 = new o15787(0);
         o7502 = new o15787(0);
         o5596 = new o15787(0);
         o8526 = new o15787(0);
         o11318 = new o15787(0);
         super();
      }
      
      public function get o15724() : Number
      {
         return o4842.value;
      }
      
      public function get o2438() : Number
      {
         return o19176.value;
      }
      
      public function get o14419() : Number
      {
         return o17814.value;
      }
      
      public function get o17472() : Number
      {
         return o243.value;
      }
      
      public function get o6904() : Number
      {
         return o7086.value;
      }
      
      public function get o15526() : Number
      {
         return o18137.value;
      }
      
      public function get o9989() : Number
      {
         return o20089.value;
      }
      
      public function get o15198() : Number
      {
         return o7502.value;
      }
      
      public function get o3315() : Number
      {
         return o5596.value;
      }
      
      public function get o15612() : Number
      {
         return o8526.value;
      }
      
      public function get o15075() : Number
      {
         return o11318.value;
      }
      
      public function init(param1:o2693) : void
      {
         var _loc2_:String = "loot.rollConsumableRates.";
         o4842.value = param1.o17521(_loc2_ + "fragGrenade");
         o19176.value = param1.o17521(_loc2_ + "cryoGrenade");
         o17814.value = param1.o17521(_loc2_ + "premiumAmmo");
         o243.value = param1.o17521(_loc2_ + "medpack");
         o7086.value = param1.o17521(_loc2_ + "machineGunTurret");
         o18137.value = param1.o17521(_loc2_ + "cryoTurret");
         o20089.value = param1.o17521(_loc2_ + "heavyShotTurret");
         o7502.value = param1.o17521(_loc2_ + "missleTurret");
         o5596.value = param1.o17521(_loc2_ + "flameTurret");
         o8526.value = param1.o17521(_loc2_ + "zeusTurret");
         o11318.value = param1.o17521(_loc2_ + "plasmaTurret");
      }
   }
}
