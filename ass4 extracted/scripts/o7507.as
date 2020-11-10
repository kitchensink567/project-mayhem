package
{
   import flash.display.Sprite;
   
   public class o7507 extends Sprite
   {
       
      
      public function o7507()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o531;
      }
   }
}

import flash.utils.ByteArray;

class o531 extends o9347
{
   
   public static var o20272:Array = [[6,o17243.o19845,o13351.o5585,"name"],[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.o2013,o13351.o10420,"open trigger area"],[4,o17243.float,o13351.o5585,"delay before opening"],[5,o17243.o2013,o13351.o5585,"roof to hide"]];
   
   private static const o9161:int = 1;
    
   
   private var o406:o10262;
   
   private var o7536:Number;
   
   private var o16245:o4332;
   
   public var o16813;
   
   private var o14272:int = 0;
   
   private var o5959:int = 0;
   
   private var o11180:int = -1;
   
   private var o2953:Boolean = false;
   
   private var o14553:Boolean = false;
   
   function o531()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc10_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o7536 = param2.readFloat();
      var _loc6_:int = param2.readShort();
      o2953 = false;
      super.o2348(param1,_loc10_,_loc7_,o8723.o10217,o8723.o10217,0);
      o16166.o12265 = false;
      o16166.o3030("close");
      o16166.o5388("close");
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o17761 = new o17761(o406.o2535);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
      _loc8_.o14486(_loc5_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32 | o8723.o2823,o8723.o32 | o8723.o2823,true);
      _loc3_.o10289 = _loc8_.id;
      o406.o14230(_loc3_);
      _loc3_.o16280(this,o2841.o1516,o46);
      _loc3_.o16280(this,o2841.o15204,o11631);
      var _loc9_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
      o16245 = o4519.o8116.o11954.o10869();
      o16245.o16396 = o17541.o13617(_loc9_);
      o16245.position = new o2415();
      o16245.o16990 = 110;
      o4519.o8116.o11954.o9226(o16245);
   }
   
   private function o46(param1:o4217) : void
   {
      var _loc2_:* = null;
      if(o4519.o8116.o2996.o14389(param1.o11541.body) is o17517)
      {
         o14272 = Number(o14272) + 1;
      }
      if(o4519.o8116.o2996.o14389(param1.o11541.body) is o18442)
      {
         o5959 = Number(o5959) + 1;
      }
      if(o8502() && !o2953)
      {
         o1051.o9310(this,o7536,o16489);
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o13059.play(0.5,0,0,false,_loc2_.o10088());
         o1051.o19115(o11180);
         o11180 = -1;
      }
   }
   
   private function o11631(param1:o20312) : void
   {
      if(o4519.o8116.o2996.o14389(param1.o11541.body) is o17517)
      {
         o14272 = Number(o14272) - 1;
      }
      if(o4519.o8116.o2996.o14389(param1.o11541.body) is o18442)
      {
         o5959 = Number(o5959) - 1;
      }
      if(o14272 < 0)
      {
         trace("LabDoor avatar count negative: THIS SHOULDNT BE POSSIBRA");
         o14272 = 0;
      }
      if(o5959 < 0)
      {
         trace("LabDoor enemy count negative: THIS SHOULDNT BE POSSIBRA");
         o5959 = 0;
      }
      if(!o8502() && o2953)
      {
         if(o11180 == -1)
         {
            o11180 = o1051.o9310(this,o7536,close);
         }
      }
   }
   
   private function o8502() : Boolean
   {
      return o14272 > 0 || o5959 > 0 && o14553;
   }
   
   private function o16489() : void
   {
      var _loc1_:* = null;
      var _loc2_:* = null;
      if(o14553 == false)
      {
         _loc1_ = new ByteArray();
         _loc1_.writeByte(1);
         dispatchData(new o2149(this,_loc1_,true));
      }
      else
      {
         if(o2953)
         {
            return;
         }
         o2953 = true;
         body.o15838(0);
         o16166.o11543();
         o16166.play();
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o5985.play(0.5,0,0,false,_loc2_.o10088());
      }
   }
   
   private function close() : void
   {
      if(!o2953)
      {
         return;
      }
      if(!body || !o6691)
      {
         return;
      }
      o2953 = false;
      body.o15838(o8723.o10217);
      o16166.o6343();
      o16166.play();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o5985.play(0.5,0,0,false,_loc1_.o10088());
   }
   
   private function o2705() : void
   {
      if(o14553)
      {
         return;
      }
      o14553 = true;
      new o6880(o16245).o20013(1,true);
      dispatchData(new o11702(o11702.o19581,this));
      if(o16813)
      {
         o16813.o4526();
      }
      o16489();
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 1))
      {
         o2705();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o16245.o19115();
      o16813 = null;
      super.o19115();
   }
}
