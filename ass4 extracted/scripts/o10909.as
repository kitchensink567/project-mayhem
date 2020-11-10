package
{
   import flash.display.Sprite;
   
   public class o10909 extends Sprite
   {
       
      
      public function o10909()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o7802;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o7802 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"Node Location"],[2,o17243.o8809,o13351.o10420,"Spawn Chance"]];
    
   
   private const o181:int = 100;
   
   private const o19717:int = 66;
   
   private const o18515:int = 33;
   
   private const o5439:int = 0;
   
   private const o13963:int = 1000;
   
   private var o11243:Number = 1000;
   
   private var o1589:Number = 1000;
   
   private var o14347:Number = 100.0;
   
   private var o6955:Boolean = false;
   
   private var enabled:Boolean = false;
   
   private var o7258:Boolean = false;
   
   private var fixture:o4039 = null;
   
   private var o15882:o20567;
   
   function o7802()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc9_:int = 0;
      var _loc7_:int = 0;
      var _loc3_:int = 0;
      var _loc5_:int = param2.readShort();
      this.o14347 = param2.readInt();
      this.o14347 = 50;
      o15882 = o4519.o8116.o476.o9392.o7908();
      var _loc4_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc4_.o16990 = o11381.o7800;
      body = o4519.o8116.o9869.o1968(0,0,false);
      var _loc6_:o17761 = new o17761(body.o2535);
      _loc6_.o16716(24);
      fixture = o4519.o8116.o20600.o15803(o6365,o8723.o10217,o8723.o619);
      fixture.o10289 = _loc6_.id;
      body.o14230(fixture);
      body.o13392(new o18509(_loc4_.position.x,_loc4_.position.y));
      var _loc8_:int = o10176.o13327();
      o1589 = 1000 * _loc8_;
      o11243 = 1000 * _loc8_;
      super.o10783(param1,body,_loc4_,o4519.o8116.o11676);
      if(o15882 && o15882.o17645.length >= 1)
      {
         _loc9_ = o4519.o8116.random.o10418(this.o5973 * 458321) * 100;
         _loc7_ = _loc9_ % o15882.o17645.length;
         o16166.o10589(o15882.o17645[_loc7_]);
      }
      this.o16166.o5388(100.toString());
      if(o15882 && o15882.o17645.length >= 1)
      {
         _loc3_ = o4519.o8116.random.o10418(param1 * 458321) * 100;
         if(_loc3_ <= o14347)
         {
            enabled = true;
         }
      }
      else
      {
         enabled = false;
      }
      o4519.o13206.o16280(this,o16450.o9745,o14155);
   }
   
   public function o14155(param1:Event) : void
   {
      if(enabled == false)
      {
         o19115();
      }
   }
   
   override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
   {
      if(this.o6955)
      {
         return;
      }
      o317(param1);
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(this.o6955)
      {
         return;
      }
      o317(param1.amount);
   }
   
   private function o317(param1:Number) : void
   {
      o11243 = o11243 - param1;
      var _loc2_:int = o11243 / o1589 * 100;
      if(o11243 <= 0)
      {
         this.o16166.o5388(0.toString());
         enabled = false;
         o6955 = true;
      }
      else if(_loc2_ <= 33)
      {
         this.o16166.o5388(33.toString());
      }
      else if(_loc2_ <= 66)
      {
         this.o16166.o5388(66.toString());
      }
      if(o6955 && o7258 == false)
      {
         body.o19977(fixture.id);
         o6691.o16990 = o11381.o6180;
         o12675();
         body.o19115();
      }
   }
   
   public function o12675() : void
   {
      var _loc1_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
      var _loc2_:o6743 = o4519.o8116.o2996.o2998(_loc1_,[new o18509(body.position.x,body.position.y),o1197.o311,0]) as o6743;
      if(_loc2_)
      {
         o7258 = true;
      }
   }
   
   override public function o19115() : void
   {
      super.o19115();
      if(fixture)
      {
         fixture.o19115();
      }
      fixture = null;
   }
}
