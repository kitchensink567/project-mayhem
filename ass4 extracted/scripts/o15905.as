package
{
   import flash.display.Sprite;
   
   public class o15905 extends Sprite
   {
       
      
      public function o15905()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19533;
      }
   }
}

import flash.utils.ByteArray;

class o19533 extends o10384
{
   
   public static var o20272:Array = [[14,o17243.float,o13351.o10420,"physical radius (px)"],[2,o17243.o2013,o13351.o10420,"image"],[4,o17243.float,o13351.o10420,"health base (0 for invincible)"],[17,o17243.o14773,o13351.o10420,"explodes"],[15,o17243.float,o13351.o10420,"explosion radius (m)"],[16,o17243.float,o13351.o10420,"explosion damage"],[6,o17243.o14773,o13351.o10420,"projectiles pass through"],[7,o17243.o14773,o13351.o10420,"projectiles can hurt"],[8,o17243.o14773,o13351.o10420,"enemies can target/hurt"],[18,o17243.o14773,o13351.o10420,"moveable"],[12,o17243.float,o13351.o5585,"mass"],[9,o17243.float,o13351.o5585,"linear dampening"],[10,o17243.float,o13351.o5585,"friction"],[11,o17243.float,o13351.o5585,"restitution"]];
    
   
   private var o12487:Boolean = false;
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o5260:Boolean = false;
   
   private var o10277:Number = 0;
   
   private var o8655:Number = 0;
   
   private var o5647:Number = 0.55;
   
   private var o19505:o7848;
   
   function o19533()
   {
      super();
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push(o6691.o16396.assetID);
      _loc1_.push("assets.effects.explosion1");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc9_:int = param2.readFloat();
      var _loc5_:int = param2.readShort();
      var _loc11_:Number = param2.readFloat();
      o5260 = param2.readByte();
      o8655 = o4519.o8116.o4550(param2.readFloat());
      o10277 = param2.readFloat();
      var _loc17_:Boolean = param2.readByte();
      var _loc20_:Boolean = param2.readByte();
      var _loc15_:Boolean = param2.readByte();
      var _loc13_:Boolean = param2.readByte();
      var _loc12_:* = Number(param2.readFloat());
      var _loc7_:Number = param2.readFloat();
      var _loc14_:Number = param2.readFloat();
      var _loc18_:Number = param2.readFloat();
      if(_loc12_ == 0)
      {
         _loc12_ = 10;
      }
      var _loc16_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc16_.o16990 = o11381.o18806;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(!!_loc13_?1:0,_loc7_,false,false);
      var _loc10_:o17761 = new o17761(_loc3_.o2535);
      _loc10_.o16716(_loc9_);
      var _loc8_:* = int(o8723.o10217);
      var _loc6_:* = 0;
      if(_loc17_)
      {
         _loc8_ = _loc8_ ^ o8723.o17798;
      }
      else if(_loc20_)
      {
         _loc6_ = _loc6_ | o8723.o17798;
      }
      if(_loc11_ == 0)
      {
         o12487 = true;
      }
      else if(_loc15_)
      {
         _loc6_ = _loc6_ | o8723.o17079;
      }
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc8_,_loc6_,false,_loc14_,_loc18_);
      _loc4_.o10289 = _loc10_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o16687(_loc16_.rotation);
      _loc3_.o8564(_loc16_.position.x,_loc16_.position.y);
      _loc3_.o7191 = _loc12_;
      var _loc19_:int = o4519.o8116.o20488.o10608.level;
      o1589 = _loc11_;
      o11243 = _loc11_;
      super.o10783(param1,_loc3_,_loc16_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(param1.o16334 is o17517)
      {
         o317(param1.amount * (param1.o16334 as o17517).o13012.o13072,param1.o9968,param1.o3);
      }
      else
      {
         o317(param1.amount,param1.o9968,param1.o3);
      }
   }
   
   private function o317(param1:Number, param2:Boolean = false, param3:int = 1) : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = null;
      if(o12487)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         if(o5260)
         {
            o19344();
         }
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o18674;
         body.o19115();
      }
      else
      {
         _loc5_ = Math.ceil((1 - o11243 / o1589) * 3);
         o16166.gotoAndStop(_loc5_ - 1);
         _loc4_ = new o257(this.o6691.position.x,this.o6691.position.y);
         if(!param2 && param3 == 1)
         {
            o4519.o8116.o4812.o4404.o18609.play(o5647,0,0,false,_loc4_.o10088());
         }
      }
   }
   
   private function o19344() : void
   {
      o19505 = this;
      var o12034:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o4335.play(0.5,0,0,false,o12034.o10088());
      var o20325:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(o20325 != null)
      {
         o20325.o6691.position.x = body.o2697.x;
         o20325.o6691.position.y = body.o2697.y;
      }
      o4519.o8116.o2996.o9685(o18442,body.o2697.x,body.o2697.y,o8655,o8723.o17798,o8723.o3969 | o8723.o18180).defer(function(param1:Array):void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_ = o15460.o4078;
            _loc3_.x = _loc2_.body.o2697.x - body.o2697.x;
            _loc3_.y = _loc2_.body.o2697.y - body.o2697.y;
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(o10277,2,o19505,null,_loc3_.rotation,0.1));
         }
      });
      o4519.o8116.o2996.o9685(o10384,body.o2697.x,body.o2697.y,o8655,o8723.o17798,o8723.o3969 | o8723.o18180).defer(function(param1:Array):void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_ is o9347 == false)
            {
               _loc2_ = o15460.o4078;
               _loc2_.x = _loc3_.body.o2697.x - body.o2697.x;
               _loc2_.y = _loc3_.body.o2697.y - body.o2697.y;
               o4519.o8116.o8361.o5725(_loc3_,o4016.o10062().initialise(o10277,2,null));
            }
         }
      });
   }
}
