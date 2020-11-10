package
{
   import flash.display.Sprite;
   
   public class o7307 extends Sprite
   {
       
      
      public function o7307()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15747;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o15747 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o14773,o13351.o10420,"square chair? (otherwise circle)"],[3,o17243.float,o13351.o10420,"width (radius)"]];
    
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o5647:Number = 0.4;
   
   private var o20649:Number = 0.35;
   
   function o15747()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = param2.readShort();
      var _loc10_:Boolean = param2.readBoolean();
      var _loc6_:Number = param2.readFloat();
      var _loc7_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc7_.o16990 = o11381.o12714;
      var _loc11_:Number = 200;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0);
      var _loc9_:o17761 = new o17761(_loc3_.o2535);
      if(_loc10_)
      {
         _loc9_.o10827(-_loc6_ / 2,-_loc6_ / 2,_loc6_,_loc6_);
         o30 = _loc6_ / 2;
      }
      else
      {
         _loc9_.o16716(_loc6_);
         o30 = _loc6_;
      }
      var _loc8_:* = o8723.o32 | o8723.o3732 | o8723.o12624 | o8723.o2823 | o8723.o619;
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc8_,_loc8_);
      _loc4_.o10289 = _loc9_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o16687(_loc7_.rotation);
      _loc3_.o8564(_loc7_.position.x,_loc7_.position.y);
      _loc3_.o16280(this,o8273.o7087,o7087);
      o1589 = _loc11_;
      o11243 = _loc11_;
      super.o10783(param1,_loc3_,_loc7_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc2_:o18509 = o15460.o4078;
      _loc2_.x = this.body.o2697.x - param1.o11541.position.x;
      _loc2_.y = this.body.o2697.y - param1.o11541.position.y;
      o317(200,_loc2_.rotation);
   }
   
   override public function o5725(param1:o4016) : void
   {
      o317(param1.amount,param1.o1487);
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number, param2:Number) : void
   {
      amount = param1;
      o1487 = param2;
      if(o11243 <= 0)
      {
         return;
      }
      o11243 = o11243 - amount;
      if(o11243 <= 0)
      {
         o6691.rotation = o1487;
         body.o16687(o1487);
         o4929(0,0,0,0,0,0);
         var o12034:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o19817.play(o20649,0,0,false,o12034.o10088());
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o6180;
         body.o19115();
         o16166.o16280(this,o1490.o16612,function(param1:Event):void
         {
            o4519.o9721.o2075.o471(o6691);
            o6691 = null;
            o19115();
         });
      }
   }
   
   private function o10492(param1:Boolean = false) : void
   {
      if(o8289())
      {
         return;
      }
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         o4519.o8116.o4812.o4404.o8918.play(o5647,0,0,false,_loc2_.o10088());
      }
   }
}
