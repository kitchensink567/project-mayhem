package
{
   public class o18572 extends o3052
   {
       
      
      private var o17239:o16123;
      
      private var o9352:o16123;
      
      private var o1825:o16123;
      
      private var o19479:o16123;
      
      private var o19550:o16123;
      
      public function o18572(param1:String, param2:o2693)
      {
         o17239 = new o16123(0);
         o9352 = new o16123(0);
         o1825 = new o16123(0);
         o19479 = new o16123(0);
         o19550 = new o16123(0);
         super();
         super.init(param1,param2);
         o17239.value = param2.o3554(param1 + "nantonium");
         o9352.value = param2.o3554(param1 + "promethium");
         o1825.value = param2.o3554(param1 + "molybdenum");
         o19479.value = param2.o3554(param1 + "thulium");
         o19550.value = param2.o3554(param1 + "blackStrongbox");
      }
      
      override public function get o2723() : Boolean
      {
         return false;
      }
      
      public function get o1897() : int
      {
         return o17239.value;
      }
      
      public function get o11328() : int
      {
         return o9352.value;
      }
      
      public function get o20918() : int
      {
         return o1825.value;
      }
      
      public function get o15243() : int
      {
         return o19479.value;
      }
      
      public function get o12328() : int
      {
         return o19550.value;
      }
      
      private function o4174(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         if(param2 <= 0)
         {
            return;
         }
         var _loc3_:o14200 = o14200.o19505;
         _loc4_ = 0;
         while(_loc4_ < param2)
         {
            _loc3_.o202.o11612(o4189.o4718(param1));
            _loc4_++;
         }
         _loc3_.o202.o19266(_loc3_.o7923);
         _loc3_.o202.o11362();
      }
      
      override public function o13260() : void
      {
         o4174(o4189.o1897,o1897);
         o4174(o4189.o11328,o11328);
         o4174(o4189.o20918,o20918);
         o4174(o4189.o15243,o15243);
         o14200.o19505.o7923.o201(o12328);
      }
      
      override public function o3309(param1:String) : String
      {
         var _loc2_:String = o679(param1,"[NANTONIUM]",o1897);
         _loc2_ = o679(_loc2_,"[THULIUM]",o15243);
         _loc2_ = o679(_loc2_,"[PROMETHIUM]",o11328);
         _loc2_ = o679(_loc2_,"[MOLYBDENUM]",o20918);
         _loc2_ = o679(_loc2_,"[BLACK]",o12328);
         return _loc2_;
      }
   }
}
