package
{
   import flash.utils.Dictionary;
   
   public class o11282
   {
      
      public static const error:int = 0;
      
      public static const o9498:int = 1;
      
      public static const o7537:int = 2;
      
      public static const o20798:int = 3;
      
      public static const o19261:int = 4;
      
      public static const o15766:int = 5;
      
      public static const o10847:int = 6;
      
      public static const o18750:int = 7;
      
      public static const o10755:int = 8;
      
      public static const o19601:int = 9;
      
      public static const o16816:int = 10;
      
      public static const o18490:int = 11;
      
      public static const o6089:int = 12;
      
      public static const o18294:int = 13;
      
      public static const kongregate:int = 14;
      
      private static var o9721:Dictionary = null;
       
      
      public function o11282()
      {
         super();
      }
      
      private static function o8087() : Dictionary
      {
         if(o9721 == null)
         {
            o9721 = new Dictionary();
            o9721["White Tigers"] = 1;
            o9721["Thunderbolts"] = 2;
            o9721["The Watchers"] = 3;
            o9721["Shining Blade"] = 4;
            o9721["Scorpions"] = 5;
            o9721["Red Storm"] = 6;
            o9721["Night Jackals"] = 7;
            o9721["Iron Phoenix"] = 8;
            o9721["Falcons"] = 9;
            o9721["Dark Matter"] = 10;
            o9721["XIII"] = 11;
            o9721["Blue Wolves"] = 12;
            o9721["Black Cobras"] = 13;
            o9721["Kong"] = 14;
         }
         return o9721;
      }
      
      public static function o19049(param1:String) : int
      {
         var _loc2_:Dictionary = o8087();
         if(_loc2_[param1] == null)
         {
            return 0;
         }
         return _loc2_[param1];
      }
      
      public static function o5217(param1:int) : String
      {
         var _loc3_:Dictionary = o8087();
         var _loc5_:int = 0;
         var _loc4_:* = _loc3_;
         for(var _loc2_ in _loc3_)
         {
            if(_loc3_[_loc2_] == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
