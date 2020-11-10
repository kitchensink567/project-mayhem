package
{
   public class o12195
   {
      
      private static var o18789:Vector.<o11039> = new Vector.<o11039>();
      
      private static var o7505:Vector.<o4650> = new Vector.<o4650>();
      
      private static var o8163:Vector.<o16664> = new Vector.<o16664>();
       
      
      public function o12195()
      {
         super();
      }
      
      public static function o10178(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         var _loc7_:* = null;
         var _loc8_:o7848 = o7848(param3);
         if(_loc8_ && param1.o4670.o7077 > 0 && _loc8_ is o6925)
         {
            _loc7_ = o6925(_loc8_);
            o4519.o8116.o8361.o20009(_loc7_,o2940.o19216().initialise(param2.o5973,3,param1.o4670.o7077,param1.o4670.o11401));
         }
         if(param2.o19888)
         {
            return;
         }
         var _loc6_:o4016 = o4016.o10062().initialise(param4,param1.o4670.o3,param1.o1432,null,param5,param1.o4670.o15985,param2.o10886.o12680,0,false,param2.o10886.o7859,0,false,param1.o4670.o1775,param2.o10886.o14685,param2.o10886.o18873,param1.o4670.id);
         o4519.o8116.o8361.o5725(o6270(param3),_loc6_);
         if(_loc8_ && param1.o4670.o4687 > 0)
         {
            _loc8_.o13423(param1.o4670.o4687,param1.o4670.o10273,param1.o4670.o3,param1.o1432,null,-1,param1.o4670.o1775,param1.o4670.id);
         }
      }
      
      public static function o10674(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         var _loc6_:* = null;
         if(o18789.length > 0)
         {
            _loc6_ = o18789.pop();
         }
         else
         {
            _loc6_ = new o11039();
            _loc6_.o10696 = o18789;
         }
         _loc6_.o10886 = param2.o10886;
         _loc6_.o19888 = param2.o19888;
         _loc6_.init(param3,[],param4,param5,param1.o4670.o18640,param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464,param2.o10886);
      }
      
      public static function o9256(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         var _loc6_:* = null;
         if(o7505.length > 0)
         {
            _loc6_ = o7505.pop();
         }
         else
         {
            _loc6_ = new o4650();
            _loc6_.o10696 = o7505;
         }
         _loc6_.o10886 = param2.o10886;
         _loc6_.o19888 = param2.o19888;
         o10178(param1,param2,param3,param4,param5);
         _loc6_.init(param3,param4,param5,param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464,param2.o10886);
      }
      
      public static function o12465(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         var _loc6_:* = null;
         if(o8163.length > 0)
         {
            _loc6_ = o8163.pop();
         }
         else
         {
            _loc6_ = new o16664();
            _loc6_.o10696 = o8163;
         }
         _loc6_.o10886 = param2.o10886;
         _loc6_.o19888 = param2.o19888;
         _loc6_.init(param3,[],param4,param5,param1.o4670.o18640,param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464,param2.o10886);
      }
      
      public static function o1951(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         if(param2.o19888)
         {
            return;
         }
         var _loc6_:o4016 = o4016.o10062().initialise(param4,2,param1.o1432,null,param5,param1.o4670.o15985,param2.o10886.o12680,0,false,param2.o10886.o7859,0,false,param1.o4670.o1775,param2.o10886.o14685,param2.o10886.o18873,param1.o4670.id);
         o4519.o8116.o8361.o5725(o6270(param3),_loc6_);
      }
      
      public static function o3679(param1:o4411, param2:o19042, param3:o7848, param4:Number, param5:Number) : void
      {
         if(param2.o19888)
         {
            return;
         }
         var _loc6_:o4016 = o4016.o10062().initialise(param4,4,param1.o1432,null,param5,param1.o4670.o15985,param2.o10886.o12680,0,false,param2.o10886.o7859,0,false,param1.o4670.o1775,param2.o10886.o14685,param2.o10886.o18873,param1.o4670.id);
         o4519.o8116.o8361.o5725(o6270(param3),_loc6_);
      }
   }
}
