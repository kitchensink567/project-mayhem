package
{
   import flash.events.EventDispatcher;
   import flash.system.MessageChannel;
   import flash.system.Worker;
   import flash.system.WorkerDomain;
   import flash.utils.ByteArray;
   
   public class o13407 extends EventDispatcher implements o12752
   {
       
      
      public var o9182:Worker = null;
      
      public var o5964:MessageChannel = null;
      
      public var o17787:MessageChannel = null;
      
      public function o13407(param1:ByteArray)
      {
         super();
         if(param1 != null)
         {
            o9182 = WorkerDomain.current.createWorker(param1);
         }
         o5964 = Worker.current.createMessageChannel(o9182);
         o17787 = o9182.createMessageChannel(Worker.current);
         o9182.setSharedProperty("out",o17787);
         o9182.setSharedProperty("in",o5964);
         o9182.start();
      }
   }
}
