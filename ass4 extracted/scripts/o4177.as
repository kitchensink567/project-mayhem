package
{
   import flash.display.Sprite;
   
   public class o4177 extends Sprite
   {
       
      
      public function o4177()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o6454;
      }
   }
}

import flash.utils.ByteArray;

class o6454 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"button image"],[3,o17243.o2013,o13351.o10420,"button trigger"],[4,o17243.o2013,o13351.o10420,"reactor image"],[5,o17243.o2013,o13351.o10420,"reactor base"],[6,o17243.o2013,o13351.o10420,"reactor top"]];
   
   private static const o16292:int = 16;
   
   private static const delta:Number = 0.03333333333333333;
    
   
   private var o14641:o7331;
   
   private var o11012:o10262;
   
   private var o7475:o4332;
   
   private var o7170:o7331;
   
   private var o1905:o4332;
   
   private const o11991:Number = 10.775662801812992;
   
   private const o20654:Number = 1.5707963267948966;
   
   private var o7687:Number = 10.775662801812992;
   
   private var o13612:Boolean = false;
   
   private var o7222:Boolean = false;
   
   private var o86:Boolean = false;
   
   private var o9933:Number = 0;
   
   private var o16554:int = 0;
   
   private var o1740:o4399;
   
   private const o18052:Number = 340;
   
   private const o5190:Number = 7;
   
   public var o4375:Function = null;
   
   public var o19286:Boolean = false;
   
   function o6454()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      var _loc8_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      o14641 = o4519.o9721.o7833(_loc4_);
      o7475 = o4519.o9721.o12831(_loc9_);
      o7170 = o4519.o9721.o7833(_loc8_);
      o7170.o5388("on");
      o1905 = o4519.o9721.o12831(_loc7_);
      o11012 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc10_:o17761 = new o17761(o11012.o2535);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
      _loc10_.o14486(_loc5_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o32,o8723.o32,true);
      _loc3_.o10289 = _loc10_.id;
      o11012.o14230(_loc3_);
      o14641.o3030("closed");
      o14641.o12265 = true;
      o14641.play();
      o1740 = o4519.o13206.o16821(0,-1);
      o16554 = o1051.o4767(this,0.0333333333333333,o7664);
   }
   
   private function o7664() : void
   {
      if(o13612)
      {
         o7687 = o7687 - 1.5707963267949 * 0.0333333333333333;
         if(o7687 < 0)
         {
            o7687 = 0;
            o4519.o13206.o754(o1740);
            o1051.o19115(o16554);
         }
      }
      o7475.rotation = o7475.rotation + o7687 * 0.0333333333333333;
      var _loc2_:Number = o20852.o928(o4519.o32.body.position.x,o4519.o32.body.position.y,this.o7475.position.x,this.o7475.position.y);
      if(_loc2_ < 340 * 340)
      {
         o1740.o15771 = (1 - _loc2_ / (340 * 340)) * 7 * (o7687 / 10.775662801813);
      }
      else
      {
         o1740.o15771 = 0;
      }
      var _loc1_:* = Number(8 / _loc2_ * 10000);
      if(_loc1_ > 0.2)
      {
         if(!o7222)
         {
            o18545();
         }
         else
         {
            if(_loc1_ > 1)
            {
               _loc1_ = 1;
            }
            o4519.o8116.o6169.o2549(o9933,_loc1_);
         }
      }
      else if(o7222)
      {
         o7375();
      }
   }
   
   public function o7514() : void
   {
      o4519.o8116.o4812.o10460.o10934.play(1);
      o11012.o16280(this,o8273.o7087,o46);
   }
   
   public function o15879() : void
   {
      o11012.o12657(o8273.o7087,o46);
   }
   
   private function o46(param1:o663) : void
   {
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(16);
      dispatchData(new o2149(this,_loc2_,true,false));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 16))
      {
         o17020();
      }
   }
   
   private function o17020() : void
   {
      if(o19286)
      {
         return;
      }
      o19286 = true;
      o14641.o5388("open");
      o7170.o5388("off");
      o13612 = true;
      o7222 = false;
      o7375();
      o86 = true;
      o4519.o8116.o4812.o10460.o17020.play(1);
      o11012.o12657(o8273.o7087,o46);
      o11012.o19115();
      if(o4375 != null)
      {
         o4375();
      }
   }
   
   public function o13953() : Number
   {
      return o7475.position.x;
   }
   
   public function o10034() : Number
   {
      return o7475.position.y;
   }
   
   private function o18545() : void
   {
      var _loc1_:* = null;
      if(o86)
      {
         return;
      }
      if(!o7222)
      {
         o4519.o8116.o6169.o1529(o9933);
         _loc1_ = new Date();
         o9933 = _loc1_.valueOf();
         o4519.o8116.o8756.o10145.play(0.2,2147483647,0,false,null,0,0,o9933);
         o7222 = true;
      }
   }
   
   private function o7375() : void
   {
      o4519.o8116.o6169.o1529(o9933);
      o7222 = false;
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o4375 = null;
      if(o1740)
      {
         o4519.o13206.o754(o1740);
      }
      o1740 = null;
      o14641.o19115();
      o14641 = null;
      o11012.o19115();
      o11012 = null;
      o7475.o19115();
      o7475 = null;
      o7170.o19115();
      o7170 = null;
      o1905.o19115();
      o1905 = null;
      super.o19115();
   }
}
