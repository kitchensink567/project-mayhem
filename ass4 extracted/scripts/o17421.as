package
{
   import flash.display.Sprite;
   
   public class o17421 extends Sprite
   {
       
      
      public function o17421()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18012;
      }
   }
}

import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o18012 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"spawn area"],[3,o17243.o2013,o13351.o10420,"overflow hole"],[4,o17243.o2013,o13351.o10420,"overflow top"]];
    
   
   private const o10393:Number = 20;
   
   private const o3374:Number = 5;
   
   private const o16585:Number = 2;
   
   private var o7485:Vector.<o18509>;
   
   private var o7847:o14882;
   
   function o18012()
   {
      o7485 = new Vector.<o18509>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc11_:int = 0;
      var _loc16_:int = 0;
      o949(param1);
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc13_:o13848 = o4519.o9721.o7352[_loc4_];
      var _loc6_:Vector.<o18509> = o4519.o9721.o7963(_loc13_.o6041[0].id);
      var _loc14_:Sprite = new Sprite();
      _loc14_.graphics.beginFill(16777215,1);
      var _loc10_:Boolean = true;
      var _loc18_:int = 0;
      var _loc17_:* = _loc6_;
      for each(var _loc7_ in _loc6_)
      {
         if(_loc10_)
         {
            _loc14_.graphics.moveTo(_loc7_.x,_loc7_.y);
            _loc10_ = false;
         }
         else
         {
            _loc14_.graphics.lineTo(_loc7_.x,_loc7_.y);
         }
      }
      _loc14_.graphics.endFill();
      o4519.o8116.stage.addChild(_loc14_);
      o7485.splice(0,4294967295);
      var _loc8_:Rectangle = _loc14_.getBounds(_loc14_);
      _loc11_ = _loc8_.left;
      while(_loc11_ <= _loc8_.right)
      {
         _loc16_ = _loc8_.top;
         while(_loc16_ <= _loc8_.bottom)
         {
            if(_loc14_.hitTestPoint(_loc11_,_loc16_,true))
            {
               o7485.push(new o18509(_loc11_,_loc16_));
            }
            _loc16_ = _loc16_ + 20;
         }
         _loc11_ = _loc11_ + 20;
      }
      o4519.o8116.stage.removeChild(_loc14_);
      var _loc15_:int = param2.readShort();
      var _loc9_:int = param2.readShort();
      var _loc5_:o4332 = o4519.o9721.o12831(_loc15_);
      var _loc12_:o7331 = o4519.o9721.o7833(_loc15_);
      var _loc3_:o4332 = o4519.o9721.o12831(_loc9_);
      o7847 = new o14882();
      o7847.init(_loc5_,_loc12_,_loc3_);
   }
   
   public function o3692(param1:int, param2:o18509, param3:o2041, param4:int) : void
   {
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      _loc5_ = 0;
      while(_loc5_ < param1)
      {
         _loc6_ = int(o4519.o8116.random.o10418(o20712) * 11) + 1;
         o4519.o8116.o2996.o2998(o12779,[o7485[int(o4519.o8116.random.o10418(o20712) * o7485.length)],param2,param3,_loc6_,this,param4],o20712);
         o20712 = Number(o20712) + 1;
         _loc5_++;
      }
   }
   
   public function o10075(param1:int) : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:Dictionary = new Dictionary();
      _loc5_ = 0;
      while(_loc5_ < param1)
      {
         _loc4_ = int(o9274.o13653(o20384.random()));
         if(_loc2_[_loc4_] == null)
         {
            _loc2_[_loc4_] = 0;
         }
         var _loc8_:* = _loc2_;
         var _loc9_:* = _loc4_;
         var _loc10_:* = Number(_loc8_[_loc9_]) + 1;
         _loc8_[_loc9_] = _loc10_;
         _loc5_++;
      }
      var _loc7_:Vector.<o13304> = new Vector.<o13304>();
      var _loc12_:int = 0;
      var _loc11_:* = _loc2_;
      for(_loc4_ in _loc2_)
      {
         _loc7_.push(new o13304(_loc4_,_loc2_[_loc4_]));
      }
      var _loc3_:Vector.<o20743> = o10176.o10383(_loc7_,param1,0,o5973);
      var _loc14_:int = 0;
      var _loc13_:* = _loc3_;
      for each(var _loc6_ in _loc3_)
      {
         if(o1710() == false)
         {
            o3370(_loc6_.o18948,_loc6_.grade,o7847.position,0);
         }
         else
         {
            o3370(_loc6_.o18948,_loc6_.grade,o7485[int(o4519.o8116.random.o10418(o20712) * o7485.length)],0);
         }
      }
   }
   
   override public function o18421(param1:Class, param2:Number, param3:int, param4:o18509 = null, param5:int = 0, param6:int = 0, param7:Boolean = true, param8:Boolean = true, param9:int = 0) : o18442
   {
      if(o7847.o8478 == false)
      {
         if(param4.x == o7847.position.x && param4.y == o7847.position.y)
         {
            o7847.o20816();
         }
      }
      return super.o18421(param1,param2,param3,param4,param5,param6,param7,param8,param9);
   }
   
   public function o12675() : void
   {
      var _loc4_:int = 0;
      var _loc1_:int = 0;
      var _loc6_:* = null;
      var _loc7_:o18509 = o7485[int(o20384.random() * o7485.length)];
      var _loc5_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.AreaLoot"];
      var _loc2_:ByteArray = new ByteArray();
      _loc2_.writeFloat(0.05);
      _loc2_.position = 0;
      var _loc3_:* = o4519.o8116.o2996.o2998(_loc5_,[_loc2_]);
      _loc3_.body.o8564(_loc7_.x,_loc7_.y);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc4_ = 0;
         while(_loc4_ < 5)
         {
            _loc7_ = o7485[int(o20384.random() * o7485.length)];
            o20712 = Number(o20712) + 1;
            _loc1_ = Number(o20712);
            _loc6_ = o4519.o8116.o2996.o2998(o7700,[false,0,30],_loc1_) as o7700;
            _loc6_.body.o8564(_loc7_.x,_loc7_.y);
            _loc6_.o16280(this,o8325.o11618,o14245);
            _loc4_++;
         }
      }
      else
      {
         _loc7_ = o7485[int(o20384.random() * o7485.length)];
         _loc5_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.PlaceableMedikit"];
         _loc2_ = new ByteArray();
         _loc2_.writeShort(0);
         _loc2_.writeFloat(0.25);
         _loc2_.position = 0;
         _loc3_ = o4519.o8116.o2996.o2998(_loc5_,[_loc2_]);
         _loc3_.body.o8564(_loc7_.x,_loc7_.y);
         o19115();
      }
   }
   
   private function o14245(param1:o8325) : void
   {
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc3_:int = 2;
      o20384.o11478(param1.o15055.o5973);
      var _loc2_:Dictionary = new Dictionary();
      _loc6_ = 0;
      while(_loc6_ < _loc3_)
      {
         _loc5_ = int(o9274.o13653(o20384.random()));
         if(_loc2_[_loc5_] == null)
         {
            _loc2_[_loc5_] = 0;
         }
         var _loc9_:* = _loc2_;
         var _loc10_:* = _loc5_;
         var _loc11_:* = Number(_loc9_[_loc10_]) + 1;
         _loc9_[_loc10_] = _loc11_;
         _loc6_++;
      }
      var _loc8_:Vector.<o13304> = new Vector.<o13304>();
      var _loc13_:int = 0;
      var _loc12_:* = _loc2_;
      for(_loc5_ in _loc2_)
      {
         _loc8_.push(new o13304(_loc5_,_loc2_[_loc5_]));
      }
      var _loc4_:Vector.<o20743> = o10176.o10383(_loc8_,_loc3_,0,param1.o15055.o5973);
      var _loc15_:int = 0;
      var _loc14_:* = _loc4_;
      for each(var _loc7_ in _loc4_)
      {
         o3370(_loc7_.o18948,_loc7_.grade,new o18509(param1.o15055.body.position.x,param1.o15055.body.position.y),0,0,true);
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o7485 = null;
      super.o19115();
   }
}
