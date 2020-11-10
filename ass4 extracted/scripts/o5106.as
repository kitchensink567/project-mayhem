package
{
   public class o5106
   {
       
      
      private var o16762:o16123;
      
      private var o14157:o10411;
      
      private var o11286:o10411;
      
      private var o16629:o15787;
      
      public function o5106()
      {
         o16762 = new o16123(0);
         o14157 = new o10411(false);
         o11286 = new o10411(false);
         o16629 = new o15787(0);
         super();
      }
      
      public function get o9899() : int
      {
         return o16762.value;
      }
      
      public function get o4084() : Boolean
      {
         return o14157.value;
      }
      
      public function get o16277() : Boolean
      {
         return o11286.value;
      }
      
      public function get o4207() : Number
      {
         return o16629.value;
      }
      
      public function o2863(param1:o2693, param2:String) : void
      {
         o16762.value = param1.o3554(param2 + ".enemyType");
         o14157.value = param1.o18357(param2 + ".isElite");
         o11286.value = param1.o18357(param2 + ".isSavage");
         o16629.value = param1.o17521(param2 + ".boxQualityRollBonus") / 100;
      }
   }
}
