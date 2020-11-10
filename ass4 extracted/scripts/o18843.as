package
{
   import flash.display.Sprite;
   
   public class o18843 extends Sprite
   {
       
      
      public function o18843()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8718;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;
import flash.utils.Dictionary;

class o8718 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"node"],[6,o17243.o2013,o13351.o10420,"trigger graph"],[2,o17243.o8809,o13351.o10420,"enemyType"],[5,o17243.float,o13351.o5585,"spawn loot"],[4,o17243.o14773,o13351.o5585,"explosive"],[7,o17243.float,o13351.o5585,"time before hatch"],[8,o17243.o8809,o13351.o5585,"enemy special flag"]];
   
   private static var o17103:Dictionary = new Dictionary();
   
   private static var o769:Array = [];
    
   
   private var o1276:Number = 0;
   
   private var o2912:Boolean = false;
   
   private var o1198:int = 0;
   
   private var o7137:int = 0;
   
   private var o9899:int = 0;
   
   private var o3444:Number = 0;
   
   private var o12555:int = 0;
   
   private var o11524:Boolean = false;
   
   private var o9025:Vector.<o20743>;
   
   private var o18183:Number = 1;
   
   function o8718()
   {
      super();
   }
   
   override public function getCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.enemies.eggBurst");
      _loc1_.push("assets.enemies.eggBase");
      _loc1_.push("assets.enemies.eggTop");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o11524 = false;
      o1198 = param2.readShort();
      o7137 = param2.readShort();
      o9899 = param2.readInt();
      o1276 = param2.readFloat();
      o2912 = param2.readBoolean();
      o3444 = param2.readFloat();
      if(param2.bytesAvailable > 0)
      {
         o12555 = param2.readInt();
      }
      if(o1276 < 0)
      {
         o1276 = 0;
      }
      else if(o1276 == 0)
      {
         o1276 = 0.035;
      }
      super.o949(param1);
      var _loc3_:o4332 = o4519.o9721.o12831(o1198);
      _loc3_.o9824 = false;
      o4519.o13206.o16280(this,o16450.o9745,o19950);
   }
   
   private function o19950(param1:o7734 = null) : void
   {
      var _loc3_:* = undefined;
      var _loc6_:* = undefined;
      var _loc5_:* = null;
      var _loc2_:* = null;
      if(o9899 == -1)
      {
         o19532();
      }
      else if(o9899 == 8)
      {
         o18183 = 5;
      }
      if(o7137 != 0)
      {
         if(o17103[o7137] == null || o17103[o7137] == undefined)
         {
            o17103[o7137] = o4519.o8116.o9869.o1968(0,0,false);
            _loc3_ = o4519.o9721.o7963(o4519.o9721.o7352[o7137].o6041[0].id);
            _loc6_ = o12075.o7521(_loc3_);
            var _loc8_:* = 0;
            var _loc7_:* = _loc6_;
            for each(var _loc4_ in _loc6_)
            {
               _loc5_ = new o17761(o17103[o7137].o2535);
               _loc5_.o14486(_loc4_);
               _loc2_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
               _loc2_.o10289 = _loc5_.id;
               o17103[o7137].o14230(_loc2_);
            }
         }
         if(o769[o7137] == null || o769[o7137] == undefined)
         {
            o769[o7137] = 0;
         }
         _loc8_ = o769;
         _loc7_ = o7137;
         var _loc9_:* = Number(_loc8_[_loc7_]) + 1;
         _loc8_[_loc7_] = _loc9_;
         o17103[o7137].o16280(this,o8273.o7087,o10291);
      }
      else
      {
         o19873();
      }
   }
   
   private function o10291(param1:o663) : void
   {
      if(o11524)
      {
         return;
      }
      o11524 = true;
      o19873();
   }
   
   private function o19873() : void
   {
      var _loc2_:o4332 = o4519.o9721.o12831(o1198);
      o20712 = Number(o20712) + 1;
      var _loc1_:int = Number(o20712);
      var _loc3_:o7700 = o4519.o8116.o2996.o2998(o7700,[o2912,o1276,o3444],_loc1_) as o7700;
      _loc3_.body.o8564(_loc2_.position.x,_loc2_.position.y);
      _loc3_.o16280(this,o8325.o11618,o14245);
   }
   
   private function o7506(param1:Event = null) : void
   {
      var _loc2_:* = null;
      var _loc4_:* = null;
      var _loc5_:o4332 = o4519.o9721.o12831(o1198);
      if(o9025.length == 0)
      {
         return;
      }
      var _loc3_:o18509 = new o18509(_loc5_.position.x + (o20384.random() * 10 - 5),_loc5_.position.y + (o20384.random() * 10 - 5));
      if(o4519.o13206.o2685.o4326 == 2)
      {
         _loc2_ = o3370(o9025[0].o18948,o10176.o12064(o9899),_loc3_,0,o12555,false,true,true,2);
      }
      else
      {
         _loc4_ = o3370(o9025[0].o18948,o10176.o12064(o9899),_loc3_,0,o12555,false,true,true,1);
      }
      o9025.splice(0,1);
   }
   
   private function o14245(param1:Event = null) : void
   {
      var _loc2_:Vector.<o13304> = new Vector.<o13304>();
      _loc2_.push(new o13304(o9899,o18183));
      o9025 = o10176.o10383(_loc2_,o18183,0);
      o1051.o4767(this,0.0333333333333333,o7506,o9025.length);
   }
   
   private function o19532() : void
   {
      var _loc1_:Number = o4519.o8116.random.o10418(o5973);
      var _loc2_:Number = o10176.o6572();
      if(_loc1_ < 0.05 && _loc2_ * 0.1 >= 1)
      {
         o9899 = 4;
         o18183 = 0.1;
      }
      else if(_loc1_ < 0.125 && _loc2_ * 2 >= 5)
      {
         o9899 = 8;
         o18183 = 2;
      }
      else if(_loc1_ < 0.2 && _loc2_ * 0.2 >= 1)
      {
         o9899 = 5;
         o18183 = 0.2;
      }
      else if(_loc1_ < 0.35 && _loc2_ * 0.5 >= 1)
      {
         o9899 = 3;
         o18183 = 0.5;
      }
      else if(_loc1_ < 0.5 && _loc2_ * 0.5 >= 1)
      {
         o9899 = 2;
         o18183 = 0.5;
      }
      else if(_loc1_ < 0.75 && _loc2_ * 0.8 >= 1)
      {
         o9899 = 1;
         o18183 = 0.8;
      }
      else if(_loc1_ <= 1 && _loc2_ * 1 >= 1)
      {
         o9899 = 0;
         o18183 = 1;
      }
   }
   
   override public function o19115() : void
   {
      if(o7137 != 0)
      {
         var _loc1_:* = o769;
         var _loc2_:* = o7137;
         var _loc3_:* = Number(_loc1_[_loc2_]) - 1;
         _loc1_[_loc2_] = _loc3_;
         if(o769[o7137] <= 0)
         {
            o769[o7137] = null;
            if(o17103[o7137])
            {
               o17103[o7137].o19115();
               o17103[o7137] = null;
            }
         }
      }
      super.o19115();
   }
}
