package
{
   public class o18474
   {
       
      
      public var o129:o14018;
      
      private var o17170:o16123;
      
      public var o652:Vector.<o16123> = null;
      
      private var o13452:o16123;
      
      private var o13519:o15787;
      
      public var o1216:String;
      
      private var o3336:o15787;
      
      public var o11697:o2347;
      
      public function o18474()
      {
         o17170 = new o16123(0);
         o13452 = new o16123(0);
         o13519 = new o15787(0);
         o3336 = new o15787(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function get grade() : int
      {
         return o13452.value;
      }
      
      public function get o9421() : Number
      {
         return o13519.value;
      }
      
      public function get o18619() : Number
      {
         return Math.round(o3336.value * 1000) / 1000;
      }
      
      public function set id(param1:int) : void
      {
         o17170.value = param1;
      }
      
      public function set grade(param1:int) : void
      {
         o13452.value = param1;
      }
      
      public function set o9421(param1:Number) : void
      {
         o13519.value = param1;
      }
      
      public function set o18619(param1:Number) : void
      {
         o3336.value = param1;
      }
      
      public function init(param1:o2347, param2:o14018, param3:int, param4:Vector.<o16123>, param5:int, param6:Number, param7:Number, param8:String) : o18474
      {
         this.o11697 = param1;
         this.o129 = param2;
         this.o17170.value = param3;
         this.o652 = param4;
         this.o13452.value = param5;
         this.o13519.value = param6 / 100;
         this.o1216 = param8;
         param7 = Math.round(param7 * 1000) / 1000;
         this.o3336.value = param7;
         return this;
      }
   }
}
