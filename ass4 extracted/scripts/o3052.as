package
{
   public class o3052
   {
       
      
      protected var o17170:o16123;
      
      public function o3052()
      {
         o17170 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function get o2723() : Boolean
      {
         return true;
      }
      
      protected function o12267(param1:String, param2:String, param3:Number) : String
      {
         var _loc4_:int = Math.round(param3 * 100);
         return param1.replace(param2,_loc4_.toString());
      }
      
      protected function o679(param1:String, param2:String, param3:int) : String
      {
         return param1.replace(param2,param3.toString());
      }
      
      protected function o16512(param1:String, param2:String, param3:int) : String
      {
         return param1.replace(param2,o16724.o10417(param3));
      }
      
      protected function o12560(param1:String, param2:String, param3:Number) : String
      {
         return param1.replace(param2,o16724.o20031(param3));
      }
      
      protected function o3014(param1:String, param2:String, param3:Number) : String
      {
         return param1.replace(param2,o16724.o20301(param3));
      }
      
      protected function o16710(param1:Number) : void
      {
         if(isNaN(param1) || Math.abs(param1) < 0.001)
         {
            throw new Error("assertNonZeroNumber");
         }
      }
      
      public function init(param1:String, param2:o2693) : void
      {
         o17170.value = param2.o17521(param1 + "id");
      }
      
      public function o11739(param1:o17517) : void
      {
      }
      
      public function o11882(param1:o17517) : void
      {
      }
      
      public function o13260() : void
      {
      }
      
      public function o3309(param1:String) : String
      {
         return "ERROR";
      }
      
      protected function o9727(param1:int) : Boolean
      {
         return false;
      }
      
      public function o14880(param1:int, param2:o14096, param3:Number) : Number
      {
         if(o9727(param1) == false)
         {
            return 0;
         }
         var _loc4_:* = 0;
         if(this.o9727(7))
         {
            _loc4_ = Number(_loc4_ + o15058(param2.o2752.o10273));
         }
         else
         {
            _loc4_ = Number(_loc4_ + o15058(param3));
         }
         return _loc4_;
      }
      
      public function o10468(param1:int, param2:o1253, param3:Number) : Number
      {
         if(o9727(param1) == false)
         {
            return 0;
         }
         var _loc4_:* = 0;
         _loc4_ = Number(_loc4_ + o17667(param3));
         return _loc4_;
      }
      
      protected function o15058(param1:Number) : Number
      {
         return 0;
      }
      
      protected function o17667(param1:Number) : Number
      {
         return 0;
      }
   }
}
