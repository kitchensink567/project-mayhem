package
{
   public class o16124
   {
       
      
      protected var o3610 = null;
      
      protected var o5950:Vector.<Function> = null;
      
      private var o18627:Boolean = false;
      
      public function o16124()
      {
         super();
      }
      
      private function o13687() : void
      {
      }
      
      public function set data(param1:*) : void
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
               _loc2_(data);
            }
            o5950 = null;
         }
      }
      
      public function o19115() : void
      {
         o5950 = null;
         o3610 = null;
      }
      
      public function get data() : *
      {
         return o3610;
      }
      
      public function o11021() : Boolean
      {
         if(o3610 == null)
         {
            return false;
         }
         return true;
      }
      
      public function defer(param1:Function) : void
      {
         if(o11021())
         {
            param1(data);
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
