package
{
   import flash.display.Sprite;
   
   public class o4254 extends Sprite
   {
       
      
      public function o4254()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19244;
      }
   }
}

import flash.events.Event;
import flash.utils.Dictionary;

class o19244 extends o7848
{
   
   private static var o9100:Number = 20;
    
   
   private var o7165:Number;
   
   private var o3:int;
   
   private var o1432:o7848;
   
   private var o15710:Dictionary;
   
   function o19244()
   {
      o15710 = new Dictionary();
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.enemies.spitter.Spitpool");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:o7848, param3:Number, param4:Number, param5:int) : void
   {
      this.o7165 = param3 / param4;
      this.o3 = param5;
      this.o1432 = param2;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o4332 = o4519.o8116.o11954.o10869();
      var _loc9_:o17761 = new o17761(_loc6_.o2535);
      _loc9_.o16716(o9100);
      var _loc7_:o4039 = o4519.o8116.o20600.o15803(o8723.o19394,o8723.o19175,o8723.o19175,true);
      _loc7_.o10289 = _loc9_.id;
      _loc6_.o14230(_loc7_);
      super.o10783(param1,_loc6_,_loc8_,o4519.o8116.o11676);
      o16166.o10589("assets.enemies.spitter.Spitpool");
      _loc8_.o16990 = o11381.o15193;
      o16166.o3030("loop");
      o16166.o11("loop");
      o16166.o12265 = true;
      o16280(this,o17197.o9663,o9441);
      o16280(this,o17197.o250,o9591);
      o1051.o9310(this,param4,o8131);
   }
   
   private function o9441(param1:o15259) : void
   {
      var _loc2_:o17517 = param1.o11541 as o17517;
      if(_loc2_ != null && !_loc2_.o7694 && !_loc2_.o12487)
      {
         if(o15710[_loc2_] == null)
         {
            o15710[_loc2_] = _loc2_.o13423(o7165,-1,o3,o1432,this);
         }
      }
   }
   
   private function o9591(param1:o19222) : void
   {
      var _loc2_:o17517 = param1.o11541 as o17517;
      if(o15710[_loc2_] != null)
      {
         _loc2_.o17092(o15710[_loc2_]);
         o15710[_loc2_] = null;
      }
   }
   
   private function o8131(param1:Event = null) : void
   {
      o12657(o17197.o9663,o9441);
      o12657(o17197.o250,o9591);
      var _loc4_:int = 0;
      var _loc3_:* = o15710;
      for(var _loc2_ in o15710)
      {
         _loc2_.o17092(o15710[_loc2_]);
      }
      o16166.o3030("fade");
      o16166.o11("fade");
      o16166.o12265 = false;
      o16166.o16280(this,o1490.o16612,o8456);
   }
   
   private function o8456(param1:Event) : void
   {
      o19115();
   }
}
