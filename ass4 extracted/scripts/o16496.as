package
{
   import flash.display.Sprite;
   
   public class o16496 extends Sprite
   {
       
      
      public function o16496()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o20473;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o20473 extends o10384
{
   
   private static const o1057:int = 1;
   
   private static const o20791:int = 2;
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o8809,o13351.o10420,"stat class"]];
    
   
   private var o12487:Boolean = false;
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o5260:Boolean = false;
   
   private var o10277:Number = 0;
   
   private var o8655:Number = 0;
   
   private var o5647:Number = 0.55;
   
   private var o15545:o7848;
   
   private var o19505:o7848;
   
   function o20473()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:* = NaN;
      var _loc11_:Number = NaN;
      var _loc19_:Boolean = false;
      var _loc21_:Boolean = false;
      var _loc16_:Boolean = false;
      var _loc14_:Boolean = false;
      var _loc13_:Number = NaN;
      var _loc8_:* = NaN;
      var _loc15_:* = NaN;
      var _loc18_:* = NaN;
      if(param2 == null)
      {
         return;
      }
      o9153 = true;
      o12086 = false;
      var _loc6_:int = param2.readShort();
      var _loc12_:int = param2.readInt();
      var _loc17_:o4332 = o4519.o9721.o12831(_loc6_);
      switch(int(_loc12_) - 1)
      {
         case 0:
            _loc17_.o16990 = o11381.o18806;
            _loc3_ = 18;
            _loc11_ = 250;
            o5260 = true;
            o8655 = o4519.o8116.o4550(3.5);
            o10277 = 1200;
            _loc19_ = false;
            _loc21_ = true;
            _loc16_ = false;
            _loc14_ = true;
            _loc13_ = 350;
            _loc8_ = 5;
            _loc15_ = 15;
            _loc18_ = 0;
            break;
         case 1:
            _loc17_.o16990 = o11381.o18806;
            _loc3_ = 25;
            _loc11_ = 500;
            o5260 = true;
            o8655 = o4519.o8116.o4550(4);
            o10277 = 2500;
            _loc19_ = false;
            _loc21_ = true;
            _loc16_ = false;
            _loc14_ = true;
            _loc13_ = 550;
            _loc8_ = 5;
            _loc15_ = 15;
            _loc18_ = 0;
      }
      var _loc4_:o10262 = o4519.o8116.o9869.o1968(!!_loc14_?1:0,_loc8_,false,false);
      var _loc10_:o17761 = new o17761(_loc4_.o2535);
      _loc10_.o16716(_loc3_);
      var _loc9_:* = int(o8723.o10217);
      var _loc7_:* = 0;
      if(_loc19_)
      {
         _loc9_ = _loc9_ ^ o8723.o17798;
      }
      else if(_loc21_)
      {
         _loc7_ = _loc7_ | o8723.o17798;
      }
      if(_loc11_ == 0)
      {
         o12487 = true;
      }
      else if(_loc16_)
      {
         _loc7_ = _loc7_ | o8723.o17079;
      }
      var _loc5_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc9_,_loc7_,false,_loc15_,_loc18_);
      _loc5_.o10289 = _loc10_.id;
      _loc4_.o14230(_loc5_);
      _loc4_.o16687(_loc17_.rotation);
      _loc4_.o8564(_loc17_.position.x,_loc17_.position.y);
      _loc4_.o7191 = _loc13_;
      var _loc20_:int = o4519.o8116.o20488.o10608.level;
      o1589 = _loc11_;
      o11243 = _loc11_;
      super.o10783(param1,_loc4_,_loc17_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
      o4519.o13206.o3861("assets.effects.explosion1");
   }
   
   override public function o5725(param1:o4016) : void
   {
      o15545 = param1.o16334;
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
      amount = param1;
      o9968 = param2;
      o3 = param3;
      if(o11243 <= 0)
      {
         return;
      }
      if(o12487)
      {
         return;
      }
      o11243 = o11243 - amount;
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
         o16166.o16280(this,o1490.o16612,function(param1:Event):void
         {
            o19115();
         });
      }
      else
      {
         var o3031:int = Math.ceil((1 - o11243 / o1589) * 3);
         o16166.gotoAndStop(o3031 - 1);
         var o12034:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         if(!o9968 && o3 == 1)
         {
            o4519.o8116.o4812.o4404.o18609.play(o5647,0,0,false,o12034.o10088());
         }
      }
   }
   
   override public function o19115() : void
   {
      super.o19115();
   }
   
   private function o19344() : void
   {
      o19505 = this;
      o4519.o13206.o16821(10,0.2);
      var o12034:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o4335.play(0.5,0,0,false,o12034.o10088());
      var o20325:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(o20325 != null)
      {
         o20325.o6691.position.x = body.o2697.x;
         o20325.o6691.position.y = body.o2697.y;
         o20325.o6691.scaleX = o8655 * 0.8 / 70;
         o20325.o6691.scaleY = o8655 * 0.8 / 70;
      }
      o4519.o8116.o2996.o9685(o18442,body.position.x,body.position.y,o8655,o8723.o17798,o8723.o3969 | o8723.o18180).defer(function(param1:Array):void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_ = o15460.o4078;
            _loc3_.x = _loc2_.body.o2697.x - body.o2697.x;
            _loc3_.y = _loc2_.body.o2697.y - body.o2697.y;
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(o10277,1,o15545,o19505,_loc3_.rotation,0.1));
         }
      });
      o4519.o8116.o2996.o9685(o10384,body.position.x,body.position.y,o8655,o8723.o17798,o8723.o3969 | o8723.o18180).defer(function(param1:Array):void
      {
         var _loc2_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(param1 is o9347 == false)
            {
               _loc2_ = o15460.o4078;
               _loc2_.x = _loc3_.body.o2697.x - body.o2697.x;
               _loc2_.y = _loc3_.body.o2697.y - body.o2697.y;
               o4519.o8116.o8361.o5725(_loc3_,o4016.o10062().initialise(o10277,1,o15545,o19505,_loc2_.rotation));
            }
         }
      });
   }
}
