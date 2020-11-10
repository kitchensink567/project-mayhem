package
{
   public class o8091 extends o3052
   {
       
      
      private var o20835:o16123;
      
      public function o8091(param1:String, param2:o2693)
      {
         o20835 = new o16123(0);
         super();
         super.init(param1,param2);
         o20835.value = param2.o3554(param1 + "bonusToxicResistance");
      }
      
      public function get o14375() : int
      {
         return o20835.value;
      }
      
      override public function o11739(param1:o17517) : void
      {
         var _loc2_:int = 4;
         var _loc3_:* = param1.o16390[_loc2_] + o14375;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o11882(param1:o17517) : void
      {
         var _loc2_:int = 4;
         var _loc3_:* = param1.o16390[_loc2_] - o14375;
         param1.o16390[_loc2_] = _loc3_;
      }
      
      override public function o3309(param1:String) : String
      {
         return o679(param1,"[BONUS_TOXIC_RESISTANCE]",o14375);
      }
      
      override protected function o9727(param1:int) : Boolean
      {
         return param1 == 15;
      }
      
      override protected function o17667(param1:Number) : Number
      {
         return o14375;
      }
      
      override protected function o15058(param1:Number) : Number
      {
         return o14375;
      }
   }
}
