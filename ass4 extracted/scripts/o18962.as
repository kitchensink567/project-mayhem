package
{
   import flash.display.Sprite;
   
   public class o18962 extends Sprite
   {
       
      
      public function o18962()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o11269;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o11269 extends o15755
{
    
   
   private const o6982:int = 2;
   
   private var o706:int = 0;
   
   private var o9035:Number = 390.0;
   
   private var o13508:Number = 0;
   
   private var o3840:int = 0;
   
   private var o5627:Number = 240.0;
   
   private var o13215:Number = 330.0;
   
   private const o2862:Number = 0.7;
   
   private var o13875:Boolean = false;
   
   function o11269()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      super.o16955(o5973);
      o4519.o13206.o16280(this,o8694.o1956,function(param1:o11210):void
      {
         if(param1.o13743 == 77)
         {
            o4519.o8116.profileData.o202.o10318();
         }
      });
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o13508 = 0;
      o3840 = o10176.o13327();
      if(o3840 == 1)
      {
         o9035 = o9035 * 0.7;
         o5627 = o5627 * 0.7;
         o13215 = o13215 * 0.7;
      }
      o16015();
      var _loc2_:* = o4519.o8116.o2996.o20716("lastDoor");
      _loc2_.o1373(o13215);
      o1051.o9310(this,o13215,o1909);
      o1051.o9310(this,2,o821);
      o1051.o9310(this,o5627,o12675);
      o1051.o9310(this,o9035,o20364);
      o1051.o4767(this,1,o7664,o9035);
   }
   
   private function o12675() : void
   {
      o4519.o13206.dispatchData(new o11210(69));
      o4519.o13206.dispatchData(new o11210(96));
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message13");
      o4519.o8116.o20488.o2251(2,_loc1_);
   }
   
   private function o16015() : void
   {
      o4519.o8116.o20488.o9874("onslaughtMapArrow0",false);
      o4519.o8116.o20488.o9874("onslaughtMapArrow0b",false);
      o4519.o8116.o20488.o9874("onslaughtMapArrow1",false);
   }
   
   private function o821() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message8");
      o4519.o8116.o20488.o2251(2,_loc1_);
      o1051.o9310(this,5,o10026);
      o1051.o9310(this,50,o20270);
   }
   
   private function o10026() : void
   {
      o4519.o8116.o20488.o13122("onslaughtMapArrow0");
      o4519.o8116.o20488.o13122("onslaughtMapArrow0b");
   }
   
   private function o20270() : void
   {
      o4519.o8116.o20488.o12056("onslaughtMapArrow0");
      o4519.o8116.o20488.o12056("onslaughtMapArrow0b");
   }
   
   private function o1909() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message9");
      o4519.o8116.o20488.o2251(2,_loc1_);
      o1051.o9310(this,5,o18367);
      o1051.o9310(this,35,o2707);
   }
   
   private function o18367() : void
   {
      o4519.o8116.o20488.o13122("onslaughtMapArrow1");
   }
   
   private function o2707() : void
   {
      o4519.o8116.o20488.o12056("onslaughtMapArrow1");
   }
   
   private function o7664() : void
   {
      var _loc1_:* = 1;
      o13508 = o13508 + _loc1_;
      o4519.o8116.o20488.o19411 = o5773.o10403(o9035 - o13508);
   }
   
   private function o20364() : void
   {
      o706 = o1051.o4767(this,1,o872,0);
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message11");
      o4519.o8116.o20488.o2251(2,_loc1_);
   }
   
   private function o872() : void
   {
      var _loc1_:Array = o4519.o8116.o2996.o20698(o18442);
      if(_loc1_.length == 0)
      {
         o2189();
      }
   }
   
   private function o2189() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(2);
      dispatchData(new o2149(this,_loc1_,true,false,2));
   }
   
   private function o5481() : void
   {
      if(o13875)
      {
         return;
      }
      o13875 = true;
      o1051.o19115(o706);
      o4519.o13206.o20582 = true;
      o4519.o8116.o20488.o20575(1);
      o1051.o9310(this,8,o15789);
      o1051.o9310(this,15,o13197);
   }
   
   private function o15789() : void
   {
      var _loc1_:String = o4519.o8116.profileData.o10206("dialogMessage.onslaughtMessages.message12");
      o4519.o8116.o20488.o2251(2,_loc1_);
      o4519.o13206.o16821(12,7);
      o4519.o8116.o8756.o2282.o17511();
      o7911();
   }
   
   private function o13197() : void
   {
      var _loc2_:Number = NaN;
      var _loc3_:* = o4519.o8116.o2996.o20716("mainDoor1");
      var _loc1_:* = o4519.o8116.o2996.o20716("mainDoor2");
      if(_loc3_ != null && _loc1_ != null && !_loc3_.o6955 && !_loc1_.o6955)
      {
         o4519.o8116.o12094.setAchievement(379,1);
      }
      if(o4519.o32.level == 1)
      {
         _loc2_ = o4519.o8116.profileData.o5292.o923.o4481(o4519.o8116.profileData.o7923.o7211 + o4519.o32.o7211);
         if(_loc2_ > 0)
         {
         }
         o4519.o32.o17014(_loc2_);
      }
      o4519.o13206.o14994();
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(!(int(_loc3_) - 2))
      {
         o5481();
      }
   }
   
   private function o7911() : void
   {
      o4519.o8116.o4812.o10460.o13861.play(1);
   }
}
