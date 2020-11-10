package
{
   public class o15520
   {
       
      
      public var id:int;
      
      public var version:int;
      
      public var o963:int;
      
      public var o3156:int;
      
      public var o14451:int;
      
      public function o15520()
      {
         super();
      }
      
      public function o7658(param1:int, param2:int, param3:int) : void
      {
         if(param1 > o963)
         {
            this.o963 = param1;
            this.o3156 = param2;
            this.o14451 = param3;
         }
         else if(param1 == o963)
         {
            if(param3 > o14451)
            {
               this.o3156 = param2;
               this.o14451 = param3;
            }
         }
      }
      
      public function o15382(param1:o1253) : void
      {
         this.id = param1.o15372;
         this.version = param1.o10239.o18072;
         this.o963 = param1.grade;
         this.o3156 = param1.o5520;
         this.o14451 = param1.o4680;
      }
      
      public function o17060(param1:Object) : void
      {
         id = param1[98];
         version = param1[6];
         o963 = param1[2];
         o3156 = param1[101];
         o14451 = param1[181];
      }
      
      public function o13379() : Object
      {
         var _loc1_:Object = {};
         _loc1_[98] = id;
         _loc1_[6] = version;
         _loc1_[2] = o963;
         _loc1_[101] = o3156;
         _loc1_[181] = o14451;
         return _loc1_;
      }
   }
}
