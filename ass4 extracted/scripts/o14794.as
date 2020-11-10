package
{
   import flash.utils.Dictionary;
   
   public class o14794
   {
      
      public static var o14510:int = 0;
      
      public static var o6891:int = 1;
      
      public static var o11768:int = 2;
      
      public static var o14949:int = 3;
      
      public static var o6517:int = 4;
      
      public static var o14356:int = 5;
      
      public static var o16843:int = 6;
      
      public static var o5045:int = 7;
      
      public static var o8348:int = 8;
      
      public static var o13015:int = 9;
      
      public static var o15261:int = 10;
      
      public static var o20268:int = 11;
      
      public static var o3505:int = 12;
      
      private static var o16191:int = 0;
      
      private static const o16401:Array = [o6891,o11768,o14949,o6517,o14356,o16843,o5045,o8348,o13015,o15261];
      
      private static const o16650:Array = [o6517,o14356,o16843,o13015];
      
      private static const o484:Array = [o3505,o6891,o11768,o6517,o14356];
      
      private static var o8823:Array = [];
       
      
      public function o14794()
      {
         super();
      }
      
      public static function init() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = 0;
         o16191 = 0;
         o8823[0] = new Dictionary();
         o8823[1] = new Dictionary();
         o8823[2] = new Dictionary();
         o8823[3] = new Dictionary();
         var _loc3_:Array = o17439.o6280;
         _loc2_ = 0;
         while(_loc2_ < o8823.length)
         {
            _loc1_ = 0;
            while(_loc1_ < _loc3_.length)
            {
               o8823[_loc2_][_loc3_[_loc1_]] = o11131(_loc2_);
               _loc1_++;
            }
            _loc2_++;
         }
         var _loc4_:Array = o17439.o18061;
         _loc2_ = 0;
         while(_loc2_ < 2)
         {
            _loc1_ = 0;
            while(_loc1_ < _loc4_.length)
            {
               o8823[_loc2_][_loc4_[_loc1_]] = o11131(1,true);
               _loc1_++;
            }
            _loc2_++;
         }
      }
      
      private static function o5245(param1:Boolean = false) : Array
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc5_:Array = [];
         _loc3_ = o484.concat();
         _loc4_ = 0;
         while(_loc4_ < o484.length - 1)
         {
            _loc2_ = _loc3_[_loc4_];
            _loc5_.push(_loc2_);
            _loc4_++;
         }
         return _loc5_;
      }
      
      private static function o11131(param1:int, param2:Boolean = false) : Array
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:Array = [];
         if(param2)
         {
            _loc4_ = o16650.concat();
         }
         else
         {
            _loc4_ = o16401.concat();
         }
         _loc5_ = 0;
         while(_loc5_ < param1)
         {
            _loc6_ = o2994(_loc4_);
            _loc3_ = _loc4_[_loc6_];
            _loc7_.push(_loc3_);
            if(_loc3_ == o6891)
            {
               _loc4_.splice(_loc4_.indexOf(o11768),1);
            }
            else if(_loc3_ == o11768)
            {
               _loc4_.splice(_loc4_.indexOf(o6891),1);
            }
            _loc4_.splice(_loc4_.indexOf(_loc3_),1);
            _loc5_++;
         }
         return _loc7_;
      }
      
      private static function o2994(param1:Array) : int
      {
         o16191 = Number(o16191) + 1;
         var _loc2_:int = o4519.o8116.random.o10418(Number(o16191)) * param1.length;
         return _loc2_;
      }
      
      public static function o10865() : Array
      {
         return o484;
      }
      
      public static function o7835(param1:int, param2:int) : Array
      {
         if(param2 < o8823.length)
         {
            return o8823[param2][param1];
         }
         return [];
      }
      
      public static function o2464(param1:int) : String
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case o14510:
               return "";
            case o6891:
               return "Fiery Skin";
            case o11768:
               return "Poisoned Limbs";
            case o14949:
               return "Chitinous Hide";
            case o6517:
               return "Extra Fast";
            case o14356:
               return "Berserk";
            case o16843:
               return "Extra Strong";
            case o5045:
               return "Regenerating";
            case o8348:
               return "Energy Resilient";
            case o13015:
               return "Dark Minion";
            case o15261:
               return "Acid Blood";
            case o3505:
               return "Nightmarish";
            default:
               return "Error: No property name";
         }
      }
   }
}
