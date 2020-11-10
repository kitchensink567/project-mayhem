package
{
   public class o19648 extends o1492
   {
       
      
      private var o5938:o15787;
      
      private var o18242:o15787;
      
      public function o19648()
      {
         o5938 = new o15787(0);
         o18242 = new o15787(0);
         super();
      }
      
      public function get o11243() : Number
      {
         return o5938.value;
      }
      
      public function get o8536() : Number
      {
         return o18242.value;
      }
      
      public function set o11243(param1:Number) : void
      {
         o5938.value = param1;
      }
      
      public function set o8536(param1:Number) : void
      {
         o18242.value = param1;
      }
      
      public function o19186(param1:int) : int
      {
         if(param1 == 0)
         {
            return 0;
         }
         return o5938.value + o18242.value * (param1 - 1);
      }
      
      override public function o1220(param1:int) : String
      {
         var _loc2_:String = super.o1220(param1);
         _loc2_ = _loc2_.replace("[healthTotal]",o19186(param1));
         return _loc2_;
      }
   }
}
