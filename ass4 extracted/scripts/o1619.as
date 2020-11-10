package
{
   import flash.display.Sprite;
   
   public class o1619 extends Sprite
   {
       
      
      public function o1619()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3477;
      }
   }
}

import flash.events.Event;
import flash.utils.Dictionary;

class o3477 extends o7848
{
   
   private static var o9100:Number = 20;
    
   
   private var o5725:Number;
   
   private var o3:int;
   
   private var o1432:o7848;
   
   private var o15069:Boolean;
   
   private var o18640:int = 0;
   
   private var o20305:int = -1;
   
   private var o18532:Number = 0;
   
   private var o16257:int = 0;
   
   private var o7753:Number = 0;
   
   private var o1783:int = -1;
   
   private var o422:Dictionary;
   
   function o3477()
   {
      o422 = new Dictionary();
      super();
   }
   
   public function o16955(param1:int, param2:o7848, param3:Number, param4:Number, param5:int, param6:int, param7:Number, param8:int, param9:Number, param10:int, param11:Boolean = false) : void
   {
      this.o5725 = param3;
      this.o3 = param5;
      this.o1432 = param2;
      this.o15069 = param11;
      this.o18640 = param6;
      this.o18532 = param7;
      this.o16257 = param8;
      this.o7753 = param9;
      this.o1783 = param10;
      var _loc12_:o10262 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc15_:o4332 = o4519.o8116.o11954.o10869();
      var _loc14_:o17761 = new o17761(_loc12_.o2535);
      _loc14_.o16716(o9100);
      var _loc13_:o4039 = o4519.o8116.o20600.o15803(o8723.o17798,o8723.o2823,o8723.o2823,true);
      _loc13_.o10289 = _loc14_.id;
      _loc12_.o14230(_loc13_);
      super.o10783(param1,_loc12_,_loc15_,o4519.o8116.o11676);
      o16166.o10589("assets.effects.FurieAcidPool");
      _loc15_.o16990 = o11381.o15193;
      o16166.o3030("loop");
      o16166.o11("loop");
      o16166.o12265 = true;
      if(!param11)
      {
         o16280(this,o17197.o9663,o6694);
         o16280(this,o17197.o250,o12206);
      }
      o20305 = o1051.o9310(this,param4,o8131);
   }
   
   private function o6694(param1:o15259) : void
   {
      if(o18640 <= 0 || o5836)
      {
         return;
      }
      var _loc2_:o18442 = param1.o11541 as o18442;
      if(_loc2_ != null)
      {
         if(o422[_loc2_] != null)
         {
            if(_loc2_.o10281(o422[_loc2_]))
            {
               _loc2_.o977(o422[_loc2_],-1);
               o7363(_loc2_);
            }
            else
            {
               o422[_loc2_] = _loc2_.o13423(o5725 / o16257,-1,o3,o1432,this,8,o7753,o1783);
               o7363(_loc2_);
               o18640 = Number(o18640) - 1;
            }
         }
         else
         {
            o422[_loc2_] = _loc2_.o13423(o5725 / o16257,-1,o3,o1432,this,8,o7753,o1783);
            o7363(_loc2_);
            o18640 = Number(o18640) - 1;
         }
      }
      if(o18640 == 0)
      {
         o1051.o19115(o20305);
         o8131();
      }
   }
   
   private function o7363(param1:o18442) : void
   {
      var _loc2_:* = null;
      if(o18532 > 0 && param1 is o6925)
      {
         _loc2_ = o6925(param1);
         o4519.o8116.o8361.o20009(_loc2_,o2940.o19216().initialise(o5973,3,o18532,o16257));
      }
   }
   
   private function o12206(param1:o19222) : void
   {
      var _loc2_:o18442 = param1.o11541 as o18442;
      if(_loc2_ && o422[_loc2_] != null)
      {
         _loc2_.o977(o422[_loc2_],o16257);
         o7363(_loc2_);
      }
   }
   
   private function o8131(param1:Event = null) : void
   {
      o16166.o3030("fade");
      o16166.o11("fade");
      o16166.o12265 = false;
      o16166.o16280(this,o1490.o16612,o8456);
   }
   
   private function o8456(param1:Event) : void
   {
      var _loc2_:* = null;
      if(!o15069)
      {
         var _loc5_:int = 0;
         var _loc4_:* = o422;
         for(var _loc3_ in o422)
         {
            _loc2_ = _loc3_.o14145(o422[_loc3_]);
            if(_loc2_ && _loc2_.o6193 == -1)
            {
               _loc3_.o977(o422[_loc3_],o16257);
            }
         }
      }
      o12657(o17197.o9663,o6694);
      o12657(o17197.o250,o12206);
      o1051.o19115(o20305);
      o19115();
   }
}
