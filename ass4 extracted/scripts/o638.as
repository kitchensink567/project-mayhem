package
{
   import flash.utils.Dictionary;
   
   public class o638
   {
       
      
      public var o5661:int;
      
      public var o3992:Dictionary;
      
      public function o638()
      {
         super();
      }
      
      public function o1500(param1:int) : String
      {
         switch(int(param1))
         {
            case 0:
               return "bounty";
            case 1:
               return "gameMode";
            case 2:
               return "daily";
            case 3:
               return "championship";
            case 4:
               return "dynamicEvent";
            case 5:
               return "globalEvent";
         }
      }
      
      public function o18048(param1:int, param2:Vector.<o11614>, param3:int, param4:Object) : int
      {
         var _loc7_:* = null;
         this.o5661 = param3;
         var _loc8_:String = o1500(param3);
         o3992 = new Dictionary();
         var _loc5_:Object = param4[_loc8_];
         var _loc10_:int = 0;
         var _loc9_:* = _loc5_;
         for(var _loc6_ in _loc5_)
         {
            _loc7_ = new o20399();
            param1 = _loc7_.o18048(_loc6_,param2,param1,_loc5_[_loc6_]);
            o3992[_loc7_.o16108] = _loc7_;
         }
         return param1;
      }
      
      public function o17040(param1:String) : o20399
      {
         return o3992[param1];
      }
   }
}
