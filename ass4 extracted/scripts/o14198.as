package
{
   import flash.display.Sprite;
   
   public class o14198 extends Sprite
   {
       
      
      public function o14198()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3932;
      }
   }
}

import flash.events.Event;
import flash.utils.Dictionary;

class o3932 extends o7848
{
    
   
   private var o14058:Number = 80;
   
   private var o5725:Number;
   
   private var o4312:Number;
   
   private var o3:int;
   
   private var o1432:o7848;
   
   private var o15710:Dictionary;
   
   function o3932()
   {
      o15710 = new Dictionary();
      super();
   }
   
   public function o16955(param1:int, param2:o7848, param3:Number, param4:Number, param5:int) : void
   {
      this.o1432 = param2;
      this.o5725 = param3;
      this.o4312 = param4;
      this.o3 = param5;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      var _loc9_:o17761 = new o17761(_loc6_.o2535);
      _loc9_.o16716(o14058);
      var _loc7_:o4039 = o4519.o8116.o20600.o15803(o8723.o19394,o8723.o19175,o8723.o19175,true);
      _loc7_.o10289 = _loc9_.id;
      _loc6_.o14230(_loc7_);
      super.o10783(param1,_loc6_,_loc8_,o4519.o8116.o11676);
      _loc8_.o16990 = o11381.o13286;
      o16166.o10589("assets.enemies.boss1Zombie.Attack1Vomit2");
      o16166.o13786(o14972);
      o16166.play();
      o1051.o9310(this,param4,o9698);
   }
   
   public function o14972(param1:String) : void
   {
      var _loc3_:int = 0;
      var _loc4_:* = null;
      var _loc2_:Vector.<o10262> = o4519.o8116.o9869.o8182(body);
      _loc3_ = 0;
      while(_loc3_ < _loc2_.length)
      {
         _loc4_ = o4519.o8116.o2996.o14389(_loc2_[_loc3_]) as o17517;
         if(_loc4_ && !_loc4_.o12487)
         {
            if(o15710[_loc4_] == null)
            {
               o15710[_loc4_] = _loc4_.o13423(o5725,-1,o3,o1432,this);
            }
         }
         _loc3_++;
      }
      body.o16280(this,o8273.o7087,o19884);
      body.o16280(this,o8273.o20083,o12836);
      o16166.o3030("loop");
      o16166.o12265 = true;
      o16166.o13786(null);
   }
   
   private function o19884(param1:o663) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null && !_loc2_.o12487)
      {
         if(o15710[_loc2_] == null)
         {
            o15710[_loc2_] = _loc2_.o13423(o5725,-1,o3,o1432,this);
         }
      }
   }
   
   private function o12836(param1:o18091) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         _loc2_.o17092(o15710[_loc2_]);
         o15710[_loc2_] = null;
      }
   }
   
   private function o9698() : void
   {
      body.o12657(o8273.o7087,o19884);
      body.o12657(o8273.o20083,o12836);
      var _loc3_:int = 0;
      var _loc2_:* = o15710;
      for(var _loc1_ in o15710)
      {
         _loc1_.o17092(o15710[_loc1_]);
      }
      o16166.o12265 = false;
      o16166.o3030("end");
      o16166.play();
      o16166.o16280(this,o1490.o16612,o6927);
   }
   
   private function o6927(param1:Event) : void
   {
      o4519.o9721.o2075.o471(o6691);
      var _loc4_:int = 0;
      var _loc3_:* = o15710;
      for(var _loc2_ in o15710)
      {
         _loc2_.o17092(o15710[_loc2_]);
      }
      o19115();
   }
   
   private function o1369() : void
   {
      o4519.o8116.o6169.o1701(26);
   }
}
