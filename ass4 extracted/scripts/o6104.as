package
{
   public class o6104
   {
      
      public static var o19154:Vector.<o10725> = new Vector.<o10725>();
      
      public static var o4378:Vector.<o16320> = new Vector.<o16320>();
      
      public static var o1525:Vector.<o13847> = new Vector.<o13847>();
      
      public static var o395:Vector.<o13847> = new Vector.<o13847>();
      
      public static var o16924:Vector.<o15232> = new Vector.<o15232>();
      
      public static var o3737:Vector.<o2556> = new Vector.<o2556>();
      
      public static var o1133:Vector.<o5683> = new Vector.<o5683>();
      
      public static var o1152:Vector.<o19736> = new Vector.<o19736>();
      
      public static var o4599:Vector.<o20537> = new Vector.<o20537>();
      
      public static var o314:Vector.<o13966> = new Vector.<o13966>();
       
      
      public function o6104()
      {
         super();
      }
      
      public static function clear() : void
      {
         var _loc11_:int = 0;
         var _loc10_:* = o19154;
         for each(var _loc2_ in o19154)
         {
            _loc2_.o19115();
            _loc2_ = null;
         }
         var _loc13_:int = 0;
         var _loc12_:* = o16924;
         for each(var _loc7_ in o16924)
         {
            _loc7_.o19115();
            _loc7_ = null;
         }
         var _loc15_:int = 0;
         var _loc14_:* = o3737;
         for each(var _loc6_ in o3737)
         {
            _loc6_.o19115();
            _loc6_ = null;
         }
         var _loc17_:int = 0;
         var _loc16_:* = o1133;
         for each(var _loc1_ in o1133)
         {
            _loc1_.o19115();
            _loc1_ = null;
         }
         var _loc19_:int = 0;
         var _loc18_:* = o4599;
         for each(var _loc9_ in o4599)
         {
            _loc9_.o19115();
            _loc9_ = null;
         }
         var _loc21_:int = 0;
         var _loc20_:* = o1152;
         for each(var _loc5_ in o1152)
         {
            _loc5_.o19115();
            _loc5_ = null;
         }
         var _loc23_:int = 0;
         var _loc22_:* = o314;
         for each(var _loc8_ in o314)
         {
            _loc8_.o19115();
            _loc8_ = null;
         }
         var _loc25_:int = 0;
         var _loc24_:* = o1525;
         for each(var _loc4_ in o1525)
         {
            _loc4_.o19115();
            _loc4_ = null;
         }
         var _loc27_:int = 0;
         var _loc26_:* = o395;
         for each(_loc4_ in o395)
         {
            _loc4_.o19115();
            _loc4_ = null;
         }
         var _loc29_:int = 0;
         var _loc28_:* = o4378;
         for each(var _loc3_ in o4378)
         {
            _loc3_.o19115();
            _loc3_ = null;
         }
         o1133 = new Vector.<o5683>();
         o4599 = new Vector.<o20537>();
         o19154 = new Vector.<o10725>();
         o16924 = new Vector.<o15232>();
         o3737 = new Vector.<o2556>();
         o1152 = new Vector.<o19736>();
         o314 = new Vector.<o13966>();
         o1525 = new Vector.<o13847>();
         o395 = new Vector.<o13847>();
         o4378 = new Vector.<o16320>();
      }
      
      private static function o16586(param1:Class, param2:Object, param3:o4411, param4:int, param5:o8464, param6:Boolean) : o19042
      {
         var _loc7_:* = null;
         if(param2.length > 0)
         {
            _loc7_ = param2.pop();
         }
         else
         {
            _loc7_ = new param1();
            Object(_loc7_).o10696 = param2;
            _loc7_.o5179();
         }
         _loc7_.o2493 = param4 * param3.o2493;
         _loc7_.o128 = param3.o128;
         if(param5)
         {
            _loc7_.o10886 = param5;
         }
         _loc7_.o19888 = param6;
         return _loc7_;
      }
      
      public static function o3889(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o10725 = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,param1.o4670.o18640,o8723.o3969 | o8723.o18180 | o8723.o19523);
      }
      
      public static function o17478(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o10725 = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,o8723.o18481 | o8723.o3732,param1.o4670.o18640,o8723.o19523,null,null,null,o11381.o7800);
      }
      
      public static function o2617(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685);
         var _loc8_:o16320 = o16320(o16586(o16320,o4378,param1,param5,param6,param7));
         _loc8_.o16955(param2,param3,new o18509(param4.x * _loc9_,param4.y * _loc9_),param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464,param1.o13696);
      }
      
      public static function o10477(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc11_:int = 0;
         var _loc10_:* = o395;
         for each(var _loc8_ in o395)
         {
            if(_loc8_.o13373 != null && _loc8_.o13373 == param1.o1432 && _loc8_.o2752 == param1)
            {
               _loc8_.o2493 = param5 * param1.o2493;
               _loc8_.o128 = param1.o128;
               if(param6)
               {
                  _loc8_.o10886 = param6;
               }
               _loc8_.o19888 = param7;
               _loc8_.o2318();
               return;
            }
         }
         var _loc9_:o13847 = o13847(o16586(o13847,o1525,param1,param5,param6,param7));
         _loc9_.o16955(param1.o4670,param1.o1432,param3,param4,param1.o11119,param1.o3046,param1.o10464,o8723.o3969 | o8723.o18180 | o8723.o19523,o395,param1);
      }
      
      public static function o8450(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o10725 = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,1,o8723.o3969 | o8723.o18180 | o8723.o19523);
      }
      
      public static function o1920(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685);
         var _loc8_:o15232 = o15232(o16586(o15232,o16924,param1,param5,param6,param7));
         _loc8_.o16955(param2,param3,new o18509(param4.x * _loc9_,param4.y * _loc9_),param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464,param1.o13696);
      }
      
      public static function o14219(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o2556 = o2556(o16586(o2556,o3737,param1,param5,param6,param7));
         _loc8_.o16955(param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o4670.o18640,param3);
         _loc8_.body.o8564(param2.x,param2.y);
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685 * 2);
         _loc8_.body.o6141(param4.x * _loc9_,param4.y * _loc9_);
      }
      
      public static function o6364(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685);
         var _loc8_:o5683 = o5683(o16586(o5683,o1133,param1,param5,param6,param7));
         _loc8_.o16955(param2,param3,new o18509(param4.x * _loc9_,param4.y * _loc9_),param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464);
         _loc8_.body.o8564(param2.x,param2.y);
      }
      
      public static function o10642(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685);
         var _loc8_:o19736 = o19736(o16586(o19736,o1152,param1,param5,param6,param7));
         _loc8_.o16955(param2,param3,new o18509(param4.x * _loc9_,param4.y * _loc9_),param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464);
      }
      
      public static function o15135(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o20537 = o20537(o16586(o20537,o4599,param1,param5,param6,param7));
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,param1.o4670.o18640,o8723.o3969 | o8723.o18180 | o8723.o19523);
      }
      
      public static function o9955(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc9_:Number = o4519.o8116.o4550(param1.o4670.o16685);
         var _loc8_:o13966 = o13966(o16586(o13966,o314,param1,param5,param6,param7));
         _loc8_.o16955(param2,param3,new o18509(param4.x * _loc9_,param4.y * _loc9_),param1.o4670,param1.o1432,param1.o11119,param1.o3046,param1.o10464);
      }
      
      public static function o12028(param1:o4411, param2:o18509, param3:Number, param4:o18509, param5:int, param6:o8464 = null, param7:Boolean = false) : void
      {
         var _loc8_:o10725 = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,param1.o4670.o18640,o8723.o3969 | o8723.o18180 | o8723.o19523);
         _loc8_ = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o128 = o12195.o1951;
         var _loc9_:o18509 = param4.o4010();
         _loc9_.o3215 = 6;
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,param1.o4670.o18640,o8723.o3969 | o8723.o18180 | o8723.o19523,"assets.ammo.thermal.Display","assets.effects.bulletImpactThermal",_loc9_);
         _loc8_ = o10725(o16586(o10725,o19154,param1,param5,param6,param7));
         _loc8_.o128 = o12195.o3679;
         _loc9_.x = -_loc9_.x;
         _loc9_.y = -_loc9_.y;
         _loc8_.o16955(param1,param1.o1432,param1.o4670,param2,param3,param4,param1.o11119,param1.o3046,param1.o4670.o18640,o8723.o3969 | o8723.o18180 | o8723.o19523,"assets.ammo.chemical.Display","assets.effects.bulletImpactChemical",_loc9_);
      }
   }
}
