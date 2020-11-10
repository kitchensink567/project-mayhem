package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.system.MessageChannel;
   import flash.system.Worker;
   
   public class o17557 extends EventDispatcher
   {
       
      
      public var o5964:MessageChannel = null;
      
      private var o17787:MessageChannel = null;
      
      private var o2591:Vector.<MessageChannel> = null;
      
      private var o18700:Vector.<MessageChannel> = null;
      
      public function o17557(param1:MessageChannel, param2:MessageChannel)
      {
         super();
         o2591 = Mem.create(this,Vector.<MessageChannel>);
         o18700 = Mem.create(this,Vector.<MessageChannel>);
         this.o5964 = param1;
         this.o17787 = param2;
      }
      
      public function o7339(param1:Worker) : MessageChannel
      {
         var _loc2_:MessageChannel = param1.createMessageChannel(Worker.current);
         _loc2_.addEventListener("channelMessage",o10274);
         o18700.push(_loc2_);
         return _loc2_;
      }
      
      public function o10274(param1:Event) : void
      {
         var _loc2_:MessageChannel = param1.target as MessageChannel;
         while(_loc2_.messageAvailable)
         {
            send(_loc2_.receive());
         }
      }
      
      public function o3940(param1:Worker) : MessageChannel
      {
         var _loc2_:MessageChannel = Worker.current.createMessageChannel(param1);
         o2591.push(_loc2_);
         return _loc2_;
      }
      
      public function send(... rest) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = rest;
         for each(var _loc2_ in rest)
         {
            o5964.send(_loc2_);
         }
      }
      
      public function o14061() : Boolean
      {
         return o17787.messageAvailable;
      }
      
      public function receive(param1:Boolean = false) : *
      {
         var _loc3_:* = o17787.receive(param1);
         var _loc5_:int = 0;
         var _loc4_:* = o2591;
         for each(var _loc2_ in o2591)
         {
            _loc2_.send(_loc3_);
         }
         return _loc3_;
      }
   }
}
