package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class o20421 extends o16681
   {
       
      
      protected var o18296:Vector.<o15625>;
      
      protected var o13330:int = -1;
      
      public var o2345:Boolean = true;
      
      public function o20421()
      {
         super();
         o18296 = new Vector.<o15625>();
      }
      
      public function get length() : int
      {
         return o18296.length;
      }
      
      public function o14435(param1:o15625) : void
      {
         o18296.push(param1);
         param1.addEventListener("click",o4063,false,0,true);
      }
      
      public function o4364(param1:int) : o15625
      {
         return o18296[param1];
      }
      
      public function get o19568() : Vector.<o15625>
      {
         return o18296;
      }
      
      public function o8716(param1:o15625) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o18296;
         for each(var _loc3_ in o18296)
         {
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function o1876(param1:MovieClip) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o18296;
         for each(var _loc3_ in o18296)
         {
            if(_loc3_.asset == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function o11907(param1:o15625) : void
      {
         var _loc2_:int = o8716(param1);
         o18296[_loc2_].removeEventListener("click",o4063);
         o18296.splice(_loc2_,1);
      }
      
      protected function o4063(param1:MouseEvent) : void
      {
         this.o2120 = o8716(param1.target as o15625);
      }
      
      public function get o2120() : int
      {
         return o13330;
      }
      
      public function o2434(param1:int) : void
      {
         if(o13330 >= 0 && o13330 < o18296.length)
         {
            o18296[o13330].o3993 = false;
         }
         o13330 = param1;
         if(o13330 >= 0 && o13330 < o18296.length)
         {
            o18296[o13330].o3993 = true;
         }
      }
      
      public function set o2120(param1:int) : void
      {
         if(o2345)
         {
            if(o13330 >= 0 && o13330 < o18296.length)
            {
               o18296[o13330].o3993 = false;
            }
            o13330 = param1;
            if(o13330 >= 0 && o13330 < o18296.length)
            {
               o18296[o13330].o3993 = true;
            }
         }
         else
         {
            o13330 = param1;
         }
         dispatchEvent(new o11507(o5595.o16737,o13330));
      }
      
      override public function o13640() : void
      {
         while(o18296.length > 0)
         {
            o11907(o18296[0]);
         }
         o18296 = null;
         o13330 = 0;
         o2345 = false;
         super.o13640();
      }
   }
}
