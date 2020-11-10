package
{
   public class o16864
   {
       
      
      private var o1234:o7118 = null;
      
      private var o20828:o11951 = null;
      
      public function o16864(param1:o7118, param2:o11951)
      {
         super();
         this.o1234 = param1;
         this.o20828 = param2;
      }
      
      public function o6798(param1:String) : o7331
      {
         var _loc2_:o6510 = Mem.create(this,o6510) as o6510;
         _loc2_.o2380(o20828);
         _loc2_.initialise(param1,o1234);
         return _loc2_;
      }
   }
}
