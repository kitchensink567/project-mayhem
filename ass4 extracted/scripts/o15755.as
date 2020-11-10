package
{
   import flash.events.Event;
   import flash.utils.ByteArray;
   
   public class o15755 extends o8023 implements o6212
   {
       
      
      public var position:o18509;
      
      protected var o20712:int = 0;
      
      private var o16524:int = 0;
      
      private var o20251:int = 0;
      
      public var o5019:String = null;
      
      public function o15755()
      {
         position = new o18509();
         super();
         if(o4519.o13206 == null || o4519.o13206.o2685 == null)
         {
            return;
         }
         o16524 = o4519.o13206.o2685.o750;
      }
      
      public function o16955(param1:int, param2:ByteArray = null) : void
      {
         o5973 = param1;
         param1++;
         o20712 = param1;
         o4519.o13206.o19926(this,o14571.o19115,o15413);
      }
      
      public function getCacheAssets() : Vector.<String>
      {
         return null;
      }
      
      private function o15413(param1:Event) : void
      {
         o19115();
      }
      
      public function get o12086() : Boolean
      {
         return true;
      }
      
      public function set o12086(param1:Boolean) : void
      {
      }
      
      public function get o9153() : Boolean
      {
         return false;
      }
      
      public function set o9153(param1:Boolean) : void
      {
      }
      
      public function get o5973() : int
      {
         return o20251;
      }
      
      public function set o5973(param1:int) : void
      {
         o20251 = param1;
      }
      
      public function get o10887() : int
      {
         return o16524;
      }
      
      public function set o10887(param1:int) : void
      {
         o16524 = param1;
      }
      
      public function get name() : String
      {
         return o5019;
      }
      
      public function set name(param1:String) : void
      {
         o5019 = param1;
      }
      
      public function o20630(param1:int, param2:ByteArray) : void
      {
      }
      
      public function o18192(param1:ByteArray) : void
      {
      }
      
      public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
