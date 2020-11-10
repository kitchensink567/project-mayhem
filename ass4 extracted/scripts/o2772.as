package
{
   import flash.display.Sprite;
   
   public class o2772 extends Sprite
   {
       
      
      public function o2772()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13187;
      }
   }
}

import flash.utils.ByteArray;

class o13187 extends o3047
{
   
   private static const ACTIVATE:int = 1;
   
   public static var o20272:Array = [[10,o17243.o19845,o13351.o10420,"name"],[0,o17243.o8809,o13351.o10420,"spawn behavior"],[1,o17243.o8809,o13351.o10420,"special flag"],[101,o17243.o2013,o13351.o10420,"spawn position 1"],[102,o17243.o2013,o13351.o10420,"spawn position 2"],[103,o17243.o2013,o13351.o10420,"spawn position 3"],[901,o17243.o2013,o13351.o10420,"spawn hole 1 bot"],[902,o17243.o2013,o13351.o10420,"spawn hole 1 top"],[903,o17243.o2013,o13351.o10420,"spawn hole 2 bot"],[904,o17243.o2013,o13351.o10420,"spawn hole 2 top"],[905,o17243.o2013,o13351.o10420,"spawn hole 3 bot"],[906,o17243.o2013,o13351.o10420,"spawn hole 3 top"],[2,o17243.o8809,o13351.o5585,"WAVE ONE type"],[3,o17243.float,o13351.o5585,"WAVE ONE start time"],[4,o17243.float,o13351.o5585,"WAVE ONE length"],[5,o17243.float,o13351.o5585,"WAVE ONE zombie count"],[6,o17243.float,o13351.o5585,"WAVE ONE close max"],[7,o17243.float,o13351.o5585,"WAVE ONE spawn ramp"],[12,o17243.o8809,o13351.o5585,"WAVE TWO type"],[13,o17243.float,o13351.o5585,"WAVE TWO start time"],[14,o17243.float,o13351.o5585,"WAVE TWO length"],[15,o17243.float,o13351.o5585,"WAVE TWO zombie count"],[16,o17243.float,o13351.o5585,"WAVE TWO close max"],[17,o17243.float,o13351.o5585,"WAVE TWO spawn ramp"]];
    
   
   private var o18945:Vector.<o16541>;
   
   private var o18614:int = 0;
   
   private var o12555:int = 0;
   
   private var o2215:Vector.<o18509>;
   
   private var o12712:Vector.<o14882>;
   
   private var o16199:Boolean = false;
   
   private var o7023:int = 0;
   
   function o13187()
   {
      o18945 = new Vector.<o16541>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc11_:int = 0;
      var _loc12_:* = null;
      var _loc16_:int = 0;
      var _loc17_:int = 0;
      var _loc6_:* = null;
      var _loc13_:* = null;
      var _loc3_:* = null;
      var _loc4_:* = null;
      var _loc7_:int = 0;
      var _loc9_:int = 0;
      var _loc8_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc10_:Number = NaN;
      var _loc5_:Number = NaN;
      o949(param1);
      name = param2.readUTF();
      o18614 = param2.readInt();
      o12555 = param2.readInt();
      o2215 = new Vector.<o18509>();
      _loc7_ = 0;
      while(_loc7_ < 3)
      {
         _loc11_ = param2.readShort();
         _loc12_ = o4519.o9721.o12831(_loc11_);
         if(!(_loc11_ == 0 || _loc12_ == null))
         {
            o2215.push(new o18509(_loc12_.position.x,_loc12_.position.y));
            o4519.o8116.o11954.o11867(_loc12_);
         }
         _loc7_++;
      }
      if(o2215.length == 0)
      {
         o2215.push(new o18509(this.position.x,this.position.y));
      }
      o12712 = new Vector.<o14882>();
      _loc7_ = 0;
      while(_loc7_ < 3)
      {
         _loc16_ = param2.readShort();
         _loc17_ = param2.readShort();
         _loc6_ = o4519.o9721.o12831(_loc16_);
         _loc13_ = o4519.o9721.o7833(_loc16_);
         _loc3_ = o4519.o9721.o12831(_loc17_);
         if(!(_loc16_ == 0 || _loc6_ == null))
         {
            _loc4_ = new o14882();
            _loc4_.init(_loc6_,_loc13_,_loc3_);
            o12712.push(_loc4_);
         }
         _loc7_++;
      }
      _loc7_ = 0;
      while(_loc7_ < 2)
      {
         _loc9_ = param2.readInt();
         _loc8_ = param2.readFloat();
         _loc15_ = param2.readFloat();
         _loc14_ = param2.readFloat();
         _loc10_ = param2.readFloat();
         _loc5_ = param2.readFloat();
         if(_loc14_ > 0)
         {
            o18945.push(new o16541(this,param1 + _loc7_ * 10000000 / 2,_loc9_,_loc8_,_loc15_,_loc14_,_loc10_,false,_loc5_,o18614,o12555));
         }
         _loc7_++;
      }
   }
   
   public function o4526() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(1);
      dispatchData(new o2149(this,_loc1_,true,false,1));
   }
   
   private function o2050() : void
   {
      var _loc1_:int = 0;
      if(o16199)
      {
         return;
      }
      o16199 = true;
      _loc1_ = 0;
      while(_loc1_ < o18945.length)
      {
         o18945[_loc1_].o4526();
         o18945[_loc1_].o16280(this,o14571.o19115,o3177);
         _loc1_++;
      }
   }
   
   private function o3177(param1:o7734) : void
   {
      if(o18945 == null)
      {
         return;
      }
      o18945.splice(o18945.indexOf(o16541(param1.o11493)),1);
      if(o18945.length == 0)
      {
         o19115();
      }
   }
   
   override public function o3370(param1:Class = null, param2:Number = 0, param3:o18509 = null, param4:int = 0, param5:int = 0, param6:Boolean = false, param7:Boolean = true, param8:Boolean = true, param9:int = 0, param10:int = -1) : o18442
   {
      var _loc11_:o18509 = o2215[o7023];
      var _loc12_:o14882 = null;
      if(o7023 < o12712.length)
      {
         _loc12_ = o12712[o7023];
      }
      if(_loc12_ && _loc12_.o8478 == false)
      {
         _loc12_.o20816();
      }
      o7023 = Number(o7023) + 1;
      if(o7023 >= o2215.length)
      {
         o7023 = 0;
      }
      return super.o3370(param1,param2,_loc11_,param4,param5,param6,param7,param8,param9,param10);
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 1))
      {
         o2050();
      }
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
         o18945[_loc1_].o12657(o14571.o19115,o3177);
         o18945[_loc1_].o19115();
         _loc1_++;
      }
      o18945 = null;
      super.o19115();
   }
}
