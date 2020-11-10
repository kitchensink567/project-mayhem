package
{
   public class o5368
   {
       
      
      private var o13156:int = 0;
      
      private var o14170:int = 0;
      
      private var o5950:Vector.<Function> = null;
      
      public function o5368()
      {
         super();
      }
      
      public function initialise(param1:Vector.<o16124>) : void
      {
         o14170 = param1.length;
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc2_.defer(o8412);
         }
      }
      
      private function o8412(param1:* = null) : void
      {
         o13156 = Number(o13156) + 1;
         if(o11021())
         {
            if(o5950 != null)
            {
               var _loc4_:int = 0;
               var _loc3_:* = o5950;
               for each(var _loc2_ in o5950)
               {
                  _loc2_();
               }
               o5950 = null;
            }
         }
      }
      
      public function defer(param1:Function) : void
      {
         if(o11021())
         {
            param1();
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
      
      public function o11021() : Boolean
      {
         if(o13156 != o14170)
         {
            return false;
         }
         return true;
      }
   }
}
