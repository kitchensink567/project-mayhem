package
{
   import flash.display.Sprite;
   
   public class o19132 extends Sprite
   {
       
      
      public function o19132()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19666;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o19666 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o8809,o13351.o10420,"size (0,1,2)"]];
    
   
   private var o11243:Number = 400;
   
   private var size:int = 0;
   
   private var o14622:o4332 = null;
   
   private var o5326:o7331 = null;
   
   function o19666()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.maps.zombieEgg.eggBase");
      _loc1_.push("assets.maps.zombieEgg.bossEggBase");
      _loc1_.push("assets.maps.zombieEgg.bossEggDestroyed");
      _loc1_.push("assets.maps.zombieEgg.bossEggSplosionBig");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = param2.readShort();
      size = param2.readInt();
      var _loc7_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc7_.o16990 = o11381.o12714;
      o14622 = o4519.o8116.o11954.o10869();
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0);
      var _loc9_:o17761 = new o17761(_loc3_.o2535);
      switch(int(size))
      {
         case 0:
            _loc9_.o16716(25);
            o11243 = 400;
            o14622.o16396 = o17541.o13617("assets.maps.zombieEgg.eggBase");
            break;
         case 1:
            _loc9_.o16716(35);
            o11243 = 1000;
            o14622.o16396 = o17541.o13617("assets.maps.zombieEgg.eggBase");
            break;
         case 2:
            _loc9_.o16716(87);
            o11243 = 8000;
            o14622.o16396 = o17541.o13617("assets.maps.zombieEgg.bossEggBase");
      }
      var _loc8_:* = int(o8723.o10217);
      if(size != 2)
      {
         _loc8_ = _loc8_ ^ (o8723.o17798 ^ o8723.o42);
      }
      var _loc6_:int = o8723.o17079;
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o18180,_loc8_,_loc6_);
      _loc4_.o10289 = _loc9_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o8564(_loc7_.position.x,_loc7_.position.y);
      super.o10783(param1,_loc3_,_loc7_,o4519.o8116.o11676);
      if(size != 2)
      {
         o16166.o3030("eggloop");
      }
      o16166.play();
      o14622.position = _loc7_.position;
      o14622.rotation = _loc7_.rotation;
      o14622.o16990 = o11381.o3010;
      o4519.o8116.o11954.o9226(o14622);
      if(size != 2)
      {
         o5326 = o4519.o8116.o11676.o6798(o14622.o16396.assetID);
         o5326.o3030("eggbaseloop");
         o5326.play();
      }
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(param1.o16334 is o17517)
      {
         o317(param1.amount * (param1.o16334 as o17517).o13012.o13072);
      }
      else
      {
         o317(param1.amount);
      }
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      var _loc3_:int = 0;
      var _loc2_:* = null;
      if(o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - param1;
      if(o11243 <= 0)
      {
         o4929(0,0,0,0,0,0);
         o16855();
         if(size != 2)
         {
            o16166.o12265 = false;
            o16166.o3030("eggdeath");
            o16166.o11("eggdeath");
            o5326.o12265 = false;
            o5326.o3030("eggbasedeath");
            o5326.o11("eggbasedeath");
            o5326.o16280(this,o1490.o16612,o14851);
         }
         else
         {
            o14622.o16396 = o17541.o13617("assets.maps.zombieEgg.bossEggDestroyed");
            o4519.o9721.o2075.o471(o14622);
            o14622 = null;
            _loc3_ = 0;
            while(_loc3_ < 4)
            {
               _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.maps.zombieEgg.bossEggSplosionBig"]) as o2130;
               if(_loc2_ != null)
               {
                  _loc2_.o6691.position.x = body.position.x;
                  _loc2_.o6691.position.y = body.position.y;
                  _loc2_.o6691.rotation = _loc3_ * (3.14159265358979 * 0.5);
               }
               _loc3_++;
            }
            o19115();
         }
      }
   }
   
   private function o14851(param1:Event) : void
   {
      o4519.o9721.o2075.o471(o14622);
      o14622 = null;
      o19115();
   }
   
   private function o10492(param1:Boolean = false) : void
   {
      var _loc2_:* = null;
      if(this.o6691 && this.o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         if(!param1)
         {
            o4519.o8116.o4812.o14142.o4202.play(0.85,0,0,false,_loc2_.o10088());
         }
      }
   }
   
   private function o16855() : void
   {
      var _loc1_:* = null;
      if(this.o6691 && this.o6691.position)
      {
         _loc1_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o14142.o6633.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
}
