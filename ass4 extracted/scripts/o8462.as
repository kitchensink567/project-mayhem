package
{
   import flash.display.Sprite;
   
   public class o8462 extends Sprite
   {
       
      
      public function o8462()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4571;
      }
   }
}

import flash.utils.ByteArray;

class o4571 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"roof to hide"],[2,o17243.o2013,o13351.o10420,"hide area"],[4,o17243.o2013,o13351.o5585,"extra roof to hide"],[5,o17243.float,o13351.o5585,"fade in/out time"],[6,o17243.o8809,o13351.o5585,"spawn event ID"]];
   
   private static const o17972:int = 1;
    
   
   private var o15782:o4332;
   
   private var o4617:o4332;
   
   private var o5752:o10262;
   
   private var o8630:Number = 0;
   
   private var o13743:int = 0;
   
   private var o10235:int = -1;
   
   private var o697:Boolean = false;
   
   function o4571()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc10_:* = undefined;
      var _loc5_:* = undefined;
      var _loc9_:* = undefined;
      var _loc8_:* = null;
      var _loc3_:* = null;
      var _loc6_:int = param2.readShort();
      var _loc11_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o8630 = param2.readFloat();
      if(param2.bytesAvailable > 0)
      {
         o13743 = param2.readInt();
      }
      o15782 = o4519.o9721.o12831(_loc6_);
      if(o15782 == null)
      {
         _loc10_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
         o15782 = o4519.o8116.o11954.o10869();
         o15782.o16396 = o17541.o13617(_loc10_);
         o15782.position = new o2415();
         o15782.o16990 = 110;
         o4519.o8116.o11954.o9226(o15782);
      }
      if(_loc4_ != 0)
      {
         o4617 = o4519.o9721.o12831(_loc4_);
      }
      if(_loc11_ != 0)
      {
         o5752 = o4519.o8116.o9869.o1968(0,0,false);
         _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc11_].o6041[0].id);
         _loc9_ = o12075.o7521(_loc5_);
         var _loc13_:int = 0;
         var _loc12_:* = _loc9_;
         for each(var _loc7_ in _loc9_)
         {
            _loc8_ = new o17761(o5752.o2535);
            _loc8_.o14486(_loc7_);
            _loc3_ = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
            _loc3_.o10289 = _loc8_.id;
            o5752.o14230(_loc3_);
         }
         o5752.o16280(this,o8273.o7087,o7087);
      }
   }
   
   private function o7087(param1:o663) : void
   {
      o5752.o12657(o8273.o7087,o7087);
      o17324();
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      dispatchData(new o2149(this,_loc2_,true));
   }
   
   private function o17324() : void
   {
      if(o697)
      {
         return;
      }
      o697 = true;
      o5752.o12657(o8273.o7087,o17324);
      if(o13743 != 0)
      {
         o4519.o13206.dispatchData(new o11210(o13743));
      }
      if(o8630 <= 0)
      {
         o4519.o8116.o11954.o17454(o15782);
         if(o4617)
         {
            o4519.o8116.o11954.o17454(o4617);
         }
         o19115();
      }
      else
      {
         new o6880(o15782).o20013(o8630,true);
         if(o4617)
         {
            new o6880(o4617).o20013(o8630,true);
         }
         o10235 = o1051.o9310(this,o8630 + 0.01,o19115);
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 1))
      {
         o17324();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o15782.o19115();
      if(o4617)
      {
         o4617.o19115();
      }
      if(o5752)
      {
         o5752.o19115();
      }
      o1051.o19115(o10235);
      super.o19115();
   }
}
