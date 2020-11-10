package
{
   public class o16038
   {
      
      private static var o10478:Vector.<int> = new Vector.<int>();
      
      private static var o5687:int = 0;
      
      private static var o10773:Boolean = false;
      
      public static var o10949:Function = null;
      
      {
         init();
      }
      
      public function o16038()
      {
         super();
      }
      
      public static function o8040() : int
      {
         if(o10478.length == 0)
         {
            o8337(o10509.o13047,"0");
            return 1257434;
         }
         o5687 = Number(o5687) + 1;
         if(o5687 >= o10478.length)
         {
            o5687 = 0;
         }
         return o10478[o5687];
      }
      
      private static function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(o10478.length > 0)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < 30)
         {
            _loc2_ = Math.random() * 10000 - 5000;
            while(_loc2_ == 0)
            {
               _loc2_ = Math.random() * 10000;
            }
            o10478.push(_loc2_);
            _loc1_++;
         }
      }
      
      public static function o8337(param1:int, param2:String) : void
      {
         if(o10773 || param1 == o10509.o6300 || param1 == o10509.o18256)
         {
            return;
         }
         o10773 = true;
         o4519.o8116.profileData.o20616 = true;
         if(o10949 != null)
         {
            o10949(param1,param2);
         }
      }
      
      public function o18630() : Boolean
      {
         return o10773;
      }
   }
}
