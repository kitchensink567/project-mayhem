package
{
   public class o5625
   {
       
      
      public var o7219:String;
      
      private var o13018:o16123;
      
      private var o1563:o16123;
      
      private var o12580:o16123;
      
      public function o5625(param1:String, param2:int, param3:int, param4:int)
      {
         o13018 = new o16123(0);
         o1563 = new o16123(2);
         o12580 = new o16123(-1);
         super();
         this.o7219 = param1;
         this.o13018.value = param2;
         this.o1563.value = param3;
         this.o12580.value = param4;
      }
      
      public function get o10808() : int
      {
         return o13018.value;
      }
      
      public function get o5921() : int
      {
         return o1563.value;
      }
      
      public function get o17401() : int
      {
         return o12580.value;
      }
      
      public function o6203() : int
      {
         var _loc1_:o14200 = o4519.o8116.profileData;
         if(o5921 == 3)
         {
            return _loc1_.o5292.o7392() * o10808;
         }
         return 0;
      }
      
      public function o8553() : void
      {
         var _loc2_:int = 0;
         var _loc1_:o14200 = o4519.o8116.profileData;
         if(o5921 == 3)
         {
            _loc1_.o7923.o20170 = _loc1_.o7923.o20170 + o6203();
            _loc1_.saveData();
         }
         else if(o5921 == 2)
         {
            _loc1_.o7923.o3525.o780(o17401,o10808);
            _loc1_.saveData();
         }
         else if(o5921 == 1)
         {
            _loc1_.o202.o11362();
            _loc2_ = 0;
            while(_loc2_ < o10808)
            {
               _loc1_.o202.o11612(o4189.o4718(o17401));
               _loc2_++;
            }
            _loc1_.o202.o19266(_loc1_.o7923);
            _loc1_.saveData();
         }
         else
         {
            throw new Error("Unknown reward type");
         }
      }
   }
}
