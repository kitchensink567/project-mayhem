package
{
   import flash.display.Sprite;
   
   public class o19602 extends Sprite
   {
       
      
      public function o19602()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19823;
      }
   }
}

import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o19823 extends o3047
{
   
   private static const o18060:int = 2;
    
   
   private var o19021:Vector.<o18509>;
   
   private var o8389:int = 0;
   
   private var o9025:Vector.<o20743>;
   
   public var o1295:Number = 0;
   
   private var o7230:Number = 0;
   
   private var o909:Number = 0;
   
   private var o414:int = 0;
   
   function o19823()
   {
      o19021 = new Vector.<o18509>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      var _loc4_:int = 0;
      param2.position = 0;
      while(param2.bytesAvailable)
      {
         o19021.push(new o18509(param2.readFloat(),param2.readFloat()));
      }
      this.o8389 = param1;
      o949(param1);
      var _loc5_:int = 0;
      var _loc3_:Dictionary = new Dictionary();
      _loc6_ = 0;
      while(_loc6_ < 20)
      {
         _loc5_++;
         _loc4_ = o19616.o5676[int(o4519.o8116.random.o10418(param1 + _loc5_) * o19616.o5676.length)];
         if(_loc3_[_loc4_] == null)
         {
            _loc3_[_loc4_] = new o13304(_loc4_,1);
         }
         else
         {
            _loc3_[_loc4_].o16191++;
         }
         _loc6_++;
      }
      var _loc7_:Vector.<o13304> = new Vector.<o13304>();
      var _loc10_:int = 0;
      var _loc9_:* = _loc3_;
      for(var _loc8_ in _loc3_)
      {
         _loc7_.push(_loc3_[_loc8_]);
      }
      o9025 = o10176.o10383(_loc7_,20,0,param1);
      o1295 = o19616.o3002;
   }
   
   public function start() : void
   {
      o909 = 1 / o1295;
      o7230 = o909;
      o1051.o4767(this,0.0333333333333333,o7664);
   }
   
   private function o7664() : void
   {
      var _loc2_:* = null;
      var _loc1_:* = null;
      o7230 = o7230 - 0.0333333333333333;
      if(o7230 < 0)
      {
         _loc2_ = o9025[o414];
         o414 = Number(o414) + 1;
         if(o414 >= o9025.length)
         {
            o414 = 0;
         }
         if(o1710())
         {
            _loc1_ = new ByteArray();
            _loc1_.writeByte(2);
            _loc1_.writeShort(_loc2_.o9899);
            _loc1_.writeShort(_loc2_.grade);
            dispatchData(new o2149(this,_loc1_));
         }
         o7230 = o7230 + o909;
      }
      if(o1295 < 0.5)
      {
         o1295 = 0.5;
      }
      if(o1295 > 30)
      {
         o1295 = 30;
      }
      o909 = 1 / o1295;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      if(o4519.o8116.random.o10418(param1.o5973) < o19616.o7400)
      {
         param1.o13696.splice(0,4294967295);
         param1.o13696.push(o13817);
      }
      param1.body.o13392(o19021[param1.o5973 % o19021.length]);
   }
   
   override protected function o14620(param1:o18442) : Boolean
   {
      return o4519.o8116.random.o10418(param1.o5973) < 0.2;
   }
   
   override public function o1710() : Boolean
   {
      return o4519.o8116.o2996.o20698(o18442).length < 40;
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 2))
      {
         o3370(o17439.o2586(param2.readShort()),param2.readShort());
      }
   }
   
   override public function o19115() : void
   {
      o9025 = null;
      super.o19115();
   }
}
