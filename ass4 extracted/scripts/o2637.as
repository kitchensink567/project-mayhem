package
{
   import flash.display.Sprite;
   
   public class o2637 extends Sprite
   {
       
      
      public function o2637()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3864;
      }
   }
}

import flash.utils.ByteArray;

class o3864 extends o3047
{
    
   
   private var o19021:Vector.<o18509>;
   
   private var o3040:Vector.<Vector.<o16541>>;
   
   private var o5438:Vector.<o16541>;
   
   private var o19708:int = 10000;
   
   private var o19516:int = 0;
   
   private var o4082:int = 0;
   
   private var o11442:Number = 0;
   
   private var o11924:Number = 0;
   
   private var o4426:Number = 0;
   
   private var o3375:int = 0;
   
   private var o11340:Boolean = false;
   
   private const o20665:int = 5000;
   
   private const o17157:int = 22;
   
   private var o6168:int = 0;
   
   private var o7973:Number = 0;
   
   private var o10517:int = 0;
   
   private var o19301:int = 99999;
   
   function o3864()
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
   
   public function o1777() : void
   {
      var _loc3_:int = 0;
      var _loc7_:* = undefined;
      var _loc5_:int = 0;
      var _loc4_:* = null;
      var _loc2_:* = null;
      var _loc6_:Boolean = false;
      var _loc1_:Vector.<Vector.<o11625>> = o8291.o11113;
      o3040 = new Vector.<Vector.<o16541>>();
      _loc3_ = 0;
      while(_loc3_ < _loc1_.length)
      {
         _loc7_ = new Vector.<o16541>();
         o3040.push(_loc7_);
         _loc5_ = 0;
         while(_loc5_ < _loc1_[_loc3_].length)
         {
            _loc4_ = _loc1_[_loc3_][_loc5_];
            _loc2_ = new o16541(this,o20712 + o4082 * 5000,_loc4_.o9899,_loc4_.o9533,_loc4_.o12898,_loc4_.o18183,_loc4_.o17625,_loc4_.o3600,_loc4_.o11432);
            _loc7_.push(_loc2_);
            o4082 = Number(o4082) + 1;
            _loc5_++;
         }
         _loc6_ = _loc3_ + 1 >= o8291.o19605?true:false;
         if(_loc6_ && o19708 >= o8291.o20958)
         {
            _loc7_.push(o4081());
         }
         else if(_loc6_)
         {
            o19708 = Number(o19708) + 1;
         }
         _loc3_++;
      }
   }
   
   private function o13676(param1:int, param2:int) : Vector.<o16541>
   {
      var _loc14_:int = 0;
      var _loc12_:int = 0;
      var _loc15_:Number = NaN;
      var _loc9_:* = null;
      var _loc10_:Vector.<o16541> = new Vector.<o16541>();
      var _loc3_:int = param1 - o8291.o11113.length;
      if(param1 >= 22)
      {
         o11340 = true;
      }
      var _loc7_:Number = o8291.o3000;
      var _loc13_:int = o8291.o2893;
      var _loc4_:Number = o8291.o1186;
      var _loc6_:Number = o8291.o3000 / o8291.o2893;
      var _loc5_:Array = [0,1,2,3,4,5,8];
      var _loc8_:Array = _loc5_.slice();
      var _loc11_:int = 0;
      _loc14_ = 0;
      while(_loc14_ < _loc13_)
      {
         if(_loc8_.length > 0)
         {
            param2++;
            _loc12_ = _loc8_.length * o4519.o8116.random.o10418(param2);
            _loc11_ = _loc8_.splice(_loc12_,1)[0];
         }
         else
         {
            param2++;
            _loc11_ = _loc5_[int(_loc5_.length * o4519.o8116.random.o10418(param2))];
         }
         _loc15_ = o4191(_loc11_,_loc3_);
         _loc9_ = new o18316(this,o20712 + o4082 * 5000,_loc11_,0,_loc6_,_loc15_,4,true,_loc4_);
         o4082 = Number(o4082) + 1;
         _loc10_.push(_loc9_);
         _loc14_++;
      }
      var _loc16_:Boolean = param1 + 1 >= o8291.o19605?true:false;
      if(_loc16_ && o19708 >= o8291.o13033)
      {
         _loc10_.push(o4081(_loc7_));
      }
      else if(_loc16_)
      {
         o19708 = Number(o19708) + 1;
      }
      return _loc10_;
   }
   
   private function o4081(param1:Number = 20) : o16541
   {
      var _loc3_:* = undefined;
      var _loc4_:* = null;
      var _loc2_:Number = o8291.o12922 + o8291.o4834 * o19516;
      if(o11340)
      {
         _loc3_ = o10176.o8930(_loc2_,-1,-1,o11340);
      }
      else
      {
         _loc3_ = o10176.o8930(_loc2_);
      }
      _loc3_ = _loc3_.reverse();
      if(_loc3_.length > 0)
      {
         _loc4_ = new o8734(this,o20712 + o4082 * 5000,_loc3_);
         _loc4_.o7976(param1 * 1 / 3);
         _loc4_.o5803(param1 * 2 / 3);
      }
      o19708 = 0;
      o19516 = Number(o19516) + 1;
      o4082 = Number(o4082) + 1;
      return _loc4_;
   }
   
   private function o4191(param1:int, param2:int) : int
   {
      var _loc3_:int = 0;
      switch(int(param1))
      {
         case 0:
            _loc3_ = o8291.o3951;
            break;
         case 1:
            _loc3_ = o8291.o230;
            break;
         case 2:
            _loc3_ = o8291.o5426;
            break;
         case 3:
            _loc3_ = o8291.o7202;
            break;
         case 4:
            _loc3_ = o8291.o3948;
            break;
         case 5:
            _loc3_ = o8291.o8261;
            break;
         default:
            _loc3_ = o8291.o8261;
            break;
         default:
            _loc3_ = o8291.o8261;
            break;
         case 8:
            _loc3_ = o8291.o17640;
      }
      return _loc3_;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      param1.body.o13392(o19021[param1.o5973 % o19021.length]);
      param1.o13864(!!param1.o17050?1:o11442 + 1,o11924 + 1,o11924 + 1,o4426 + 1,o7973,true);
      var _loc2_:int = o3375;
      if(_loc2_ > 20)
      {
         _loc2_ = 20;
      }
      param1.o20133 = param1.o20133 * (1 + _loc2_ * 5 / 100);
   }
   
   public function o6408(param1:int, param2:int) : void
   {
      var _loc3_:int = 0;
      o6168 = Number(o6168) + 1;
      o11442 = o8291.o1439 * o6168;
      o11924 = o8291.o13523 * o6168;
      o4426 = o8291.o16202 * o6168;
      if(o6168 >= o8291.o9985)
      {
         o19301 = Number(o19301) + 1;
         if(o19301 > o8291.o11058)
         {
            o10517 = Number(o10517) + 1;
            o7973 = o8291.o247 * o10517;
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
      return o4519.o8116.o2996.o20698(o18442).length < o8291.o3095;
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
