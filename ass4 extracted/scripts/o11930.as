package
{
   public class o11930
   {
       
      
      private var o5472:o15787;
      
      private var o5129:o15787;
      
      private var o15019:o15787;
      
      private var o2250:o15787;
      
      private var o5101:o15787;
      
      private var o12646:o15787;
      
      private var o3545:o15787;
      
      private var o4897:o15787;
      
      private var o195:o15787;
      
      private var o13726:o15787;
      
      private var o1431:o15787;
      
      public function o11930()
      {
         o5472 = new o15787(0);
         o5129 = new o15787(0);
         o15019 = new o15787(0);
         o2250 = new o15787(0);
         o5101 = new o15787(0);
         o12646 = new o15787(0);
         o3545 = new o15787(0);
         o4897 = new o15787(0);
         o195 = new o15787(0);
         o13726 = new o15787(0);
         o1431 = new o15787(0);
         super();
      }
      
      public function get o5725() : Number
      {
         return o5472.value;
      }
      
      public function get o18640() : Number
      {
         return o5129.value;
      }
      
      public function get o14120() : Number
      {
         return o15019.value;
      }
      
      public function get o6215() : Number
      {
         return o2250.value;
      }
      
      public function get o5991() : Number
      {
         return o5101.value;
      }
      
      public function get o19455() : Number
      {
         return o12646.value;
      }
      
      public function get o4687() : Number
      {
         return o3545.value;
      }
      
      public function get o9139() : Number
      {
         return o4897.value;
      }
      
      public function get o16832() : Number
      {
         return o195.value;
      }
      
      public function get o13369() : Number
      {
         return o13726.value;
      }
      
      public function get o16685() : Number
      {
         return o1431.value;
      }
      
      public function init(param1:o2693) : void
      {
         var _loc2_:String = "loot.claimStrongbox.weaponAugTypePool.";
         o5472.value = param1.o17521(_loc2_ + "damage");
         o5129.value = param1.o17521(_loc2_ + "pierce");
         o15019.value = param1.o17521(_loc2_ + "range");
         o2250.value = param1.o17521(_loc2_ + "aoe");
         o5101.value = param1.o17521(_loc2_ + "spread");
         o12646.value = param1.o17521(_loc2_ + "rate");
         o3545.value = param1.o17521(_loc2_ + "damageOverTime");
         o4897.value = param1.o17521(_loc2_ + "clip");
         o195.value = param1.o17521(_loc2_ + "reloadTime");
         o13726.value = param1.o17521(_loc2_ + "movementScale");
         o1431.value = param1.o17521(_loc2_ + "projectileSpeed");
      }
   }
}
