package
{
   public class o14506 extends o16124
   {
       
      
      public var o11333 = null;
      
      public function o14506()
      {
         super();
      }
      
      override public function set data(param1:*) : void
      {
         if(o11021())
         {
            return;
         }
         o3610 = param1;
         if(o5950 != null)
         {
            var _loc4_:int = 0;
            var _loc3_:* = o5950;
            for each(var _loc2_ in o5950)
            {
               if(o11333 == null)
               {
                  _loc2_(data);
               }
               else
               {
                  _loc2_(data,o11333);
               }
            }
            o5950 = null;
         }
      }
      
      override public function defer(param1:Function) : void
      {
         if(o11021())
         {
            if(o11333 == null)
            {
               param1(data);
            }
            else
            {
               param1(data,o11333);
            }
            param1 = null;
         }
         else
         {
            if(o5950 == null)
            {
               o5950 = Mem.create(this,Vector.<Function>) as Vector.<Function>;
            }
            o5950.push(param1);
         }
      }
   }
}
