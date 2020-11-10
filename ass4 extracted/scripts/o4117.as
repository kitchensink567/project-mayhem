package
{
   import flash.utils.Dictionary;
   
   public class o4117
   {
       
      
      public var o2657:Vector.<o1253>;
      
      public var o16992:Vector.<int>;
      
      public var o2671:Dictionary;
      
      public var o6545:Number;
      
      public var o9420:Number;
      
      public var o5435:Number = 0;
      
      public var o8036:Number = 0;
      
      public var o18541:Number = 0;
      
      public var o9668:Number = 0;
      
      public var o4554:Number = 0;
      
      public var o2169:Number = 0;
      
      public var o4906:Number = 0;
      
      public var o14954:Number = 1;
      
      public function o4117()
      {
         super();
      }
      
      public static function o18521(param1:o14200, param2:o9145) : o4117
      {
         var _loc4_:o4117 = new o4117();
         _loc4_.o16992 = param2.o13012.o6575();
         _loc4_.o2671 = param2.o6337();
         _loc4_.o2657 = param2.o420;
         var _loc3_:o1832 = param1.o5292.o923.o16413(param2.o2274);
         _loc4_.o9420 = _loc3_.o10174;
         _loc4_.o6545 = _loc3_.o13167 + o17517.o3866(param2.level);
         return _loc4_;
      }
      
      private static function o15794(param1:Vector.<o1253>) : Vector.<o1253>
      {
         var _loc3_:int = 0;
         var _loc4_:Vector.<o1253> = new Vector.<o1253>();
         _loc3_ = 0;
         while(_loc3_ < 5)
         {
            _loc4_.push(null);
            _loc3_++;
         }
         var _loc6_:int = 0;
         var _loc5_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc4_[_loc2_.o10239.o20559] = _loc2_;
         }
         return _loc4_;
      }
      
      public static function o9088(param1:o14200, param2:o8443, param3:Vector.<o1253>) : o4117
      {
         var _loc5_:o4117 = new o4117();
         _loc5_.o16992 = param2.o17915;
         _loc5_.o2671 = param2.o2671;
         _loc5_.o2657 = o15794(param3);
         var _loc4_:o1832 = param1.o5292.o923.o16413(param2.o8774);
         _loc5_.o9420 = _loc4_.o10174;
         _loc5_.o6545 = _loc4_.o13167 + o17517.o3866(param2.level);
         return _loc5_;
      }
      
      public function o20595(param1:int) : Number
      {
         if(param1 == 17)
         {
            return o6545;
         }
         if(param1 == 16)
         {
            return o9420;
         }
         return 0;
      }
   }
}
