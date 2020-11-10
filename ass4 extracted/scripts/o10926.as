package
{
   public class o10926 extends o3052
   {
       
      
      private var o17690:o16123;
      
      public function o10926(param1:String, param2:o2693)
      {
         o17690 = new o16123(0);
         super();
         super.init(param1,param2);
         o17690.value = param2.o3554(param1 + "bonusPhysicalResistance");
      }
      
      public function get o18940() : int
      {
         return o17690.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         var _loc2_:int = 1;
         var _loc3_:* = param1.o16390[_loc2_] + o18940;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o11882(param1:o17517) : void
      {
         var _loc2_:int = 1;
         var _loc3_:* = param1.o16390[_loc2_] - o18940;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_PHYSICAL_RESISTANCE]",o18940);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 13;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o18940;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o18940;
      }
   }
}
