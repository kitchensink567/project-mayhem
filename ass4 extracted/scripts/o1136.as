package
{
   import flash.display.Sprite;
   
   public class o1136 extends Sprite
   {
       
      
      public function o1136()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13054;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o13054 extends o15755
{
   
   public static var o20272:Array = [];
    
   
   private var o10238:int = 0;
   
   private var o6191:Boolean = false;
   
   private var o15882:o20567;
   
   private var o18399:Boolean = false;
   
   private var o19069:int = 6;
   
   public var o3301:int = 0;
   
   public var o13743:int = 0;
   
   public var o16459:Boolean = false;
   
   private var o1685:Boolean = false;
   
   function o13054()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      if(o4519.o8116.o476.o9392.o16643())
      {
         o15882 = o4519.o8116.o476.o9392.o7908();
         if(o15882 && o15882.id == 2)
         {
            o18399 = true;
            o19069 = 15;
         }
      }
      o16459 = false;
      o4519.o13206.o16280(this,o16450.o9745,o20191);
   }
   
   private function o20191(param1:Event) : void
   {
      o7367 = param1;
      var o7023:int = 1;
      o3301 = 0;
      var o4767:Boolean = true;
      while(o4767)
      {
         var o4512:o10384 = o4519.o8116.o2996.o20716("destroyable_" + o7023.toString()) as o10384;
         if(o4512 != null)
         {
            o4512.o16280(this,o17197.o5878,o6559);
            o10238 = Number(o10238) + 1;
            o7023 = Number(o7023) + 1;
         }
         else
         {
            o4767 = false;
         }
      }
      var o19505:* = this;
      o4519.o13206.o16280(o19505,o13732.o6191,function():void
      {
         o6191 = true;
         o1051.o9310(o19505,180,o17671);
      });
   }
   
   private function o6559(param1:Event = null) : void
   {
      var _loc2_:* = null;
      o3301 = Number(o3301) + 1;
      if(o10238 == o3301)
      {
         o4519.o8116.o12094.setAchievement(389,1);
      }
      if(o6191 == false)
      {
         return;
      }
      if(o3301 == 1)
      {
         _loc2_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgBreak1Xmas":"dialogMessage.vipMessages.msgBreak1");
         o4519.o8116.o20488.o2251(o19069,_loc2_);
      }
      else if(o1685 && o16459 == false)
      {
         o16459 = true;
         _loc2_ = o4519.o8116.profileData.o10206(!!o18399?"dialogMessage.vipMessages.msgBreak2Xmas":"dialogMessage.vipMessages.msgBreak2");
         o4519.o8116.o20488.o2251(o19069,_loc2_);
      }
   }
   
   private function o17671() : void
   {
      o1685 = true;
   }
}
