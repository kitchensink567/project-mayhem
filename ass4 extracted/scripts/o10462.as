package
{
   import assets.ui.dialog.ConfirmNKPurchaseDialogAsset;
   
   public class o10462
   {
       
      
      private var o16989:o13064;
      
      protected var o9127:o3450;
      
      private var o7592:int;
      
      private var o12039:Function;
      
      public function o10462(param1:o13064)
      {
         super();
         this.o16989 = param1;
      }
      
      public function o12694(param1:String, param2:String, param3:int, param4:Function) : void
      {
         this.o12039 = param4;
         var _loc5_:o14200 = o4519.o8116.profileData;
         this.o7592 = param3;
         var _loc6_:int = _loc5_.o5292.o3911.o4291(param3);
         o9127 = new o3450();
         o9127.init(new ConfirmNKPurchaseDialogAsset());
         this.o16989.o9642(o9127);
         o9127.o6959(_loc6_);
         o9127.o13483(param1,param2,o10774,o12205);
         _loc5_.o15894.o4848.o18278.o16280(null,o19869.o17670,o9264);
         _loc5_.o15894.o4848.o18278.o16280(null,o19869.o391,o98);
      }
      
      protected function o10774() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         _loc1_.o15894.o4848.o18278.o6950(o7592);
      }
      
      protected function o12205() : void
      {
         o9127 = null;
         o13640();
      }
      
      protected function o13640() : void
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         _loc1_.o15894.o4848.o18278.o12657(o19869.o17670,o9264);
         _loc1_.o15894.o4848.o18278.o12657(o19869.o391,o98);
         o16989 = null;
         o9127 = null;
         o12039 = null;
      }
      
      protected function o11774() : void
      {
         o9127.o1602();
         o9127 = null;
         o13640();
      }
      
      private function o9264(param1:o19869) : void
      {
         o8339("ConfirmNkCoinPurchaseDialog::inventoryItem_purchaseFailed");
         if(param1.o19898.o5693 == o7592 && o12039 != null)
         {
            o11774();
         }
      }
      
      private function o98(param1:o19869) : void
      {
         if(param1.o19898.o5693 == o7592 && o12039 != null)
         {
            o12039();
            o11774();
         }
      }
   }
}
