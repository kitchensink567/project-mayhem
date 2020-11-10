package
{
   public class o18688
   {
       
      
      private var o8700:Vector.<Function> = null;
      
      private var o17666 = null;
      
      public var o183 = null;
      
      private var running:Boolean = false;
      
      public function o18688()
      {
         super();
         o8700 = Mem.create(this,Vector.<Function>) as Vector.<Function>;
      }
      
      public function o12369(param1:Function) : o18688
      {
         o8700.push(param1);
         if(!running)
         {
            o6714();
         }
         return this;
      }
      
      private function o6714() : void
      {
         running = true;
         var o9412:Function = o8700.shift();
         var promise:o16124 = null;
         if(o183 == null)
         {
            promise = o9412(o17666);
         }
         else
         {
            promise = o9412(o17666,o183);
         }
         if(promise == null)
         {
            return;
         }
         promise.defer(function():void
         {
            o17666 = promise.data;
            o183 = null;
            var _loc1_:o14506 = promise as o14506;
            if(_loc1_ != null)
            {
               o183 = _loc1_.o11333;
            }
            if(o8700.length > 0)
            {
               o6714();
            }
            else
            {
               running = false;
            }
         });
      }
   }
}
