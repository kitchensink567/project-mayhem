package
{
   import flash.display.Sprite;
   
   public class o9973 extends Sprite
   {
       
      
      public function o9973()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o14066;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o14066 extends o3047
{
   
   private static const ACTIVATE:int = 1;
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.float,o13351.o10420,"budget"],[3,o17243.o2013,o13351.o5585,"trigger area"],[4,o17243.float,o13351.o5585,"time"],[5,o17243.o8809,o13351.o5585,"special flag"],[6,o17243.o14773,o13351.o5585,"spawn single boss"]];
    
   
   private var o9172:Number;
   
   private var time:Number;
   
   private var o406:o10262;
   
   private var o12555:int = 0;
   
   private var o9325:int = -1;
   
   private var o15715:int = 0;
   
   private var o11340:Boolean = false;
   
   private var o16199:Boolean = false;
   
   public var o10053:Function = null;
   
   public var o6774:Boolean = true;
   
   public var o20949:Boolean = false;
   
   function o14066()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc4_:* = undefined;
      var _loc7_:* = undefined;
      var _loc6_:* = null;
      var _loc3_:* = null;
      name = param2.readUTF();
      o9172 = param2.readFloat();
      o15715 = param2.readShort();
      time = param2.readFloat();
      o12555 = param2.readInt();
      if(param2.bytesAvailable)
      {
         o11340 = param2.readBoolean();
      }
      super.o949(param1);
      if(o15715 != 0)
      {
         o406 = o4519.o8116.o9869.o1968(0,0,false);
         _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[o15715].o6041[0].id);
         _loc7_ = o12075.o7521(_loc4_);
         var _loc9_:int = 0;
         var _loc8_:* = _loc7_;
         for each(var _loc5_ in _loc7_)
         {
            _loc6_ = new o17761(o406.o2535);
            _loc6_.o14486(_loc5_);
            _loc3_ = o4519.o8116.o20600.o15803(o8723.o14409,o8723.o32,o8723.o32,true);
            _loc3_.o10289 = _loc6_.id;
            o406.o14230(_loc3_);
         }
         o20949 = true;
         o406.o16280(this,o8273.o7087,o46);
      }
      o16280(this,o16450.o9745,o14780);
   }
   
   private function o14780(param1:Event) : void
   {
      if(o15715 != 0)
      {
         if(time != 0)
         {
            o9325 = o1051.o9310(this,time,o4526);
         }
      }
   }
   
   private function o46(param1:o663) : void
   {
      if(o20949 == false)
      {
         return;
      }
      o406.o12657(o8273.o7087,o46);
      if(time != 0)
      {
         o9325 = o1051.o9310(this,time,o4526);
      }
      else
      {
         o4526();
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
      var _loc3_:Boolean = false;
      if(o16199)
      {
         return;
      }
      if(o10053 != null)
      {
         o10053();
      }
      o16199 = true;
      if(o406)
      {
         o406.o12657(o8273.o7087,o46);
      }
      var _loc2_:Vector.<o20743> = o10176.o8930(o9172,-1,-1,o11340);
      _loc1_ = 0;
      while(_loc1_ < _loc2_.length)
      {
         _loc3_ = _loc2_[_loc1_].o1673;
         if(o6774 == false)
         {
            _loc3_ = false;
         }
         o3370(_loc2_[_loc1_].o18948,_loc2_[_loc1_].grade,position,0,o12555,true,_loc3_,_loc2_[_loc1_].o17014,_loc2_[_loc1_].o5751);
         _loc1_++;
      }
      o19115();
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
      if(o8289())
      {
         return;
      }
      if(o406)
      {
         o406.o19115();
      }
      o1051.o19115(o9325);
      super.o19115();
   }
}
