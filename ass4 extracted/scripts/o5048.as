package
{
   import flash.display.Sprite;
   
   public class o5048 extends Sprite
   {
       
      
      public function o5048()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12512;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o12512 extends o3047
{
    
   
   private const o19893:Number = 100;
   
   private const o1206:Number = 360.0;
   
   private const o2862:Number = 0.7;
   
   private var o18279:int;
   
   function o12512()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      super.o949(param1);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc2_:int = o10176.o13327();
      if(_loc2_ == 1)
      {
         o4519.o13206.o9185(this,360 * 0.7,o458);
      }
      else
      {
         o4519.o13206.o9185(this,360,o458);
      }
   }
   
   private function o458() : void
   {
      var _loc1_:int = 0;
      var _loc2_:Vector.<o20743> = o10176.o8930(100);
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         o3370(_loc2_[_loc1_].o18948,_loc2_[_loc1_].grade,position,0,0,true,_loc2_[_loc1_].o1673,_loc2_[_loc1_].o17014,_loc2_[_loc1_].o5751);
         _loc1_++;
      }
      o4519.o8116.o8756.o2282.o8445();
      o18279 = o1051.o4767(this,1,o9846);
   }
   
   override public function o1710() : Boolean
   {
      if(o4519.o13206.multiplayer == true)
      {
         return super.o1710();
      }
      return o4519.o32.level > 1 || o4519.o8116.o2996.o20698(o18442).length < 10;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      var _loc3_:Number = param1.o6691.rotation;
      var _loc2_:Number = 50 * o20384.random();
      param1.body.o8564(param1.body.o2697.x + Math.cos(_loc3_) * _loc2_,param1.body.o2697.y + Math.sin(_loc3_) * _loc2_);
   }
   
   private function o9846() : void
   {
      var _loc7_:* = undefined;
      var _loc5_:int = 0;
      var _loc4_:* = null;
      var _loc2_:int = 0;
      var _loc1_:* = null;
      var _loc9_:Number = NaN;
      var _loc8_:Number = NaN;
      var _loc3_:* = null;
      var _loc6_:Array = o4519.o8116.o2996.o20698(o18442);
      _loc5_ = 0;
      while(_loc5_ < _loc6_.length)
      {
         _loc4_ = _loc6_[_loc5_];
         if(_loc4_ != null && _loc4_.o17050)
         {
            if(_loc7_ == null)
            {
               _loc7_ = new Vector.<o18442>();
            }
            _loc7_.push(_loc4_);
         }
         _loc5_++;
      }
      if(_loc7_ != null)
      {
         _loc2_ = 0;
         while(_loc2_ < _loc7_.length)
         {
            _loc1_ = _loc7_[_loc2_];
            _loc9_ = o4519.o32.body.position.x - _loc1_.x;
            _loc8_ = o4519.o32.body.position.y - _loc1_.y;
            if(_loc9_ < 380 && _loc9_ > -380 && _loc8_ < 280 && _loc8_ > -280)
            {
               o1051.o19115(o18279);
               _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message10");
               o4519.o8116.o20488.o2251(2,_loc3_);
               o4519.o8116.o20488.o20575(0);
            }
            _loc2_++;
         }
      }
   }
}
