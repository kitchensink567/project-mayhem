package
{
   public class o9612
   {
       
      
      private var o17170:o16123;
      
      public var name:String;
      
      public var o7962:String;
      
      public var o3700:int;
      
      public function o9612()
      {
         o17170 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function set id(param1:int) : void
      {
         o17170.value = param1;
      }
      
      public function init(param1:int, param2:String, param3:String, param4:int) : o9612
      {
         this.o17170.value = param1;
         this.name = param2 == null?"NOT SET":param2;
         this.o7962 = param3 == null?"NOT SET":param3;
         this.o3700 = param4;
         return this;
      }
   }
}
