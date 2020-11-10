package
{
   public class o859
   {
       
      
      public function o859()
      {
         super();
      }
      
      public static function o621(param1:String, param2:String, param3:Boolean) : Boolean
      {
         if(param3)
         {
            return param1 == param2;
         }
         return param1.toUpperCase() == param2.toUpperCase();
      }
      
      public static function o6919(param1:String) : String
      {
         return o859.o10497(o859.o1179(param1));
      }
      
      public static function o10497(param1:String) : String
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = param1.length;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(param1.charCodeAt(_loc2_) > 32)
            {
               return param1.substring(_loc2_);
            }
            _loc2_++;
         }
         return "";
      }
      
      public static function o1179(param1:String) : String
      {
         var _loc2_:* = NaN;
         var _loc3_:Number = param1.length;
         _loc2_ = _loc3_;
         while(_loc2_ > 0)
         {
            if(param1.charCodeAt(_loc2_ - 1) > 32)
            {
               return param1.substring(0,_loc2_);
            }
            _loc2_--;
         }
         return "";
      }
      
      public static function o10500(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(0,param2.length);
      }
      
      public static function o16792(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return o859.replace(param1,param2,"");
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function o3265(param1:String) : Boolean
      {
         return param1 != null && param1.length > 0;
      }
   }
}
