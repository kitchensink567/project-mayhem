package
{
   import flash.utils.Dictionary;
   
   public class o7716
   {
       
      
      public var o9174:Vector.<int>;
      
      private var o18871:Dictionary;
      
      public function o7716()
      {
         o18871 = new Dictionary();
         super();
         o9174 = new Vector.<int>();
      }
      
      public function o18002(param1:String, param2:String, param3:String, param4:String, param5:String) : void
      {
         var _loc6_:o19720 = new o19720(o12696.o5840(param1),param2,param3,param4,param5);
         o18871[_loc6_.o16173] = _loc6_;
      }
      
      public function o10588(param1:int) : o19720
      {
         return o18871[param1];
      }
      
      public function o1769(param1:int) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = o9174;
         for each(var _loc2_ in o9174)
         {
            if(_loc2_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o11545(param1:int) : o19720
      {
         var _loc2_:o19720 = o18871[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         return new o19720(0,"","","#FFFFFF","");
      }
   }
}
