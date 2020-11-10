package
{
   import flash.display.Sprite;
   
   public class o16962 extends Sprite
   {
       
      
      public function o16962()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o9942;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o9942 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"truck"],[9,o17243.o2013,o13351.o10420,"doors"],[8,o17243.o2013,o13351.o10420,"shadow"],[4,o17243.o2013,o13351.o10420,"physics upper"],[3,o17243.o2013,o13351.o10420,"physics lower"],[5,o17243.o2013,o13351.o10420,"destroyed image"],[6,o17243.o2013,o13351.o10420,"medic anim"],[7,o17243.o2013,o13351.o10420,"explosion positions"]];
    
   
   private var o13568:o4332;
   
   private var o11828:o7331;
   
   private var o9717:o4332;
   
   private var o14644:o4332;
   
   private var o4841:o4332;
   
   private var o19668:int;
   
   private var o6372:int;
   
   private var o7932:o4332;
   
   private var o6031:o7331;
   
   private var o5964:Boolean = true;
   
   private var o3725:Vector.<o18509>;
   
   private var o5691:Vector.<o18509>;
   
   function o9942()
   {
      o3725 = new Vector.<o18509>();
      o5691 = new Vector.<o18509>();
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.effects.explosion.Bigger");
      return _loc1_;
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:int = 0;
      super.o16955(param1);
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc8_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      var _loc13_:int = param2.readShort();
      var _loc10_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      var _loc5_:int = param2.readShort();
      o13568 = o4519.o9721.o12831(_loc4_);
      o11828 = o4519.o9721.o7833(_loc4_);
      o11828.o12265 = true;
      o11828.play();
      o9717 = o4519.o9721.o12831(_loc8_);
      o14644 = o4519.o9721.o12831(_loc9_);
      o4841 = o4519.o9721.o12831(_loc3_);
      o4841.o9824 = false;
      var _loc7_:int = 4294967295;
      o19668 = o4519.o9721.o3865(Vector.<int>([_loc13_]),o8723.o18180,_loc7_);
      o6372 = o4519.o9721.o3865(Vector.<int>([_loc10_]),o8723.o18180,_loc7_ ^ o8723.o619);
      o7932 = o4519.o9721.o12831(_loc12_);
      o6031 = o4519.o9721.o7833(_loc12_);
      o5964 = false;
      o6031.o16280(this,o1490.o16612,o15600);
      o18783();
      var _loc11_:o13848 = o4519.o9721.o7352[_loc5_];
      _loc6_ = 0;
      while(_loc6_ < _loc11_.o6041.length)
      {
         if(_loc6_ + 3 >= _loc11_.o6041.length)
         {
            o5691.push(new o18509(_loc11_.o6041[_loc6_].x,_loc11_.o6041[_loc6_].y));
         }
         else
         {
            o3725.push(new o18509(_loc11_.o6041[_loc6_].x,_loc11_.o6041[_loc6_].y));
         }
         _loc6_++;
      }
   }
   
   public function o20168() : void
   {
      o1051.o4767(this,0.2,o19344,10,true);
      o1051.o9310(this,0.2,o14055);
      o1051.o9310(this,0.8,o14055);
      o1051.o9310(this,1.6,o14055);
      o1051.o9310(this,1.8,end);
   }
   
   private function o19344() : void
   {
      var _loc2_:o18509 = o3725[int(Math.random() * o3725.length)];
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion.Bigger"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = _loc2_.x;
         _loc1_.o6691.position.y = _loc2_.y;
         _loc1_.o6691.rotation = Math.random() * 3.14159265358979 * 2;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
      _loc2_ = o5691[int(Math.random() * o5691.length)];
      _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion.Bigger"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = _loc2_.x;
         _loc1_.o6691.position.y = _loc2_.y;
         _loc1_.o6691.rotation = Math.random() * 3.14159265358979 * 2;
         _loc1_.o6691.o16990 = o11381.o1041;
      }
   }
   
   private function o14055() : void
   {
      var _loc1_:o257 = new o257(this.o13568.position.x,this.o13568.position.y);
      o4519.o8116.o4812.o20325.o19111.play(0.7,0,0,false,_loc1_.o10088());
   }
   
   private function end() : void
   {
      o13568.o19115();
      o11828.o19115();
      o9717.o19115();
      o14644.o19115();
      o4841.o9824 = false;
      o4519.o9721.o2075.o471(o4841);
      o4841.o19115();
      o4519.o9721.o5294(o19668);
      o4519.o9721.o5294(o6372);
      o7932.o19115();
      o6031.o19115();
      o19115();
   }
   
   private function o15600(param1:Event) : void
   {
      if(o5964)
      {
         o1051.o9310(this,4,o18783);
      }
      else
      {
         o1051.o9310(this,9,o18783);
      }
   }
   
   private function o18783() : void
   {
      if(o5964)
      {
         o6031.o3030("movein");
         o6031.play();
      }
      else
      {
         o6031.o3030("moveout");
         o6031.play();
      }
      o5964 = !o5964;
   }
   
   override public function o19115() : void
   {
      o13568 = null;
      o11828 = null;
      o7932 = null;
      o6031 = null;
      o14644 = null;
      o4841 = null;
      o3725 = null;
      o5691 = null;
      super.o19115();
   }
}
