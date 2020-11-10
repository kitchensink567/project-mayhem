package
{
   import flash.external.ExternalInterface;
   
   public class o18234 implements o4434
   {
       
      
      private var o7069:o10846;
      
      public var o13701:Boolean = false;
      
      private var o14289:Boolean = false;
      
      public function o18234(param1:o10846)
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
         ExternalInterface.addCallback("gotSuperSonicVideo",o3658);
         ExternalInterface.addCallback("noSuperSonicVideos",o16369);
         ExternalInterface.addCallback("watchedSuperSonicVideo",o1505);
      }
      
      public function o3658() : void
      {
         o6382 = true;
      }
      
      public function o16369() : void
      {
         o6382 = false;
      }
      
      public function o1505() : void
      {
         o7069.o19419.o15894.o4848.o2719.o6166("SuperSonic");
         var _loc1_:Boolean = o6382;
         o6382 = false;
         o7069.o9201();
      }
      
      public function o2265() : void
      {
         var _loc1_:* = null;
         if(o7069.o19419.o15894.o4848.o4539 != null && o14289 == false)
         {
            o6382 = false;
            o14289 = true;
            _loc1_ = o7069.o19419.o15894.o4848.o4539.loginInfo.id;
            ExternalInterface.call("checkForSuperSonicVideos",_loc1_,"2e3586b9");
         }
      }
      
      public function o15977() : void
      {
         ExternalInterface.call("watchSuperSonicVideo");
      }
   }
}
