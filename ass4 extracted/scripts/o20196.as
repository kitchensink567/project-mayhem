package
{
   import flash.display.Sprite;
   
   public class o20196 extends Sprite
   {
       
      
      public function o20196()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4957;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o4957 extends o15755
{
   
   public static var o20272:Array = [[6,o17243.o14773,o13351.o5585,"Wait for boss killed"],[7,o17243.o8809,o13351.o5585,"boss ID"],[8,o17243.o8809,o13351.o5585,"minion ID"]];
    
   
   private var o10799:int = 0;
   
   private var o16908:int = 0;
   
   private var o8949:Boolean = false;
   
   public var o9030:int = 0;
   
   public var o10579:int = 0;
   
   private var o1086:Boolean = false;
   
   private var o13508:Number = 0;
   
   function o4957()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:Boolean = param2.readBoolean();
      if(_loc3_)
      {
         o3047.o2154.o16280(this,o8694.o2412,o2412);
      }
      o10799 = param2.readInt();
      o16908 = param2.readInt();
   }
   
   private function o2412(param1:o6961) : void
   {
      var _loc2_:o18442 = param1.o18481;
      if(_loc2_.o12555 == o10799)
      {
         o9030 = Number(o9030) + 1;
         o8949 = true;
         _loc2_.o16280(this,o14571.o19115,o15810);
      }
      if(_loc2_.o12555 == o16908 && _loc2_.o17050)
      {
         o10579 = Number(o10579) + 1;
         _loc2_.o16280(this,o14571.o19115,o12082);
      }
   }
   
   private function o15810(param1:Event) : void
   {
      o9030 = Number(o9030) - 1;
      o1051.o9310(this,2,o10014);
   }
   
   private function o12082(param1:Event) : void
   {
      o10579 = Number(o10579) - 1;
      o1051.o9310(this,2,o10014);
   }
   
   private function o10014(param1:* = null) : void
   {
      var _loc3_:* = null;
      var _loc4_:int = 0;
      var _loc2_:* = undefined;
      if(o9030 <= 0 && o10579 <= 0 && o8949 && o1086 == false)
      {
         _loc3_ = new ByteArray();
         _loc4_ = 1;
         _loc3_.writeInt(_loc4_);
         _loc2_ = this;
         dispatchData(new o2149(_loc2_,_loc3_,true,true,2000));
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      time = param1;
      data = param2;
      var o16108:int = data.readInt();
      if(o16108 != 1)
      {
         return;
      }
      if(o1086 == false)
      {
         o1086 = true;
         o4519.o8116.o8756.o2282.o17511();
         var o1216:String = o4519.o8116.profileData.o10206("dialogMessage.podsMessages.messageBossKilled");
         o4519.o8116.o20488.o2251(2,o1216);
         o1051.o4767(this,1,o13438,20);
         o4519.o13206.o20582 = true;
         o1051.o9310(this,20,function():*
         {
            var /*UnknownSlot*/:* = function():void
            {
               o4519.o13206.o14994();
               if(o15028.o3613 == false)
               {
                  o4519.o8116.o12094.setAchievement(386,1);
               }
            };
            return function():void
            {
               o4519.o13206.o14994();
               if(o15028.o3613 == false)
               {
                  o4519.o8116.o12094.setAchievement(386,1);
               }
            };
         }());
      }
   }
   
   private function o13438() : void
   {
      o13508 = o13508 + 1;
      o4519.o8116.o20488.o19411 = o10403(20 - o13508);
   }
   
   private function o10403(param1:Number) : String
   {
      if(param1 <= 0)
      {
         return "00:00";
      }
      var _loc4_:String = "";
      if(int(param1 / 3600) > 0)
      {
         _loc4_ = _loc4_ + (int(param1 / 3600) + ":");
      }
      var _loc2_:String = String(int(param1 / 60 % 60));
      if(_loc2_.length != 2)
      {
         _loc2_ = "0" + _loc2_;
      }
      _loc4_ = _loc4_ + (_loc2_ + ":");
      var _loc3_:String = String(int(param1 % 60));
      if(_loc3_.length != 2)
      {
         _loc3_ = "0" + _loc3_;
      }
      _loc4_ = _loc4_ + _loc3_;
      return _loc4_;
   }
}
