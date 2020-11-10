package
{
   public class o8734 extends o16541
   {
       
      
      public function o8734(param1:o3047, param2:int, param3:Vector.<o20743>, param4:int = 0)
      {
         o16831 = param3;
         super(param1,param2,0,0,0,0,0,false,1,0,param4);
      }
      
      override protected function o15661() : void
      {
         o6242 = o12898 / (o16831.length / ((o11432 + 1) / 2));
         o7038 = o6242;
         o17884 = o7038;
         o1051.o9310(this,o7038,o7506);
      }
      
      override protected function o8515() : void
      {
         var _loc1_:o18442 = o20160.o3370(o16831[0].o18948,o16831[0].grade,null,o16831[0].o2840,o12555,true,o16831[0].o1673,o16831[0].o17014,o16831[0].o5751,o9941);
         o9941 = o9941 + o3047.o15922(o16831[0].o18948);
      }
   }
}
