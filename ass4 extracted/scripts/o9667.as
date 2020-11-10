package
{
   import flash.display.Sprite;
   
   public class o9667 extends Sprite
   {
       
      
      public function o9667()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12230;
      }
   }
}

import flash.utils.ByteArray;

class o12230 extends o3047
{
    
   
   private var o19021:Vector.<o18509>;
   
   private var o3040:Vector.<Vector.<o16541>>;
   
   private var o5438:Vector.<o16541>;
   
   private var o7575:Vector.<o3954>;
   
   private var o7946;
   
   private var o20149:int = 0;
   
   private var o19516:int = 0;
   
   private var o19708:int = 10000;
   
   private var o19371:int = -1;
   
   private var o19193:int = 0;
   
   private var o4082:int = 0;
   
   private var o4423:Boolean = false;
   
   private var o6168:int = 0;
   
   private var o17088:int = -1;
   
   private var o13096:int = -1;
   
   private var o19301:int = 0;
   
   private var o10517:int = 0;
   
   private var o7973:Number = 0;
   
   private var o11442:Number = 0;
   
   private var o11924:Number = 0;
   
   private var o4426:Number = 0;
   
   private const o10823:int = 1937405;
   
   private const o20665:int = 5000;
   
   private const o14947:int = 30;
   
