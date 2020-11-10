package
{
   import flash.events.Event;
   import flash.system.MessageChannel;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o9093 extends o17557 implements o3135
   {
       
      
      private var o19165:Dictionary;
      
      private var o2154:o12600;
      
      public function o9093(param1:MessageChannel, param2:MessageChannel)
      {
         o19165 = new Dictionary();
         o2154 = new o8023();
         super(param1,param2);
         param2.addEventListener("channelMessage",o1204);
      }
      
      public function o19115() : void
      {
         o15777(o14571.o19115);
      }
      
      private function o1204(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(!o14061())
         {
            return;
         }
         var _loc4_:int = receive();
         switch(int(_loc4_))
         {
            case 0:
               _loc5_ = receive(true);
               _loc6_ = receive(true);
               if(o19165[_loc5_] == null)
               {
                  return;
               }
               _loc6_.position = 0;
               o19165[_loc5_].data = _loc6_;
               delete o19165[_loc5_];
               break;
            case 1:
               _loc3_ = Mem.create(this,o13908) as o13908;
               _loc3_.initialise(receive(true));
               dispatchData(_loc3_);
               break;
            case 2:
               _loc7_ = Mem.create(this,o15735) as o15735;
               _loc7_.initialise(receive(true));
               dispatchData(_loc7_);
               break;
            case 3:
               _loc2_ = Mem.create(this,o5279) as o5279;
               _loc2_.initialise(receive(true),receive(true));
               dispatchData(_loc2_);
         }
      }
      
      public function o17485(param1:String) : o16124
      {
         if(o19165[param1] != null)
         {
            return o19165[param1];
         }
         var _loc2_:o16124 = new o16124();
         o19165[param1] = _loc2_;
         o5964.send(0);
         o5964.send(param1);
         return _loc2_;
      }
      
      public function o15777(param1:int) : void
      {
         o2154.o15777(param1);
      }
      
      public function dispatchData(param1:Event) : void
      {
         o2154.dispatchData(param1);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o16280(param1,param2,param3);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o19926(param1,param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         o2154.o12657(param1,param2);
      }
      
      public function o8289() : Boolean
      {
         return o2154.o8289();
      }
      
      public function o7245(param1:String) : void
      {
         o5964.send(1);
         o5964.send(param1);
      }
   }
}
