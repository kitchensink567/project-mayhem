package
{
   import flash.display.Sprite;
   
   public class o9251 extends Sprite
   {
       
      
      public function o9251()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2355;
      }
   }
}

import flash.display.Sprite;
import flash.events.Event;
import flash.geom.Rectangle;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o2355 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[9,o17243.o8809,o13351.o10420,"stats group (hp,repair time etc)"],[3,o17243.o2013,o13351.o10420,"physics barrier"],[4,o17243.o2013,o13351.o10420,"image lower"],[5,o17243.o2013,o13351.o10420,"image upper"],[6,o17243.o2013,o13351.o10420,"repair asset and direction"]];
   
   protected static const o9272:int = 1;
   
   protected static const o6500:int = 4;
    
   
   private var o12684:Number;
   
   private var o7528:Number;
   
   private var o9469:Number;
   
   private var o11486:Number;
   
   private var o20907:String;
   
   private var o13292:int = 1;
   
   private var o10030:int = 1;
   
   private var o4646:int;
   
   private var o10750:int;
   
   private var o13505:Vector.<o18509>;
   
   private var o8779:Dictionary;
   
   public var o15027:Function = null;
   
   function o2355()
   {
      o4646 = o8723.o10217 ^ o8723.o17798;
      o10750 = o8723.o32 | o8723.o3732;
      o13505 = new Vector.<o18509>();
      o8779 = new Dictionary();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc5_:int = param2.readInt();
      var _loc7_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      if(!(int(_loc5_) - 1))
      {
         o12684 = 7000;
         o9469 = 0.5;
         o11486 = 0.15;
      }
      o8199 = o12684;
      super.o2348(param1,_loc7_,_loc6_,o4646,o8723.o32 | o8723.o17079 | o8723.o7778 | o8723.o42,o12684,_loc4_);
      o16166.o12265 = false;
      o4775.o12265 = false;
      body.o16280(this,o8273.o7087,o7087);
      body.o16280(this,o8273.o20083,o20083);
      o1743(_loc3_,_loc7_);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc2_:Array = [1,0.75,0.66,0.5];
      o8199 = o12684 * Math.sqrt(o10176.o13327()) * _loc2_[o4519.o13206.o2685.o7629() - 1];
      o1589 = o12684 * Math.sqrt(o10176.o13327()) * _loc2_[o4519.o13206.o2685.o7629() - 1];
   }
   
   override public function set o11243(param1:Number) : void
   {
      var _loc5_:* = null;
      var _loc4_:* = 0;
      if(param1 > o1589)
      {
         param1 = o1589;
      }
      else if(param1 <= -o1589 * o11486)
      {
         param1 = -o1589 * o11486 + 0.01;
      }
      var _loc2_:* = param1 > o11243;
      if(o11243 > 0 && param1 <= 0)
      {
         body.o15838(o10750);
         _loc5_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14442.play(1,0,0,false,_loc5_.o10088());
         o4519.o13206.o16821(8,0.3);
      }
      else if(o11243 <= 0 && param1 > 0)
      {
         body.o15838(o4646);
         _loc5_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o1795.play(0.7,0,0,false,_loc5_.o10088());
      }
      var _loc3_:int = 1 + int((1 - param1 / o1589) * 4);
      if(_loc3_ > 4 + 1)
      {
         _loc3_ = 4 + 1;
      }
      if(_loc3_ != o13292)
      {
         o13292 = _loc3_;
         _loc4_ = _loc3_;
         if(_loc2_)
         {
            _loc4_++;
            o16166.o6343();
            o4775.o6343();
            _loc5_ = new o257(this.o6691.position.x,this.o6691.position.y);
            o4519.o8116.o4812.o4404.o16453.play(0.7,0,0,false,_loc5_.o10088());
         }
         else
         {
            o16166.o11543();
            o4775.o11543();
            _loc5_ = new o257(this.o6691.position.x,this.o6691.position.y);
            o4519.o8116.o4812.o4404.o12307.play(0.7,0,0,false,_loc5_.o10088());
         }
         if(o10030 != _loc4_)
         {
            o16166.o3030("damage" + _loc4_);
            o4775.o3030("damage" + _loc4_);
         }
         o16166.play();
         o4775.play();
         o10030 = _loc4_;
      }
      o8199 = param1;
      if(o15027 != null)
      {
         o15027(name,o8199,o1589);
      }
   }
   
   private function o11860() : void
   {
      if(o11243 >= o1589)
      {
         return;
      }
      o11243 = o11243 + o1589 * o11486;
      o15972();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o15083.play(1,0,200,false,_loc1_.o10088());
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         if(o8779[_loc2_] == null)
         {
            o8779[_loc2_] = o1051.o4767(this,o9469,o11860);
         }
      }
   }
   
   private function o20083(param1:o18091) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         if(o8779[_loc2_] != null)
         {
            o1051.o19115(o8779[_loc2_]);
            delete o8779[_loc2_];
         }
      }
   }
   
   private function o1743(param1:int, param2:int) : void
   {
      var _loc3_:int = 0;
      var _loc10_:int = 0;
      var _loc8_:o4332 = o4519.o9721.o12831(param1);
      o7528 = _loc8_.rotation;
      o20907 = _loc8_.o16396.assetID;
      o4519.o8116.o11954.o11867(_loc8_);
      var _loc4_:o13848 = o4519.o9721.o7352[param2];
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(_loc4_.o6041[0].id);
      var _loc6_:Sprite = new Sprite();
      _loc6_.graphics.beginFill(16777215,1);
      var _loc11_:Boolean = true;
      var _loc13_:int = 0;
      var _loc12_:* = _loc5_;
      for each(var _loc7_ in _loc5_)
      {
         if(_loc11_)
         {
            _loc6_.graphics.moveTo(_loc7_.x,_loc7_.y);
            _loc11_ = false;
         }
         else
         {
            _loc6_.graphics.lineTo(_loc7_.x,_loc7_.y);
         }
      }
      _loc6_.graphics.endFill();
      o4519.o8116.stage.addChild(_loc6_);
      o13505.splice(0,4294967295);
      var _loc9_:Rectangle = _loc6_.getBounds(_loc6_);
      _loc3_ = _loc9_.left;
      while(_loc3_ <= _loc9_.right)
      {
         _loc10_ = _loc9_.top;
         while(_loc10_ <= _loc9_.bottom)
         {
            if(_loc6_.hitTestPoint(_loc3_,_loc10_,true))
            {
               o13505.push(new o18509(_loc3_,_loc10_));
            }
            _loc10_ = _loc10_ + 10;
         }
         _loc3_ = _loc3_ + 10;
      }
      o4519.o8116.stage.removeChild(_loc6_);
   }
   
   private function o15972() : void
   {
      var _loc1_:o18509 = o13505[int(o13505.length * Math.random())];
      var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,[o20907,o11381.o8950]) as o2130;
      if(_loc2_ != null)
      {
         _loc2_.o6691.position.x = _loc1_.x;
         _loc2_.o6691.position.y = _loc1_.y;
         _loc2_.o6691.rotation = o7528 - 3.14159265358979 / 8 + 3.14159265358979 / 4 * Math.random();
      }
   }
   
   override public function o19115() : void
   {
      o13505 = null;
      o8779 = null;
      o15027 = null;
      super.o19115();
   }
}
