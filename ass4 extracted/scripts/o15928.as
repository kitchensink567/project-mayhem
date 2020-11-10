package
{
   import flash.display.Sprite;
   
   public class o15928 extends Sprite
   {
       
      
      public function o15928()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o16595;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o16595 extends o3047
{
   
   public static var o20272:Array = [[13,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"spawn position 1"],[2,o17243.o2013,o13351.o10420,"spawn position 2"],[3,o17243.o2013,o13351.o10420,"spawn position 3"],[4,o17243.o2013,o13351.o10420,"spawn position 4"],[5,o17243.o2013,o13351.o10420,"spawn position 5"],[6,o17243.o2013,o13351.o10420,"spawn position 6"],[7,o17243.o2013,o13351.o10420,"spawn position 7"],[8,o17243.o2013,o13351.o10420,"spawn position 8"],[9,o17243.o2013,o13351.o10420,"spawn position 9"],[10,o17243.o2013,o13351.o10420,"spawn position 10"],[11,o17243.o2013,o13351.o10420,"spawn position 11"],[12,o17243.o2013,o13351.o10420,"spawn position 12"]];
    
   
   private var o18945:Vector.<o16541>;
   
   private var o2215:Vector.<o18509>;
   
   function o16595()
   {
      o18945 = new Vector.<o16541>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc3_:* = null;
      name = param2.readUTF();
      o2215 = new Vector.<o18509>();
      _loc5_ = 0;
      while(_loc5_ < 12)
      {
         _loc4_ = param2.readShort();
         _loc3_ = o4519.o9721.o12831(_loc4_);
         o2215.push(new o18509(_loc3_.position.x,_loc3_.position.y));
         o4519.o8116.o11954.o11867(_loc3_);
         _loc5_++;
      }
      super.o949(param1);
      o4519.o13206.o16280(this,o16450.o9745,o2203);
   }
   
   private function o2203(param1:Event) : void
   {
      var _loc3_:int = o20712;
      var _loc4_:int = 0;
      var _loc2_:int = 333333;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,0,0,3,19,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,1,1,3,10,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,0,35,3,19,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,1,35,3,10,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,3,36,3,10,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,0,70,3,19,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,1,70,3,10,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,4,69,3,2,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,2,71,3,5,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,0,120,3,19,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,1,120,3,10,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,5,119,3,3,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,3,121,3,8,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,0,170,3,15,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,1,170,3,7,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,5,169,3,2,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,2,171,3,4,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,3,171,3,5,4,true,1));
      _loc4_++;
      o18945.push(new o16541(this,_loc3_ + _loc4_ * _loc2_,4,169,3,2,4,true,1));
   }
   
   public function o4526() : void
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o18945.length)
      {
         o18945[_loc1_].o4526();
         _loc1_++;
      }
   }
   
   public function o9337() : Boolean
   {
      var _loc1_:int = 0;
      _loc1_ = 0;
      while(_loc1_ < o18945.length)
      {
         if(o18945[_loc1_].o8289() == false)
         {
            return false;
         }
         _loc1_++;
      }
      return true;
   }
   
   override protected function o6249(param1:o18442) : void
   {
      param1.body.o13392(o2215[param1.o5973 % o2215.length]);
      param1.o13696.push(o5640);
   }
   
   override public function o19115() : void
   {
      var _loc1_:int = 0;
      if(o8289())
      {
         return;
      }
      o2215 = null;
      _loc1_ = 0;
      while(_loc1_ < o18945.length)
      {
         o18945[_loc1_].o19115();
         _loc1_++;
      }
      o18945 = null;
      super.o19115();
   }
   
   override public function o1710() : Boolean
   {
      return o4519.o8116.o2996.o20698(o18442).length < 45;
   }
}
