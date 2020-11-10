package
{
   public class o6163
   {
      
      private static var o16729:Array = [0,0.01,0.02,0.04,0.05,0.06,0.07,0.08,0.1,0.11,0.12,0.14,0.15,0.16,0.17,0.18,0.2,0.21,0.22,0.24,0.25,0.27,0.28,0.3,0.32,0.34,0.36,0.38,0.4,0.42,0.44,0.46,0.48,0.5,0.53,0.56,0.59,0.62,0.65,0.68,0.71,0.74,0.77,0.8,0.83,0.86,0.89,0.92,0.95,0.98,1,1.06,1.12,1.18,1.24,1.3,1.36,1.42,1.48,1.54,1.6,1.66,1.72,1.78,1.84,1.9,1.96,2,2.12,2.25,2.37,2.5,2.62,2.75,2.87,3,3.2,3.4,3.6,3.8,4,4.3,4.7,4.9,5,5.5,6,6.5,6.8,7,7.3,7.5,7.8,8,8.4,8.7,9,9.4,9.6,9.8,10];
       
      
      private var o19942:o68;
      
      private var o18038:o68;
      
      private var o4689:o68;
      
      private var o8968:o68;
      
      private var o643:o68;
      
      public function o6163()
      {
         super();
      }
      
      public function set o7003(param1:Number) : void
      {
         if(o19942 == null)
         {
            o19942 = new o68();
         }
         if(param1 != 0)
         {
            o19942.o6272(param1);
         }
      }
      
      public function set o1562(param1:Number) : void
      {
         var _loc2_:* = param1;
         if(param1 == 0)
         {
            _loc2_ = 127;
         }
         else if(param1 > 0)
         {
            _loc2_ = Number(o16729[int(param1)] * 127 + 127);
         }
         else
         {
            _loc2_ = Number(param1 / 100 * 127 + 127);
         }
         if(o18038 == null)
         {
            o18038 = new o68();
         }
         o18038.o13126(_loc2_);
      }
      
      public function set o20642(param1:Number) : void
      {
         var _loc2_:* = param1;
         if(param1 == 0)
         {
            _loc2_ = 1;
         }
         else if(param1 > 0)
         {
            _loc2_ = Number(1 + 3 * param1 / 100);
         }
         else
         {
            _loc2_ = Number(param1 / 100 + 1);
         }
         if(o4689 == null)
         {
            o4689 = new o68();
         }
         o4689.o6869(_loc2_);
      }
      
      public function set o20621(param1:Number) : void
      {
         if(o8968 == null)
         {
            o8968 = new o68();
         }
         if(param1 != 0)
         {
            o8968.o10456(param1 * 3.14159265358979 / 180);
         }
      }
      
      public function o256() : Boolean
      {
         return o19942 && o18038 && o4689 && o8968;
      }
      
      public function o17114() : Array
      {
         if(o12383())
         {
            return o643.o16944();
         }
         return null;
      }
      
      private function o12383() : Boolean
      {
         if(!o256())
         {
            return false;
         }
         o643 = new o68();
         o643.o5041(o19942);
         o643.o5041(o18038);
         o643.o5041(o4689);
         o643.o5041(o8968);
         return true;
      }
   }
}
