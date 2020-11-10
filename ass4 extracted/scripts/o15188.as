package
{
   import flash.display.Sprite;
   
   public class o15188 extends Sprite
   {
       
      
      public function o15188()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o9951;
      }
   }
}

import flash.utils.ByteArray;

class o9951 extends o3047
{
    
   
   private var o19021:Vector.<o18509>;
   
   private var o3040:Vector.<Vector.<o16541>>;
   
   private var o5438:Vector.<o16541>;
   
   private var o19516:int = 0;
   
   private var o19708:int = 10000;
   
   private var o4082:int = 0;
   
   private var o3375:int = 0;
   
   private var o11442:Number = 0;
   
   private var o11924:Number = 0;
   
   private var o4426:Number = 0;
   
   private const o20665:int = 5000;
   
   private var o6168:int = 0;
   
   private var o7973:Number = 0;
   
   private var o10517:int = 0;
   
   private var o19301:int = 0;
   
   function o9951()
   {
      o19021 = new Vector.<o18509>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      param2.position = 0;
      while(param2.bytesAvailable)
      {
         o19021.push(new o18509(param2.readFloat(),param2.readFloat()));
      }
      o949(param1);
   }
   
   override protected function o6249(param1:o18442) : void
   {
      param1.body.o13392(o19021[param1.o5973 % o19021.length]);
      param1.o13864(o11442 + 1,o11924 + 1,o11924 + 1,o4426 + 1,o7973,true);
      var _loc2_:int = o3375;
      if(_loc2_ >= 20)
      {
         _loc2_ = 20;
      }
      param1.o20133 = param1.o20133 * (1 + _loc2_ * 5 / 100);
   }
   
   override protected function o14620(param1:o18442) : Boolean
   {
      var _loc2_:int = param1.o5973 / 5000;
      if(o4519.o8116.random.o10418(_loc2_ * 69 + param1.grade * 87) < 0.33)
      {
         switch(int(param1.type))
         {
            case 0:
               if(param1.o5973 % 10 < 4)
               {
                  return true;
               }
               break;
            case 1:
               if(param1.o5973 % 10 < 6)
               {
                  return true;
               }
               break;
         }
      }
      return false;
   }
   
   override public function o1710() : Boolean
   {
      return o4519.o8116.o2996.o20698(o18442).length < o5141.o3095;
   }
   