   function o12230()
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
      o3040 = new Vector.<Vector.<o16541>>();
      o7575 = new Vector.<o3954>();
      super.o949(param1);
   }
   
   public function o2496(param1:*) : void
   {
      this.o7946 = param1;
   }
   
   public function o507(param1:int) : void
   {
      this.o20149 = param1;
   }
   
   public function o9994(param1:int) : Boolean
   {
      var _loc16_:int = 0;
      var _loc13_:int = 0;
      var _loc17_:Number = NaN;
      var _loc9_:* = null;
      var _loc14_:Number = NaN;
      var _loc8_:* = undefined;
      var _loc10_:* = null;
      var _loc7_:int = 0;
      if(param1 < o19193)
      {
         return false;
      }
      o19193 = Number(o19193) + 1;
      o19371 = Number(o19371) + 1;
      var _loc11_:Vector.<o16541> = new Vector.<o16541>();
      o11442 = o6873.o1439 * o6168;
      o11924 = o6873.o13523 * o6168;
      o4426 = o6873.o16202 * o6168;
      if(o6168 >= o6873.o9985)
      {
         o19301 = Number(o19301) + 1;
         if(o19301 > o6873.o11058)
         {
            o10517 = Number(o10517) + 1;
            o7973 = o6873.o247 * o10517;
            if(o7973 < 0)
            {
               o7973 = 0;
            }
            o19301 = 0;
         }
      }
      var _loc5_:Number = o6873.o8660;
      var _loc15_:int = o6873.o8869;
      var _loc2_:Number = o6873.o1102;
      var _loc4_:Number = o6873.o8660 / o6873.o8869;
      var _loc3_:Array = [0,1,2,3,4,5,8];
      var _loc6_:Array = _loc3_.slice();
      var _loc12_:int = 0;
      _loc16_ = 0;
      while(_loc16_ < _loc15_)
      {
         if(_loc6_.length > 0)
         {
            o19371 = Number(o19371) + 1;
            _loc13_ = _loc6_.length * o4519.o8116.random.o10418(Number(o19371));
            _loc12_ = _loc6_.splice(_loc13_,1)[0];
         }
         else
         {
            o19371 = Number(o19371) + 1;
            _loc12_ = _loc3_[int(_loc3_.length * o4519.o8116.random.o10418(Number(o19371)))];
         }
         _loc17_ = o4191(_loc12_,o19193);
         _loc9_ = new o18316(this,o20712 + o4082 * 5000,_loc12_,0,_loc4_,_loc17_,4,true,_loc2_);
         o4082 = Number(o4082) + 1;
         _loc11_.push(_loc9_);
         _loc16_++;
      }
      if(o19708 >= o6873.o7115)
      {
         _loc14_ = o6873.o12922 + o6873.o14610 * o19516;
         _loc8_ = o10176.o8930(_loc14_,-1,-1,false,true);
         _loc8_ = _loc8_.reverse();
         if(_loc8_.length > 0)
         {
            _loc10_ = new o8734(this,o20712 + o4082 * 5000,_loc8_);
            o4082 = Number(o4082) + 1;
            _loc10_.o7976(_loc4_);
            _loc10_.o5803(0);
            _loc11_.push(_loc10_);
         }
         o19708 = 0;
         o19516 = Number(o19516) + 1;
      }
      else
      {
         o19708 = Number(o19708) + 1;
      }
      _loc7_ = 0;
      while(_loc7_ < _loc11_.length)
      {
         _loc11_[_loc7_].o4526();
         _loc7_++;
      }
      o5438 = _loc11_;
      o3040.push(_loc11_);
      return true;
   }
   
   public function o7664() : Boolean
   {
      if(o5438 && o1055())
      {
         return true;
      }
      return false;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      var _loc3_:* = null;
      if(param1 == null || o7946 == null || param1.o6691 == null || param1.body == null || param1.o6691.position == null)
      {
         return;
      }
      if(o4423)
      {
         o4519.o8116.o8361.o5725(param1,o4016.o10062().initialise(999999999,1,param1));
      }
      var _loc2_:o18509 = o19021[param1.o5973 % o19021.length];
      if(_loc2_)
      {
         param1.body.o13392(_loc2_);
      }
      param1.o13864(o11442 + 1,o11924 + 1,o11924 + 1,o4426 + 1,o7973,true);
      var _loc4_:int = o19193;
      if(_loc4_ >= 10)
      {
         _loc4_ = 10;
      }
      param1.o20133 = param1.o20133 * (1 + _loc4_ * 20 / 100);
      if(param1.type != 8 || param1.type != 9)
      {
         o20149 = Number(o20149) + 1;
         _loc3_ = o3954(o4519.o8116.o2996.o2998(o3954,[o7946,param1.o6691.position,param1.type,false]));
         if(_loc3_)
         {
            param1.o4218(_loc3_);
            o7575.push(_loc3_);
         }
         else
         {
            _loc3_ = null;
         }
      }
   }
   
   public function o11138(param1:Boolean = true) : void
   {
      var _loc3_:Array = o4519.o8116.o2996.o20698(o18442).concat();
      var _loc5_:int = 0;
      var _loc4_:* = _loc3_;
      for each(var _loc2_ in _loc3_)
      {
         if(param1)
         {
            _loc2_.o19115();
         }
         else
         {
            o4519.o8116.o8361.o5725(o6270(_loc2_),o4016.o10062().initialise(1.79769313486232e308,1,_loc2_));
         }
      }
      o17088 = o1051.o9310(this,1,o11138);
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
   
   override public function o1710() : Boolean
   {
      return o4519.o8116.o2996.o20698(o18442).length < o6873.o3095;
   }
   
   private function o4191(param1:int, param2:int) : int
   {
      var _loc3_:int = 0;
      switch(int(param1))
      {
         case 0:
            _loc3_ = o6873.o20954;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 1:
            _loc3_ = o6873.o4769;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 2:
            _loc3_ = o6873.o15406;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 3:
            _loc3_ = o6873.o3448;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 4:
            _loc3_ = o6873.o16607;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 5:
            _loc3_ = o6873.o8413;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         default:
            _loc3_ = o6873.o8413;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         default:
            _loc3_ = o6873.o8413;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
            break;
         case 8:
            _loc3_ = o6873.o5491;
            _loc3_ = _loc3_ + o6873.o8329 * param2;
      }
      return _loc3_;
   }
   
   private function o59(param1:int) : o18509
   {
      var _loc2_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = null;
      if(o19021)
      {
         _loc2_ = o4519.o8116.random.o10418(param1) * o19021.length;
         _loc4_ = _loc2_ % o19021.length;
         if(_loc4_ >= o19021.length)
         {
            _loc4_ = o19021.length - 1;
         }
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         _loc3_ = o19021[_loc4_];
         if(_loc3_)
         {
            return _loc3_;
         }
      }
      if(o19021)
      {
         trace("findRandomNodeInArray: state ID is incorrect? returning 0,0 - Array length: " + o19021.length + " State ID:" + param1);
      }
      else
      {
         trace("findRandomNodeInArray: Array null, returning 0,0 - State ID:" + param1);
      }
      return new o18509(0,0);
   }
   
   public function o17230(param1:int) : Number
   {
      return o6873.o1439 * param1 + 1;
   }
   
   public function o1569(param1:int) : Number
   {
      return o6873.o13523 * param1 + 1;
   }
   
   public function o6125(param1:int) : Number
   {
      var _loc2_:* = 0;
      if(param1 + 1 >= o6873.o9985)
      {
         if(o19301 + 1 > o6873.o11058)
         {
            _loc2_ = Number(o6873.o247 * o10517 + 1);
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
      }
      return _loc2_;
   }
   
   public function o1177(param1:int) : Number
   {
      return o6873.o16202 * param1 + 1;
   }
   
   public function o6751(param1:Boolean) : void
   {
      this.o4423 = param1;
   }
   
   public function o5033() : void
   {
      if(o7575)
      {
         var _loc3_:int = 0;
         var _loc2_:* = o7575;
         for each(var _loc1_ in o7575)
         {
            if(_loc1_)
            {
               _loc1_.o14322();
            }
         }
      }
   }
   
   override public function o19115() : void
   {
      if(this.o5836)
      {
         return;
      }
      o4423 = true;
      o1051.o19115(o13096);
      o1051.o19115(o17088);
      if(o5438)
      {
         var _loc6_:int = 0;
         var _loc5_:* = o5438;
         for each(var _loc3_ in o5438)
         {
            if(_loc3_)
            {
               _loc3_.o19115();
            }
         }
      }
      if(o3040)
      {
         var _loc10_:int = 0;
         var _loc9_:* = o3040;
         for each(var _loc1_ in o3040)
         {
            if(_loc1_)
            {
               var _loc8_:int = 0;
               var _loc7_:* = _loc1_;
               for each(var _loc4_ in _loc1_)
               {
                  if(_loc4_)
                  {
                     _loc4_.o19115();
                  }
               }
               _loc3_.o19115();
            }
         }
      }
      if(o7575)
      {
         var _loc12_:int = 0;
         var _loc11_:* = o7575;
         for each(var _loc2_ in o7575)
         {
            if(_loc2_)
            {
               _loc2_.o19115();
            }
         }
      }
      o3040 = null;
      o7575 = null;
      o5438 = null;
      o19021 = null;
      super.o19115();
   }
}
