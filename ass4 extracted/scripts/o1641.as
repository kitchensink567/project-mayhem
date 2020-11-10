package
{
   import flash.utils.Dictionary;
   
   public class o1641
   {
       
      
      private var data:Dictionary;
      
      public function o1641()
      {
         data = new Dictionary();
         super();
      }
      
      public function o14049(param1:String, param2:int) : void
      {
         data[param1] = param2;
      }
      
      public function o1622(param1:String, param2:int = 1) : void
      {
         if(data[param1] == null)
         {
            data[param1] = 0;
         }
         var _loc3_:* = param1;
         var _loc4_:* = data[_loc3_] + param2;
         data[_loc3_] = _loc4_;
      }
      
      public function o14264() : Object
      {
         var _loc1_:Object = {};
         var _loc4_:int = 0;
         var _loc3_:* = data;
         for(var _loc2_ in data)
         {
            _loc1_[_loc2_] = data[_loc2_];
         }
         return _loc1_;
      }
   }
}
