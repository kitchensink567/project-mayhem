package
{
   public class o793 extends o3052
   {
       
      
      private var o15262:o16123;
      
      public function o793(param1:String, param2:o2693)
      {
         o15262 = new o16123(0);
         super();
         super.init(param1,param2);
         o15262.value = param2.o3554(param1 + "bonusHeatResistance");
      }
      
      public function get o20730() : int
      {
         return o15262.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         var _loc2_:int = 2;
         var _loc3_:* = param1.o16390[_loc2_] + o20730;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o11882(param1:o17517) : void
      {
         var _loc2_:int = 2;
         var _loc3_:* = param1.o16390[_loc2_] - o20730;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_HEAT_RESISTANCE]",o20730);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 14;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o20730;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o20730;
      }
   }
}
