package
{
   import flash.display.Sprite;
   
   public class o1861 extends Sprite
   {
       
      
      public function o1861()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19561;
      }
   }
}

import flash.utils.ByteArray;

class o19561 extends o9347
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.o2013,o13351.o10420,"door open trigger area"],[4,o17243.o14773,o13351.o5585,"locked to start"]];
    
   
   private var o406:o10262;
   
   private var o13228:Boolean = true;
   
   private var o14272:int = 0;
   
   private var o5959:int = 0;
   
   private var o2953:Boolean = false;
   
   function o19561()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc9_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc6_:Boolean = param2.readBoolean();
      super.o2348(param1,_loc9_,_loc7_,o8723.o10217,o8723.o10217,0);
      o16166.o12265 = false;
      o16166.o5388(!!_loc6_?"locked":"unlocked");
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o17761 = new o17761(o406.o2535);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
      _loc8_.o14486(_loc5_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o5479,o8723.o32 | o8723.o2823,o8723.o32 | o8723.o2823,true);
      _loc3_.o10289 = _loc8_.id;
      o406.o14230(_loc3_);
      o406.o16280(this,o8273.o7087,o46);
      o406.o16280(this,o8273.o20083,o11631);
   }
   
   override public function o19115() : void
   {
      super.o19115();
   }
   
   private function o46(param1:o663) : void
   {
      var _loc2_:Boolean = false;
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         _loc2_ = true;
         o14272 = Number(o14272) + 1;
      }
      if(o4519.o8116.o2996.o14389(param1.o11541) is o18442)
      {
         o5959 = Number(o5959) + 1;
      }
      if((o14272 > 0 || o5959 > 0) && !o13228)
      {
         o16489();
      }
      if(o13228 && _loc2_)
      {
         o4519.o8116.o4812.o10460.o20195.play(0.75);
      }
   }
   
   private function o11631(param1:o18091) : void
   {
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         o14272 = Number(o14272) - 1;
      }
      if(o4519.o8116.o2996.o14389(param1.o11541) is o18442)
      {
         o5959 = Number(o5959) - 1;
      }
      if(o14272 <= 0 && o5959 <= 0 && !o13228)
      {
         close();
      }
   }
   
   private function o16489() : void
   {
      var _loc1_:* = null;
      if(o2953)
      {
         return;
      }
      o2953 = true;
      body.o15838(0);
      o16166.o3030("open");
      o16166.o11543();
      o16166.play();
      if(o6691 && o6691.position)
      {
         _loc1_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14791.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
   
   private function close() : void
   {
      var _loc1_:* = null;
      if(!body || !o6691)
      {
         return;
      }
      o2953 = false;
      body.o15838(o8723.o10217);
      o16166.o3030("open");
      o16166.o6343();
      o16166.play();
      if(o6691 && o6691.position)
      {
         _loc1_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o16977.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
   
   public function o8375() : void
   {
      o13228 = true;
      close();
      o16166.o5388("locked");
   }
   
   public function o15446() : void
   {
      o13228 = false;
      o16166.o5388("unlocked");
      if(o14272 > 0)
      {
         o16489();
      }
   }
}
