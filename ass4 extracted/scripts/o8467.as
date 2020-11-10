package
{
   import flash.display.Sprite;
   
   public class o8467 extends Sprite
   {
       
      
      public function o8467()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5962;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o5962 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[9,o17243.o2013,o13351.o10420,"gas room overlay"],[3,o17243.o2013,o13351.o10420,"gas pipe 1"],[4,o17243.o2013,o13351.o10420,"gas pipe 2"],[5,o17243.o2013,o13351.o10420,"gas pipe 3"],[6,o17243.o2013,o13351.o10420,"gas pipe 4"],[7,o17243.o2013,o13351.o10420,"gas pipe 5"],[8,o17243.o2013,o13351.o10420,"gas pipe 6"]];
   
   private static const o12292:Number = 0.035;
   
   private static const delta:Number = 0.03333333333333333;
    
   
   private var o19574:o4332;
   
   private var o2116:Vector.<o4332>;
   
   private var o12800:Vector.<o7331>;
   
   private var o10245:Array;
   
   private var o1646:o4332;
   
   private var o4171:Vector.<o17517>;
   
   private var o16377:int = 0;
   
   private var o20789:int = 0;
   
   private var o8154:Vector.<Number>;
   
   private var o7401:Boolean = false;
   
   private var o19091:int = -1;
   
   function o5962()
   {
      o2116 = new Vector.<o4332>();
      o12800 = new Vector.<o7331>();
      o4171 = new Vector.<o17517>();
      o8154 = Vector.<Number>([1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1]);
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      name = param2.readUTF();
      var _loc3_:int = param2.readShort();
      o19574 = o4519.o9721.o12831(_loc3_);
      o19574.o16990 = 99;
      o19574.o2158 = 9;
      o8154[15] = 0;
      o19574.colorTransform = o8154;
      _loc5_ = 0;
      while(_loc5_ < 6)
      {
         _loc4_ = param2.readShort();
         if(_loc4_ != 0)
         {
            o2116.push(o4519.o9721.o12831(_loc4_));
            o12800.push(o4519.o9721.o7833(_loc4_));
         }
         _loc5_++;
      }
      _loc5_ = 0;
      while(_loc5_ < o2116.length)
      {
         o2116[_loc5_].o16990 = 13;
         o12800[_loc5_].gotoAndStop(o12800[_loc5_].o12950() - 1);
         _loc5_++;
      }
      var _loc6_:Object = o12800[0].o10842("loop");
      o16377 = _loc6_.start;
      o20789 = _loc6_.end;
   }
   
   public function init(param1:int, param2:Array, param3:Vector.<o17517>) : void
   {
      this.o10245 = param2;
      this.o4171 = param3;
      o1051.o4767(this,0.1,o14143);
      o1051.o4767(this,0.0333333333333333,o13334);
      o1051.o4767(this,0.5,o4996);
   }
   
   public function o14143() : void
   {
      var _loc2_:int = 0;
      var _loc1_:Boolean = true;
      _loc2_ = 0;
      while(_loc2_ < o10245.length)
      {
         if(o10245[_loc2_].o8478)
         {
            _loc1_ = false;
            break;
         }
         _loc2_++;
      }
      if(_loc1_ && o4171.length > 0)
      {
         if(!o7401 && o19091 == -1)
         {
            o19091 = o1051.o9310(this,1.5,o8935);
         }
      }
      else
      {
         if(o7401)
         {
            o2595();
         }
         if(o19091 != -1)
         {
            o1051.o19115(o19091);
         }
      }
   }
   
   private function o8935() : void
   {
      var _loc1_:int = 0;
      o7401 = true;
      o19091 = -1;
      o4519.o8116.o4812.o4404.o10426.play(1);
      _loc1_ = 0;
      while(_loc1_ < o10245.length)
      {
         o10245[_loc1_].o5198();
         _loc1_++;
      }
      _loc1_ = 0;
      while(_loc1_ < o12800.length)
      {
         o12800[_loc1_].o11224(0,o16377 - 1);
         o12800[_loc1_].gotoAndPlay(0);
         _loc1_++;
      }
      o12800[0].o19926(this,o1490.o16612,o13863);
      _loc1_ = 0;
      while(_loc1_ < o4171.length)
      {
         if(o4171[_loc1_] == o4519.o32)
         {
            o13502.o18720();
         }
         _loc1_++;
      }
   }
   
   private function o2595() : void
   {
      var _loc1_:int = 0;
      o7401 = false;
      o12800[0].o12657(o1490.o16612,o13863);
      _loc1_ = 0;
      while(_loc1_ < o12800.length)
      {
         o12800[_loc1_].o11224(o20789,o12800[_loc1_].o12950());
         o12800[_loc1_].o12265 = false;
         _loc1_++;
      }
   }
   
   private function o4996() : void
   {
      var _loc2_:int = 0;
      var _loc1_:Number = NaN;
      if(o7401)
      {
         _loc2_ = 0;
         while(_loc2_ < o4171.length)
         {
            _loc1_ = o4171[_loc2_].o1589 * 0.035 * 0.5;
            o4519.o8116.o8361.o5725(o4171[_loc2_],o4016.o10062().initialise(_loc1_,8,null));
            _loc2_++;
         }
      }
   }
   
   public function o13334() : void
   {
      if(o7401)
      {
         var _loc1_:* = 15;
         var _loc2_:* = o8154[_loc1_] + 0.2 * 0.0333333333333333;
         o8154[_loc1_] = _loc2_;
         if(o8154[15] > 1)
         {
            o8154[15] = 1;
         }
         o19574.colorTransform = o8154;
      }
      else
      {
         _loc2_ = 15;
         _loc1_ = o8154[_loc2_] - 0.333333333333333 * 0.0333333333333333;
         o8154[_loc2_] = _loc1_;
         if(o8154[15] < 0)
         {
            o8154[15] = 0;
         }
         o19574.colorTransform = o8154;
      }
   }
   
   private function o13863(param1:Event) : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o12800.length)
      {
         o12800[_loc2_].o12265 = true;
         o12800[_loc2_].o11224(o16377,o20789);
         o12800[_loc2_].play();
         _loc2_++;
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o19574.o19115();
      o19574 = null;
      o2116 = null;
      o12800 = null;
      o10245 = null;
      o1646 = null;
      o4171 = null;
      o8154 = null;
      super.o19115();
   }
}
