package
{
   public class o18316 extends o16541
   {
       
      
      public function o18316(param1:o3047, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:Boolean = false, param9:Number = 1.0, param10:int = 0, param11:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override protected function o7506() : void
      {
         o8515();
         o16831.splice(0,1);
         o7038 = o6242 + (o6242 / o11432 - o6242) * (o17884 / o12898);
         o17884 = o17884 + o7038;
         if(o16831.length == 0)
         {
            o19115();
         }
         else
         {
            o1051.o9310(this,o7038,o7506);
         }
      }
   }
}