   public function o1777() : void
   {
      var _loc5_:int = 0;
      var _loc8_:* = undefined;
      var _loc7_:int = 0;
      var _loc6_:* = null;
      var _loc3_:* = null;
      var _loc1_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:Vector.<Vector.<o11625>> = o5141.o11113;
      o3040 = new Vector.<Vector.<o16541>>();
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc8_ = new Vector.<o16541>();
         o3040.push(_loc8_);
         _loc7_ = 0;
         while(_loc7_ < _loc2_[_loc5_].length)
         {
            _loc6_ = _loc2_[_loc5_][_loc7_];
            _loc3_ = new o16541(this,o20712 + o4082 * 5000,_loc6_.o9899,_loc6_.o9533,_loc6_.o12898,_loc6_.o18183,_loc6_.o17625,_loc6_.o3600,_loc6_.o11432);
            _loc1_ = o20712 + o4082 * 5000;
            _loc4_ = o20712 + (o4082 + 1) * 5000 - 1;
            _loc8_.push(_loc3_);
            o4082 = Number(o4082) + 1;
            _loc7_++;
         }
         _loc5_++;
      }
   }
   
   public function o6408(param1:int, param2:int) : void
   {
      var _loc3_:int = 0;
      o6168 = Number(o6168) + 1;
      o11442 = o5141.o1439 * o6168;
      o11924 = o5141.o13523 * o6168;
      o4426 = o5141.o16202 * o6168;
      if(o6168 >= o5141.o9985)
      {
         o19301 = Number(o19301) + 1;
         if(o19301 > o5141.o11058)
         {
            o10517 = Number(o10517) + 1;
            o7973 = o5141.o247 * o10517;
            if(o7973 < 0)
            {
               o7973 = 0;
            }
            o19301 = 0;
         }
      }
      if(param1 < o3040.length)
      {
         o5438 = o3040[param1];
      }
      else
      {
         o5438 = o13676(param1,param2);
      }
      _loc3_ = 0;
      while(_loc3_ < o5438.length)
      {
         o5438[_loc3_].o4526();
         _loc3_++;
      }
      o3375 = param1;
   }
   
   public function o1055() : Boolean
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o5438.length)
      {
         if(o5438[_loc1_].o8289() == false)
         {
            return false;
         }
         _loc1_++;
      }
      return true;
   }
   
   public function o9834() : int
   {
      return o3040.length;
   }
   
   private function o13676(param1:int, param2:int) : Vector.<o16541>
   {
      var _loc10_:int = 0;
      var _loc19_:* = NaN;
      var _loc15_:int = 0;
      var _loc14_:int = 0;
      var _loc18_:* = NaN;
      var _loc11_:* = null;
      var _loc16_:Number = NaN;
      var _loc9_:* = undefined;
      var _loc12_:* = null;
      var _loc13_:Vector.<o16541> = new Vector.<o16541>();
      var _loc3_:int = param1 - o5141.o11113.length;
      var _loc7_:Number = o5141.o3000;
      var _loc17_:int = o5141.o2893;
      var _loc4_:Number = o5141.o1186;
      var _loc6_:Number = o5141.o3000 / o5141.o2893;
      var _loc5_:Array = [0,1,2,3,4,5,8];
      var _loc8_:Array = _loc5_.slice();
      _loc10_ = 0;
      while(_loc10_ < _loc17_)
      {
         _loc19_ = 0;
         if(_loc8_.length > 0)
         {
            param2++;
            _loc15_ = _loc8_.length * o4519.o8116.random.o10418(param2);
            _loc14_ = _loc8_.splice(_loc15_,1)[0];
         }
         else
         {
            param2++;
            _loc14_ = _loc5_[int(_loc5_.length * o4519.o8116.random.o10418(param2))];
         }
         _loc18_ = 0;
         switch(int(_loc14_))
         {
            case 0:
               _loc18_ = Number(o5141.o3951 + o5141.o4164 * (_loc3_ + 1));
               break;
            case 1:
               _loc18_ = Number(o5141.o230 + o5141.o14945 * (_loc3_ + 1));
               break;
            case 2:
               _loc18_ = Number(o5141.o5426 + o5141.o14777 * (_loc3_ + 1));
               break;
            case 3:
               _loc18_ = Number(o5141.o7202 + o5141.o6508 * (_loc3_ + 1));
               break;
            case 4:
               _loc18_ = Number(o5141.o3948 + o5141.o20369 * (_loc3_ + 1));
               break;
            case 5:
               _loc18_ = Number(o5141.o8261 + o5141.o6857 * (_loc3_ + 1));
               break;
            default:
               _loc18_ = Number(o5141.o8261 + o5141.o6857 * (_loc3_ + 1));
               break;
            default:
               _loc18_ = Number(o5141.o8261 + o5141.o6857 * (_loc3_ + 1));
               break;
            case 8:
               _loc18_ = Number(o5141.o17640 + o5141.o8136 * (_loc3_ + 1));
         }
         _loc11_ = new o18316(this,o20712 + o4082 * 5000,_loc14_,_loc19_,_loc6_,_loc18_,4,true,_loc4_);
         o4082 = Number(o4082) + 1;
         _loc13_.push(_loc11_);
         _loc10_++;
      }
      var _loc20_:Boolean = _loc3_ + 1 >= o5141.o5550?true:false;
      if(_loc20_ && o19708 >= o5141.o13033)
      {
         _loc16_ = o5141.o12922 + o5141.o4834 * o19516;
         _loc9_ = o10176.o8930(_loc16_);
         _loc9_ = _loc9_.reverse();
         if(_loc9_.length > 0)
         {
            _loc12_ = new o8734(this,o20712 + o4082 * 5000,_loc9_);
            o4082 = Number(o4082) + 1;
            _loc12_.o7976(_loc7_ * 1 / 3);
            _loc12_.o5803(_loc7_ * 2 / 3);
            _loc13_.push(_loc12_);
         }
         o19708 = 0;
         o19516 = Number(o19516) + 1;
      }
      else if(_loc20_)
      {
         o19708 = Number(o19708) + 1;
      }
      return _loc13_;
   }
   
   override public function o19115() : void
   {
      if(o5438)
      {
         var _loc3_:int = 0;
         var _loc2_:* = o5438;
         for each(var _loc1_ in o5438)
         {
            if(_loc1_)
            {
               _loc1_.o19115();
            }
         }
      }
      o3040 = null;
      o5438 = null;
      o19021 = null;
      super.o19115();
   }
}
