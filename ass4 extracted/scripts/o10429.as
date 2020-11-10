package
{
   import flash.display.Sprite;
   
   public class o10429 extends Sprite
   {
       
      
      public function o10429()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1352;
      }
   }
}

import flash.utils.ByteArray;

class o1352 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"spawn Points"],[3,o17243.o2013,o13351.o5585,"spawn trigger"],[2,o17243.o8809,o13351.o5585,"boss ID"],[4,o17243.o2013,o13351.o5585,"activation trigger"],[5,o17243.o2013,o13351.o5585,"attackTrigger trigger"]];
    
   
   private var o406:o10262;
   
   private var o8687:int = 0;
   
   private var o16255:Vector.<o18509>;
   
   private var o10799:int;
   
   private var o11652:o10262;
   
   private var o15641:o10262;
   
   private var o1675:o15028;
   
   private var o19893:Number = 100;
   
   function o1352()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc10_:* = null;
      var _loc4_:* = null;
      o8687 = param2.readShort();
      var _loc7_:int = param2.readShort();
      o10799 = param2.readInt();
      var _loc9_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc3_:o13848 = o4519.o9721.o7352[o8687];
      o16255 = o4519.o9721.o7963(_loc3_.o6041[0].id);
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc7_].o6041[0].id);
      var _loc11_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc13_:int = 0;
      var _loc12_:* = _loc11_;
      for each(var _loc8_ in _loc11_)
      {
         _loc10_ = new o17761(o406.o2535);
         _loc10_.o14486(_loc8_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc10_.id;
         o406.o14230(_loc4_);
      }
      o15641 = o4519.o8116.o9869.o1968(0,0,false);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
      _loc11_ = o12075.o7521(_loc5_);
      var _loc15_:int = 0;
      var _loc14_:* = _loc11_;
      for each(_loc8_ in _loc11_)
      {
         _loc10_ = new o17761(o15641.o2535);
         _loc10_.o14486(_loc8_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc10_.id;
         o15641.o14230(_loc4_);
      }
      o11652 = o4519.o8116.o9869.o1968(0,0,false);
      _loc5_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc9_].o6041[0].id);
      _loc11_ = o12075.o7521(_loc5_);
      var _loc17_:int = 0;
      var _loc16_:* = _loc11_;
      for each(_loc8_ in _loc11_)
      {
         _loc10_ = new o17761(o11652.o2535);
         _loc10_.o14486(_loc8_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc10_.id;
         o11652.o14230(_loc4_);
      }
      o406.o16280(this,o8273.o7087,o10999);
      super.o949(param1);
   }
   
   public function o10999(param1:o663) : void
   {
      var _loc4_:int = 0;
      var _loc6_:* = null;
      var _loc7_:* = null;
      var _loc2_:int = 0;
      var _loc5_:* = null;
      var _loc3_:o18509 = new o18509();
      _loc4_ = 0;
      while(_loc4_ < o16255.length)
      {
         _loc6_ = o16255[_loc4_];
         _loc7_ = o3370(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.PlaceHolderEnemy"],2,new o18509(_loc6_.x,_loc6_.y),0,0,true,false,false);
         _loc2_ = o20712;
         o20712 = Number(o20712) + 1;
         _loc5_ = o4519.o8116.o2996.o2998(o15028,[_loc7_],_loc2_) as o15028;
         _loc5_.o16280(this,o8325.o12756,o14245);
         _loc5_.o1912();
         _loc5_.body.o8564(_loc6_.x,_loc6_.y);
         _loc5_.id = _loc4_;
         _loc3_.x = _loc3_.x + _loc6_.x;
         _loc3_.y = _loc3_.y + _loc6_.y;
         _loc4_++;
      }
      _loc7_ = o3370(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.PlaceHolderEnemy"],1,new o18509(_loc3_.x / o16255.length,_loc3_.y / o16255.length),0,0,true,false,false);
      _loc2_ = o20712;
      o20712 = Number(o20712) + 1;
      o1675 = o4519.o8116.o2996.o2998(o15028,[_loc7_],_loc2_) as o15028;
      o1675.body.o8564(_loc3_.x / o16255.length,_loc3_.y / o16255.length);
      o1675.o1912(true);
      o1675.o16557(o10799);
      o1675.o16280(this,o8325.o12756,o10124);
      o406.o12657(o8273.o7087,o10999);
      o11652.o16280(this,o8273.o7087,o10958);
      o15641.o16280(this,o8273.o7087,o3401);
   }
   
   private function o10958(param1:o663 = null) : void
   {
      var _loc4_:* = null;
      var _loc3_:int = 0;
      var _loc2_:* = undefined;
      if(o1675)
      {
         _loc4_ = new ByteArray();
         _loc3_ = 1;
         _loc4_.writeInt(_loc3_);
         _loc2_ = this;
         dispatchData(new o2149(_loc2_,_loc4_,true,true,100));
      }
   }
   
   private function o3401(param1:o663 = null) : void
   {
      var _loc4_:* = null;
      var _loc3_:int = 0;
      var _loc2_:* = undefined;
      if(o1675)
      {
         _loc4_ = new ByteArray();
         _loc3_ = 2;
         _loc4_.writeInt(_loc3_);
         _loc2_ = this;
         dispatchData(new o2149(_loc2_,_loc4_,true,true,200));
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readInt();
      if(_loc3_ == 1)
      {
         if(o1675)
         {
            o1675.o20736();
            o10059();
         }
         if(o11652)
         {
            o11652.o12657(o8273.o7087,o10958);
         }
      }
      else
      {
         if(o1675)
         {
            o1675.o6143();
         }
         if(o15641)
         {
            o15641.o12657(o8273.o7087,o3401);
         }
      }
   }
   
   public function o14245(param1:o8324 = null) : void
   {
      var _loc5_:int = 0;
      var _loc3_:* = null;
      var _loc6_:int = 0;
      var _loc4_:* = null;
      var _loc7_:Vector.<o13304> = new Vector.<o13304>();
      _loc7_.push(new o13304(4,1));
      _loc7_.push(new o13304(3,2.4));
      _loc7_.push(new o13304(2,1.6));
      var _loc2_:Vector.<o20743> = o10176.o10383(_loc7_,1);
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc3_ = new o18509(param1.o17018.x + (o20384.random() * 10 - 5),param1.o17018.y + (o20384.random() * 10 - 5));
         _loc6_ = 0;
         if(_loc2_[_loc5_].o18948 == o4519.o8116.o20291[o17439.o12681[4]])
         {
            _loc6_ = o10176.o12064(4);
         }
         else if(_loc2_[_loc5_].o18948 == o4519.o8116.o20291[o17439.o12681[3]])
         {
            _loc6_ = o10176.o12064(3);
         }
         else if(_loc2_[_loc5_].o18948 == o4519.o8116.o20291[o17439.o12681[2]])
         {
            _loc6_ = o10176.o12064(2);
         }
         _loc4_ = o3370(_loc2_[_loc5_].o18948,_loc6_,_loc3_,0,74,true,true,true,_loc2_[_loc5_].o5751);
         if(_loc4_ != null)
         {
            _loc4_.o2226();
            _loc4_.o2226();
         }
         _loc5_++;
      }
      if(o1675)
      {
         o1675.o5254();
      }
      else
      {
         trace("---Cannot reduce boss egg HP, boss egg already destroyed");
      }
      if(!o20104())
      {
      }
   }
   
   protected function o20104() : Boolean
   {
      return o4519.o13206.o4326 == 2?true:false;
   }
   
   public function o10124(param1:o8324 = null) : void
   {
      var _loc5_:* = undefined;
      var _loc3_:int = 0;
      var _loc2_:* = null;
      var _loc4_:Vector.<o20743> = null;
      if(o20104())
      {
         _loc5_ = o4519.o9721.o12334("BossEggNightmareSpawn");
         if(_loc5_)
         {
            _loc5_.o4526();
         }
      }
      else
      {
         _loc4_ = o10176.o8930(o19893);
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            _loc2_ = o3370(_loc4_[_loc3_].o18948,_loc4_[_loc3_].grade,new o18509(param1.o17018.x,param1.o17018.y),0,o10799,true,_loc4_[_loc3_].o1673,_loc4_[_loc3_].o17014,_loc4_[_loc3_].o5751);
            _loc2_.o13205(o15028.o16566);
            _loc3_++;
         }
      }
   }
   
   private function o10059() : void
   {
      o4519.o8116.o8756.o2282.o8445();
   }
   
   override public function o19115() : void
   {
      super.o19115();
   }
}
