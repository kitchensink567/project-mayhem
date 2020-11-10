package
{
   import flash.events.MouseEvent;
   
   public class o5414 extends o20421
   {
       
      
      private var o14313:o15625;
      
      private var o8650:o15625;
      
      private var o5545:int;
      
      private var o8448:Function = null;
      
      private var o19981:Function = null;
      
      public function o5414(param1:o15625, param2:o15625)
      {
         super();
         o14313 = param1;
         o8650 = param2;
         if(o14313 != null)
         {
            o14313.addEventListener("click",o20561,false,0,true);
         }
         if(o8650 != null)
         {
            o8650.addEventListener("click",o5552,false,0,true);
         }
      }
      
      public function get o5809() : Function
      {
         return o8448;
      }
      
      public function set o5809(param1:Function) : void
      {
         o8448 = param1;
         this.o1258();
      }
      
      public function get o6784() : Function
      {
         return o19981;
      }
      
      public function set o6784(param1:Function) : void
      {
         o19981 = param1;
         this.o1258();
      }
      
      override public function set o2120(param1:int) : void
      {
         .super.o2120 = param1;
         o1258();
      }
      
      public function o20561(param1:MouseEvent) : void
      {
         if(o6784 != null)
         {
            o6784();
            return;
         }
         if(o2120 > 0)
         {
            this.o2120--;
         }
         o1258();
      }
      
      private function o5552(param1:MouseEvent) : void
      {
         if(o5809 != null)
         {
            o5809();
            return;
         }
         if(o2120 < length - 1)
         {
            this.o2120++;
         }
         o1258();
      }
      
      public function get o9507() : int
      {
         return o5545;
      }
      
      public function set o9507(param1:int) : void
      {
         o5545 = param1;
         o1258();
      }
      
      override public function o13640() : void
      {
         if(o14313 != null)
         {
            o14313.removeEventListener("click",o20561);
         }
         if(o8650 != null)
         {
            o8650.removeEventListener("click",o5552);
         }
         o14313 = null;
         o8650 = null;
         o5545 = 0;
         super.o13640();
      }
      
      public function o11751() : void
      {
         o5545 = length;
      }
      
      override protected function draw() : void
      {
         super.draw();
         if(o8650 != null)
         {
            o8650.enabled = o5809 != null || o2120 < length - 1 && o2120 < o5545 - 1;
         }
         if(o14313 != null)
         {
            o14313.enabled = o2120 > 0 && o5545 > 0;
         }
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o18296;
         for each(var _loc1_ in o18296)
         {
            _loc1_.enabled = _loc2_ < o5545;
            _loc2_++;
         }
      }
   }
}
