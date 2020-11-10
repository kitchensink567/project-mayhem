package
{
   public class o20743
   {
       
      
      public var o1432:o3047;
      
      public var o18948:Class;
      
      public var grade:int = 0;
      
      public var id:int = 0;
      
      public var o17018:o18509 = null;
      
      public var o2840:int = 0;
      
      public var o12555:int = 0;
      
      public var o1673:Boolean = true;
      
      public var o17014:Boolean = true;
      
      public var o5751:int = 0;
      
      public var o9899:int = 0;
      
      public function o20743(param1:Class, param2:int, param3:o3047 = null, param4:int = 0, param5:o18509 = null, param6:int = 0, param7:int = 0, param8:Boolean = true, param9:Boolean = true, param10:int = 0, param11:int = -1)
      {
         super();
         this.o1432 = param3;
         this.o18948 = param1;
         this.grade = param2;
         this.id = param4;
         if(param5 != null)
         {
            this.o17018 = new o18509(param5.x,param5.y);
         }
         else
         {
            this.o17018 = new o18509(0,0);
         }
         this.o2840 = param6;
         this.o12555 = param7;
         this.o1673 = param8;
         this.o17014 = param9;
         this.o5751 = param10;
         this.o9899 = param11;
      }
   }
}
