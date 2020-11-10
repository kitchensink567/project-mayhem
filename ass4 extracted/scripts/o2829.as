package
{
   import flash.display.Sprite;
   
   public class o2829 extends Sprite
   {
       
      
      public function o2829()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13165;
      }
   }
}

import flash.utils.ByteArray;

class o13165 extends o9347
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.o2013,o13351.o10420,"door open trigger area"],[4,o17243.o14773,o13351.o5585,"initially opens for player"]];
    
   
   private var o406:o10262;
   
   private var o19335:Boolean = false;
   
   private var o19920:Boolean = false;
   
   private var o5421:Boolean = true;
   
   private var o249:Boolean = true;
   
   private var o14272:int = 0;
   
   private var o15290:Vector.<o18442>;
   
   function o13165()
   {
      o15290 = new Vector.<o18442>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc9_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc6_:Boolean = param2.readBoolean();
      o5421 = !_loc6_;
      o249 = false;
      super.o2348(param1,_loc9_,_loc7_,o8723.o10217,o8723.o10217,0);
      o16166.o12265 = false;
      o16166.o5388("open");
      o16166.o3030("open");
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
   
   private function o46(param1:o663) : void
   {
      var _loc2_:* = null;
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         o14272 = Number(o14272) + 1;
      }
      else
      {
         _loc2_ = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
         if(_loc2_)
         {
            o15290.push(_loc2_);
            _loc2_.o16280(this,o14571.o19115,o10014);
         }
      }
      if(o14272 > 0 && !o5421)
      {
         o8482();
      }
      if(o15290.length > 0 && !o249)
      {
         o18699();
      }
   }
   
   private function o11631(param1:o18091) : void
   {
      var _loc2_:* = null;
      if(o4519.o8116.o2996.o14389(param1.o11541) is o17517)
      {
         o14272 = Number(o14272) - 1;
      }
      else
      {
         _loc2_ = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
         if(_loc2_)
         {
            o15290.splice(o15290.indexOf(_loc2_),1);
            _loc2_.o12657(o14571.o19115,o10014);
         }
      }
      if(o14272 <= 0 && !o5421)
      {
         o16772();
      }
      if(o15290.length <= 0 && !o249)
      {
         o20672();
      }
   }
   
   private function o10014(param1:o7734) : void
   {
      o15290.splice(o15290.indexOf(o18442(param1.o11493)),1);
      if(o15290.length <= 0)
      {
         o20672();
      }
   }
   
   private function o8508() : void
   {
      if(!(o19335 || o19920))
      {
         body.o15838(o8723.o10217);
      }
      else
      {
         body.o15838((!!o19920?0:o8723.o2823) | (!!o19335?0:o8723.o32));
      }
   }
   
   private function o8482() : void
   {
      if(!o19335)
      {
         o19335 = true;
         o8508();
         o7433();
      }
   }
   
   private function o16772() : void
   {
      if(o19335)
      {
         o19335 = false;
         o8508();
         o13052();
      }
   }
   
   private function o18699() : void
   {
      if(!o19920)
      {
         o19920 = true;
         o8508();
         o7433();
      }
   }
   
   private function o20672() : void
   {
      if(o19920)
      {
         o19920 = false;
         o8508();
         o13052();
      }
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      o16166.o11543();
      o16166.play();
      if(o7953 == null)
      {
         return;
      }
      var _loc2_:o257 = new o257(o7953.x,o7953.y);
      o4519.o8116.o4812.o4404.o10055.play(0.5,0,0,false,_loc2_.o10088());
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      if(o19335 || o19920)
      {
         return;
      }
      o16166.o6343();
      o16166.play();
      if(o7953 == null)
      {
         return;
      }
      var _loc2_:o257 = new o257(o7953.x,o7953.y);
      o4519.o8116.o4812.o4404.o10055.play(0.5,0,0,false,_loc2_.o10088());
   }
   
   public function o7730() : void
   {
      o16772();
      o5421 = true;
   }
   
   public function o17776() : void
   {
      o5421 = false;
      if(o14272 > 0)
      {
         o8482();
      }
   }
   
   public function o3161() : void
   {
      o20672();
      o249 = true;
   }
   
   public function o19840() : void
   {
      o249 = false;
      if(o15290.length > 0)
      {
         o18699();
      }
   }
}
