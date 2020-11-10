package
{
   import flash.display.Sprite;
   
   public class o17782 extends Sprite
   {
       
      
      public function o17782()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o9724;
      }
   }
}

import flash.utils.ByteArray;

class o9724 extends o3047
{
   
   public static var o20272:Array = [[102,o17243.o8809,o13351.o10420,"spawner flag"],[1,o17243.o2013,o13351.o10420,"spawn trigger"],[100,o17243.o8809,o13351.o10420,"spawn behavior"],[101,o17243.o8809,o13351.o10420,"special flag"],[111,o17243.o2013,o13351.o10420,"spawn position 1"],[112,o17243.o2013,o13351.o10420,"spawn position 2"],[113,o17243.o2013,o13351.o10420,"spawn position 3"],[114,o17243.o2013,o13351.o10420,"spawn position 4"],[115,o17243.o2013,o13351.o10420,"spawn position 5"],[116,o17243.o2013,o13351.o10420,"spawn position 6"],[2,o17243.o8809,o13351.o5585,"WAVE ONE type"],[3,o17243.float,o13351.o5585,"WAVE ONE start time"],[4,o17243.float,o13351.o5585,"WAVE ONE length"],[5,o17243.float,o13351.o5585,"WAVE ONE zombie count"],[6,o17243.float,o13351.o5585,"WAVE ONE close max"],[7,o17243.float,o13351.o5585,"WAVE ONE spawn ramp"],[12,o17243.o8809,o13351.o5585,"WAVE TWO type"],[13,o17243.float,o13351.o5585,"WAVE TWO start time"],[14,o17243.float,o13351.o5585,"WAVE TWO length"],[15,o17243.float,o13351.o5585,"WAVE TWO zombie count"],[16,o17243.float,o13351.o5585,"WAVE TWO close max"],[17,o17243.float,o13351.o5585,"WAVE TWO spawn ramp"],[22,o17243.o8809,o13351.o5585,"WAVE THREE type"],[23,o17243.float,o13351.o5585,"WAVE THREE start time"],[24,o17243.float,o13351.o5585,"WAVE THREE length"],[25,o17243.float,o13351.o5585,"WAVE THREE zombie count"],[26,o17243.float,o13351.o5585,"WAVE THREE close max"],[27,o17243.float,o13351.o5585,"WAVE THREE spawn ramp"],[32,o17243.o8809,o13351.o5585,"WAVE FOUR type"],[33,o17243.float,o13351.o5585,"WAVE FOUR start time"],[34,o17243.float,o13351.o5585,"WAVE FOUR length"],[35,o17243.float,o13351.o5585,"WAVE FOUR zombie count"],[36,o17243.float,o13351.o5585,"WAVE FOUR close max"],[37,o17243.float,o13351.o5585,"WAVE FOUR spawn ramp"],[42,o17243.o8809,o13351.o5585,"WAVE FIVE type"],[43,o17243.float,o13351.o5585,"WAVE FIVE start time"],[44,o17243.float,o13351.o5585,"WAVE FIVE length"],[45,o17243.float,o13351.o5585,"WAVE FIVE zombie count"],[46,o17243.float,o13351.o5585,"WAVE FIVE close max"],[47,o17243.float,o13351.o5585,"WAVE FIVE spawn ramp"]];
   
   private static const o16292:int = 1;
    
   
   private var o18945:Vector.<o16541>;
   
   private var o18614:int = 0;
   
   private var o12555:int = 0;
   
   private var o406:o10262;
   
   private var o2215:Vector.<o18509>;
   
   private var o16199:Boolean = false;
   
   private var o7023:int = 0;
   
   function o9724()
   {
      o18945 = new Vector.<o16541>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc12_:int = 0;
      var _loc13_:* = null;
      var _loc7_:int = 0;
      var _loc11_:int = 0;
      var _loc8_:Number = NaN;
      var _loc17_:Number = NaN;
      var _loc15_:Number = NaN;
      var _loc14_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc9_:* = null;
      var _loc3_:* = null;
      o949(param1);
      o4951 = param2.readInt();
      var _loc16_:int = param2.readShort();
      o18614 = param2.readInt();
      o12555 = param2.readInt();
      o2215 = new Vector.<o18509>();
      _loc7_ = 0;
      while(_loc7_ < 6)
      {
         _loc12_ = param2.readShort();
         _loc13_ = o4519.o9721.o12831(_loc12_);
         if(!(_loc12_ == 0 || _loc13_ == null))
         {
            o2215.push(new o18509(_loc13_.position.x,_loc13_.position.y));
            o4519.o8116.o11954.o11867(_loc13_);
         }
         _loc7_++;
      }
      if(o2215.length == 0)
      {
         o2215.push(new o18509(this.position.x,this.position.y));
      }
      _loc7_ = 0;
      while(_loc7_ < 5)
      {
         _loc11_ = param2.readInt();
         _loc8_ = param2.readFloat();
         _loc17_ = param2.readFloat();
         _loc15_ = param2.readFloat();
         _loc14_ = param2.readFloat();
         _loc4_ = param2.readFloat();
         if(_loc15_ > 0)
         {
            o18945.push(new o16541(this,param1 + _loc7_ * 10000000 / 5,_loc11_,_loc8_,_loc17_,_loc15_,_loc14_,false,_loc4_,o18614,o12555));
         }
         _loc7_++;
      }
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc16_].o6041[0].id);
      var _loc10_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc19_:int = 0;
      var _loc18_:* = _loc10_;
      for each(var _loc6_ in _loc10_)
      {
         _loc9_ = new o17761(o406.o2535);
         _loc9_.o14486(_loc6_);
         _loc3_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365 | o8723.o14328,o17517.o6365 | o8723.o14328,true);
         _loc3_.o10289 = _loc9_.id;
         o406.o14230(_loc3_);
      }
      o406.o16280(this,o8273.o7087,o46);
   }
   
   private function o46(param1:o663) : void
   {
      o406.o12657(o8273.o7087,o46);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      dispatchData(new o2149(this,_loc2_,true,false,1));
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
      o406.o19115();
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
