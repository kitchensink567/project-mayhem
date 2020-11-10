package
{
   import flash.display.Sprite;
   
   public class o9190 extends Sprite
   {
       
      
      public function o9190()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2873;
      }
   }
}

import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o2873 extends o3047
{
   
   private static const o16292:int = 1;
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"spawn trigger"],[3,o17243.o2013,o13351.o10420,"enemy path"],[4,o17243.o2013,o13351.o5585,"enemy path 2"],[5,o17243.o2013,o13351.o5585,"enemy path 3"]];
   
   private static const o3601:Number = 10;
   
   private static const o15907:Number = 5;
   
   private static const o11657:Number = 1.5;
   
   private static const o13596:Array = [1,1.4,2,1.8,6,2.2];
   
   private static const o6630:Number = 0.3;
   
   private static const o4165:Number = 0.68;
    
   
   public var o1461:Boolean = true;
   
   private var o406:o10262;
   
   private var o8407:Vector.<o972>;
   
   private var o20384:o7600;
   
   private var o16573:Number = 1.0;
   
   private var o16181:Vector.<o20743>;
   
   private var o20908:int = 0;
   
   function o2873()
   {
      o8407 = new Vector.<o972>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc11_:* = null;
      var _loc5_:* = null;
      var _loc10_:int = 0;
      var _loc6_:int = 0;
      var _loc4_:* = null;
      var _loc3_:* = null;
      o949(param1);
      o20384 = new o7600(param1);
      o1461 = true;
      name = param2.readUTF();
      var _loc8_:int = param2.readShort();
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc7_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc8_].o6041[0].id);
      var _loc12_:Vector.<Vector.<o18509>> = o12075.o7521(_loc7_);
      var _loc14_:int = 0;
      var _loc13_:* = _loc12_;
      for each(var _loc9_ in _loc12_)
      {
         _loc11_ = new o17761(o406.o2535);
         _loc11_.o14486(_loc9_);
         _loc5_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
         _loc5_.o10289 = _loc11_.id;
         o406.o14230(_loc5_);
      }
      o406.o16280(this,o8273.o7087,o46);
      _loc10_ = 0;
      while(_loc10_ < 3)
      {
         _loc6_ = param2.readShort();
         if(_loc6_ != 0)
         {
            _loc4_ = o4519.o9721.o7352[_loc6_];
            _loc3_ = o12498(_loc4_);
            o8407.push(_loc3_);
         }
         _loc10_++;
      }
   }
   
   private function o46(param1:o663) : void
   {
      o406.o12657(o8273.o7087,o46);
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeByte(1);
      _loc2_.writeBoolean(o1461);
      dispatchData(new o2149(this,_loc2_,true,false,1));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 1))
      {
         o2352(param2.readBoolean());
      }
   }
   
   private function o2352(param1:Boolean) : void
   {
      var _loc3_:* = 0;
      o1461 = param1;
      if(o1461)
      {
         o16573 = 0.3;
      }
      else
      {
         o16573 = 0.68;
      }
      var _loc5_:* = 0;
      var _loc2_:Dictionary = new Dictionary();
      var _loc6_:* = 10;
      if(name == "hunter1")
      {
         _loc6_ = 5;
      }
      while(_loc5_ < _loc6_)
      {
         _loc3_ = int(o9274.o13653(o20384.random()));
         _loc5_ = Number(_loc5_ + o13596[_loc3_]);
         if(_loc2_[_loc3_] == null)
         {
            _loc2_[_loc3_] = 0;
         }
         var _loc7_:* = _loc2_;
         var _loc8_:* = _loc3_;
         var _loc9_:* = Number(_loc7_[_loc8_]) + 1;
         _loc7_[_loc8_] = _loc9_;
      }
      var _loc4_:Vector.<o13304> = new Vector.<o13304>();
      var _loc11_:int = 0;
      var _loc10_:* = _loc2_;
      for(_loc3_ in _loc2_)
      {
         _loc4_.push(new o13304(_loc3_,_loc2_[_loc3_]));
      }
      o16181 = o10176.o10383(_loc4_,_loc6_ * 1.5);
      o20908 = o1051.o4767(this,0.25,o7506);
   }
   
   private function o7506() : void
   {
      if(o16181.length == 0)
      {
         o1051.o19115(o20908);
         return;
      }
      var _loc4_:o20743 = o16181.shift();
      var _loc2_:int = 3;
      if(o20384.random() < o16573)
      {
         _loc2_ = 0;
      }
      var _loc1_:o972 = o8407[int(o20384.random() * o8407.length)];
      var _loc3_:o18509 = _loc1_.o16255[0];
      o3370(_loc4_.o18948,_loc4_.grade,_loc3_,_loc2_,0,false);
   }
   
   override public function o18421(param1:Class, param2:Number, param3:int, param4:o18509 = null, param5:int = 0, param6:int = 0, param7:Boolean = true, param8:Boolean = true, param9:int = 0) : o18442
   {
      var _loc10_:* = null;
      var _loc11_:int = 0;
      var _loc13_:o18442 = super.o18421(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      _loc11_ = 0;
      while(_loc11_ < o8407.length)
      {
         if(o8407[_loc11_].o16255[0].x == param4.x && o8407[_loc11_].o16255[0].y == param4.y)
         {
            _loc10_ = o8407[_loc11_];
            break;
         }
         _loc11_++;
      }
      if(_loc10_ == null)
      {
         o8339("WARNING SurvivorHunterSpawner createEnemy() path == null");
         _loc10_ = o8407[0];
      }
      if(param5 == 3)
      {
         _loc13_.o13696.splice(0,4294967295);
         _loc13_.o1337 = _loc10_.o18084();
         _loc13_.o16280(_loc13_,o3519.o4280,o8901);
      }
      var _loc12_:o18509 = o15460.o4078;
      _loc12_.x = _loc10_.o16255[1].x - _loc10_.o16255[0].x;
      _loc12_.y = _loc10_.o16255[1].y - _loc10_.o16255[0].y;
      _loc13_.o6691.rotation = _loc12_.rotation;
      return _loc13_;
   }
   
   private function o8901(param1:o4389) : void
   {
      param1.o18481.o12657(o3519.o4280,o8901);
      param1.o18481.o2840 = 0;
      param1.o18481.o13696.push(o12779,o17517);
      param1.o18481.o9270(null);
   }
   
   public function o12498(param1:o13848) : o972
   {
      var _loc4_:* = null;
      var _loc5_:int = 0;
      var _loc3_:o972 = new o972();
      var _loc6_:* = null;
      var _loc2_:o2041 = param1.o6041[0];
      while(_loc3_.o16255.length < param1.o6041.length)
      {
         _loc4_ = new o18509(_loc2_.x,_loc2_.y);
         _loc3_.o16255.push(_loc4_);
         _loc5_ = 0;
         while(_loc5_ < _loc2_.o16079.length)
         {
            if(_loc2_.o16079[_loc5_] != _loc6_)
            {
               _loc6_ = _loc2_;
               _loc2_ = _loc2_.o16079[_loc5_];
               break;
            }
            _loc5_++;
         }
      }
      return _loc3_;
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o406.o19115();
      super.o19115();
   }
}
