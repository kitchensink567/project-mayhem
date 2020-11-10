package
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.utils.getTimer;
   
   public class o4400 extends o8023
   {
      
      private static var o1015:int = 0;
      
      private static var o17494:int = 30;
      
      private static var o19306:int = 0;
      
      private static var o5698:Vector.<o4400> = Mem.create(o4400,Vector.<o4400>);
      
      private static var o6486:int = 0;
       
      
      public var delay:int = 0;
      
      public var o13666:int = 0;
      
      public var o11796:int = 0;
      
      private var o15608:int = 0;
      
      public var o8308:int = 0;
      
      public var running:Boolean = false;
      
      public var o4891:Boolean = false;
      
      public var o14830:Boolean = true;
      
      public var trigger:Function = null;
      
      public var o14994:Function = null;
      
      private var o10952:Boolean = false;
      
      public function o4400()
      {
         super();
      }
      
      public static function initialise(param1:Stage) : void
      {
         param1.addEventListener("enterFrame",o12114);
      }
      
      private static function o12114(param1:Event) : void
      {
         o1015 = Number(o1015) + 1;
         if(o1015 >= o17494)
         {
            o19306 = Number(o19306) + 1;
            o1015 = 0;
         }
         var _loc3_:Vector.<o4400> = o5698.concat();
         var _loc5_:int = 0;
         var _loc4_:* = _loc3_;
         for each(var _loc2_ in _loc3_)
         {
            _loc2_.o7664();
         }
      }
      
      private static function o17380(param1:o4400) : void
      {
         var _loc2_:int = o5698.indexOf(param1);
         if(_loc2_ == -1)
         {
            o6486 = Number(o6486) + 1;
            o5698.push(param1);
         }
      }
      
      private static function o20749(param1:o4400) : void
      {
         var _loc2_:int = o5698.indexOf(param1);
         if(_loc2_ != -1)
         {
            o6486 = Number(o6486) - 1;
            o5698.splice(_loc2_,1);
         }
      }
      
      public function get current() : int
      {
         if(!o10952 && running)
         {
            o7664();
         }
         return o15608;
      }
      
      public function set current(param1:int) : void
      {
         o15608 = param1;
      }
      
      public function getTimer() : int
      {
         if(!o4891)
         {
            return (o19306 * o17494 + o1015) * (1 / o17494) * 1000;
         }
         return getTimer();
      }
      
      public function initialise(param1:int, param2:int = 0, param3:Boolean = false, param4:Boolean = true) : void
      {
         this.delay = param1;
         this.o13666 = param2;
         this.o4891 = param3;
         this.o14830 = param4;
      }
      
      public function start() : void
      {
         o11796 = getTimer();
         running = true;
         o17380(this);
      }
      
      public function o12392() : void
      {
         o11796 = getTimer();
         running = true;
         o17380(this);
      }
      
      public function stop() : void
      {
         running = false;
         o20749(this);
      }
      
      public function reset() : void
      {
         o8308 = 0;
         current = 0;
      }
      
      public function o7664() : void
      {
         o10952 = true;
         var _loc1_:int = getTimer();
         var _loc2_:int = _loc1_ - o11796;
         current = current + _loc2_;
         while(current >= delay)
         {
            if(trigger != null)
            {
               trigger();
            }
            if(o13666 > 0)
            {
               o8308 = Number(o8308) + 1;
               if(o8308 >= o13666)
               {
                  if(o14994 != null)
                  {
                     o14994();
                  }
                  o20749(this);
               }
            }
            current = current - delay;
            if(delay <= 0)
            {
               return;
            }
         }
         o11796 = _loc1_;
         o10952 = false;
      }
      
      public function get o10675() : Number
      {
         return delay - current;
      }
   }
}
