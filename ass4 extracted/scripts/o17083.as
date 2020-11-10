package
{
   import flash.external.ExternalInterface;
   
   public class o17083 implements o4434
   {
       
      
      private var o7069:o10846;
      
      public var o13701:Boolean = false;
      
      private var o388:Boolean = true;
      
      public function o17083(param1:o10846)
      {
         super();
         this.o7069 = param1;
      }
      
      public function get o6382() : Boolean
      {
         return o13701;
      }
      
      public function set o6382(param1:Boolean) : void
      {
         var _loc2_:* = o13701 != param1;
         o13701 = param1;
         o7069.o1181(o13701);
      }
      
      public function init() : void
      {
         ExternalInterface.addCallback("gotAVideo",o17711);
         ExternalInterface.addCallback("watchedVideo",o1505);
         ExternalInterface.addCallback("cancelledVideo",o5295);
         ExternalInterface.addCallback("noVideos",o16369);
      }
      
      public function o2265() : void
      {
         var _loc1_:* = null;
         if(o7069.o19419.o15894.o4848.o4539 != null)
         {
            o6382 = false;
            if(o388)
            {
               o388 = false;
               _loc1_ = o7069.o19419.o15894.o4848.o4539.loginInfo.id;
               ExternalInterface.call("checkInventory",_loc1_,"17545");
            }
            else
            {
               ExternalInterface.call("_sp_video.backgroundLoad");
            }
         }
      }
      
      public function o15977() : void
      {
         ExternalInterface.call("getVideo");
      }
      
      public function o17711(param1:*) : void
      {
         o6382 = true;
      }
      
      public function o1505(param1:*) : void
      {
         o7069.o19419.o15894.o4848.o2719.o6166("SponsorPay");
      }
      
      public function o5295(param1:*) : void
      {
         o6382 = false;
         o7069.o9201();
      }
      
      public function o16369(param1:*) : void
      {
         o6382 = false;
      }
   }
}
