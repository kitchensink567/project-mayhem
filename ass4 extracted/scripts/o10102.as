package
{
   public class o10102
   {
       
      
      public var id:int;
      
      public var name:String;
      
      public var o12893:int;
      
      public var o18734:int;
      
      public var o3306:int;
      
      public var inventory:int;
      
      public function o10102(param1:int, param2:String)
      {
         super();
         this.id = param1;
         this.name = param2;
         o12893 = 0;
         o18734 = 0;
         o3306 = 0;
         inventory = 0;
      }
      
      public function o14264(param1:Boolean) : Object
      {
         var _loc2_:Object = {};
         _loc2_[1] = id;
         _loc2_[135] = o12893;
         _loc2_[136] = o18734;
         if(param1)
         {
            _loc2_[137] = o3306;
         }
         _loc2_[138] = inventory;
         return _loc2_;
      }
   }
}
