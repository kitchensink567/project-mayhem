package
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   
   public class o15723 extends EventDispatcher
   {
      
      public static const o12331:String = "contractFinished";
      
      public static const o7104:String = "contractReady";
      
      public static const o16902:String = "contractTick";
       
      
      public var o18339:int;
      
      public var o15231:o1982;
      
      public var o12387:int;
      
      public var o14678:int;
      
      public var o5897:o5072;
      
      private var o16388:Timer;
      
      public var o9614:Number;
      
      public var o13779:Boolean = false;
      
      public var o12579:Number;
      
      private var o5836:Boolean = false;
      
      public function o15723()
      {
         super();
      }
      
      public function o15946() : Number
      {
         return o5897.start.time - o12579;
      }
      
      public function start(param1:Number) : void
      {
         o12579 = param1;
         o13779 = false;
         o9614 = o5897.end.time - param1;
         if(o9614 < 0)
         {
            throw new Error("Invalid contract");
         }
         if(o9614 == 0)
         {
            o9614 = 1;
         }
         o16388 = new Timer(1000);
         o16388.addEventListener("timer",o1467,false,0,true);
         o16388.start();
         o1467(null);
      }
      
      public function o1467(param1:Event) : void
      {
         if(o5836)
         {
            o13640();
            return;
         }
         if(param1 != null)
         {
            o12579 = o12579 + 1000;
         }
         if(o5897.start.time >= o12579)
         {
            o13779 = false;
            o9614 = o9614 - 1000;
            this.dispatchEvent(new Event(o16902));
            return;
         }
         if(param1 != null && o13779 == false)
         {
            this.dispatchEvent(new Event(o7104));
         }
         o13779 = true;
         if(o9614 >= 0)
         {
            if(param1 != null)
            {
               o9614 = o9614 - 1000;
            }
            if(o9614 < 0)
            {
               this.o16388.stop();
               this.o13779 = false;
               this.dispatchEvent(new Event(o12331));
            }
         }
         this.dispatchEvent(new Event(o16902));
      }
      
      public function o13640() : void
      {
         if(o16388 != null)
         {
            o16388.removeEventListener("timer",o1467);
         }
         o16388 = null;
         o5836 = true;
      }
   }
}
