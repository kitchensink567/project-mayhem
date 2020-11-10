package
{
   import flash.display.Sprite;
   
   public class o7717 extends Sprite
   {
       
      
      public function o7717()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o20436;
      }
   }
}

import flash.utils.ByteArray;

class o20436 extends o7848
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Failsafe Physics Graph"],[2,o17243.o14773,o13351.o10420,"Concave Graph?"],[3,o17243.o14773,o13351.o10420,"Teleport Players?"],[4,o17243.o14773,o13351.o10420,"Is Teleport Location a Graph?"],[5,o17243.o2013,o13351.o10420,"Player Teleport Location"],[6,o17243.o14773,o13351.o10420,"Teleport Enemies?"],[7,o17243.o14773,o13351.o10420,"Is Teleport Location a Graph?"],[8,o17243.o2013,o13351.o10420,"Enemy Teleport Location"],[9,o17243.o14773,o13351.o10420,"Ignore Dark Minions?"]];
    
   
   private var o7266:int = 0;
   
   private var o12745:int = 0;
   
   private var o9258:int = 0;
   
   private var o13684:Boolean = false;
   
   private var o14878:Boolean = false;
   
   private var o12994:Boolean = false;
   
   private var o9570:Boolean = false;
   
   private var o19110:Boolean = false;
   
   private var o4214:Boolean = false;
   
   private var o20533:Boolean = false;
   
   private var o12878:uint = 0;
   
   private var o1486:o4332 = null;
   
   private var o9357:o4332 = null;
   
   private var o8966:o4039 = null;
   
   private var o20651:o10262 = null;
   
   function o20436()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:* = null;
      o9258 = param2.readShort();
      o20533 = param2.readBoolean();
      o19110 = param2.readBoolean();
      o13684 = param2.readBoolean();
      o7266 = param2.readShort();
      o4214 = param2.readBoolean();
      o14878 = param2.readBoolean();
      o12745 = param2.readShort();
      o9570 = param2.readBoolean();
      this.name = "FailSafeTeleportZone";
      body = o4519.o8116.o9869.o1968(2);
      o12878 = o8723.o20122;
      if(o4214)
      {
         o12878 = o12878 ^ o8723.o2823;
      }
      if(o19110)
      {
         o12878 = o12878 ^ o8723.o32;
         o12878 = o12878 ^ o8723.o3732;
      }
      o20651 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc3_:o13848 = o4519.o9721.o7352[o9258];
      o8966 = o4519.o8116.o20600.o15803(o8723.o9077,o12878,o12878,true);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(_loc3_.o6041[0].id);
      var _loc7_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc9_:int = 0;
      var _loc8_:* = _loc7_;
      for each(var _loc4_ in _loc7_)
      {
         _loc6_ = new o17761(o20651.o2535);
         _loc6_.o14486(_loc4_);
         o8966.o10289 = _loc6_.id;
         o20651.o14230(o8966);
      }
   }
   
   public function o14456() : Boolean
   {
      if(!o12994)
      {
         return o12316();
      }
      return false;
   }
   
   public function o7526() : Boolean
   {
      if(o12994)
      {
         return o12316();
      }
      return false;
   }
   
   private function o12316() : Boolean
   {
      try
      {
         if(!o12994)
         {
            if(o8966)
            {
               o20651.o15676(o8723.o9077);
               o20651.o15838(o8966.o6365);
               o20651.o16280(this,o8273.o7087,o745);
               o12994 = true;
            }
            else
            {
               o8339("Failsafe Teleport Zone: Fixture not setup correctly or destroyed");
            }
         }
         else if(o8966)
         {
            o20651.o15676(o8723.o10217);
            o20651.o15838(o8723.o10217);
            o20651.o12657(o8273.o7087,o745);
            o12994 = false;
         }
         else
         {
            o8339("Failsafe Teleport Zone: Fixture not setup correctly or destroyed");
         }
      }
      catch(o7367:Error)
      {
         o8339(o7367.name,o7367.errorID,o7367.o1216);
         var _loc2_:Boolean = false;
         return _loc2_;
      }
      return true;
   }
   
   private function o745(param1:o663) : void
   {
      var _loc2_:* = null;
      if(this.o5836)
      {
         return;
      }
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(o19110 && _loc3_)
      {
         o13481(_loc3_);
      }
      else
      {
         _loc2_ = o4519.o8116.o2996.o14389(param1.o11541) as o18442;
         if(o4214 && _loc2_)
         {
            if(o9570 && _loc2_.o18200 && _loc2_.o2840 != 1)
            {
               return;
            }
            o7627(_loc2_);
         }
      }
   }
   
   private function o13481(param1:o17517) : void
   {
      var _loc2_:o18509 = null;
      if(o13684)
      {
         _loc2_ = o12431(o7266,param1.o5973);
      }
      else
      {
         _loc2_ = o3806(o7266);
      }
      if(_loc2_)
      {
         param1.body.o8564(_loc2_.x,_loc2_.y);
         if(param1.o5973 == o4519.o13206.o2685.id)
         {
            param1.o15315(_loc2_);
         }
      }
   }
   
   private function o7627(param1:o18442) : void
   {
      var _loc2_:o18509 = null;
      if(o14878)
      {
         _loc2_ = o12431(o12745,param1.o5973);
      }
      else
      {
         _loc2_ = o3806(o12745);
      }
      if(_loc2_)
      {
         param1.body.o8564(_loc2_.x,_loc2_.y);
      }
   }
   
   private function o12431(param1:int, param2:int) : o18509
   {
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[param1].o6041[0].id);
      var _loc3_:int = o4519.o8116.random.o10418(param2) * _loc5_.length;
      var _loc4_:o18509 = _loc5_[_loc3_ % _loc5_.length];
      return _loc4_;
   }
   
   private function o3806(param1:int) : o18509
   {
      var _loc2_:o4332 = o4519.o9721.o12831(param1);
      return new o18509(_loc2_.position.x,_loc2_.position.y);
   }
   
   override public function o19115() : void
   {
      super.o19115();
      if(o1486)
      {
         o1486.o19115();
      }
      if(o9357)
      {
         o9357.o19115();
      }
      if(o8966)
      {
         o8966.o19115();
      }
      if(o20651)
      {
         o20651.o19115();
      }
      o1486 = null;
      o9357 = null;
      o8966 = null;
      o20651 = null;
   }
}
