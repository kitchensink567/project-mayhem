package
{
   import flash.display.Sprite;
   
   public class o67 extends Sprite
   {
       
      
      public function o67()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18155;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o18155 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"imageL"],[11,o17243.o2013,o13351.o10420,"imageL open"],[10,o17243.o2013,o13351.o10420,"imageR"],[12,o17243.o2013,o13351.o10420,"imageR open"],[13,o17243.float,o13351.o10420,"open/close time"],[6,o17243.o2013,o13351.o10420,"door open trigger area"],[3,o17243.float,o13351.o10420,"health base"],[5,o17243.o14773,o13351.o10420,"projectiles pass through"],[7,o17243.o14773,o13351.o10420,"projectiles hurt"],[8,o17243.o14773,o13351.o10420,"enemies hurt"]];
   
   protected static const o6500:int = 3;
    
   
   private var o2953:Boolean = false;
   
   private var o406:o10262 = null;
   
   private var o12684:Number;
   
   private var o18197:o4332;
   
   private var o10717:o4332;
   
   private var o359:o7331;
   
   private var o14952:o7331;
   
   private var o2952:o18509;
   
   private var o4408:o18509;
   
   private var o7100:o18509;
   
   private var o15475:o18509;
   
   private var o12723:Number;
   
   private var o9559:Number = 0;
   
   private var o3031:int = 1;
   
   private var o4449:int = 0;
   
   function o18155()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:* = null;
      var _loc6_:* = undefined;
      var _loc4_:* = null;
      var _loc9_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc13_:int = param2.readShort();
      var _loc14_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      o12723 = 1 / (30 * param2.readFloat());
      o18197 = o4519.o9721.o12831(_loc7_);
      o10717 = o4519.o9721.o12831(_loc14_);
      o359 = o4519.o9721.o7833(_loc7_);
      o14952 = o4519.o9721.o7833(_loc14_);
      o2952 = new o18509(o18197.position.x,o18197.position.y);
      o4408 = new o18509(o10717.position.x,o10717.position.y);
      var _loc15_:o4332 = o4519.o9721.o12831(_loc13_);
      var _loc11_:o4332 = o4519.o9721.o12831(_loc3_);
      o7100 = new o18509(_loc15_.position.x,_loc15_.position.y);
      o15475 = new o18509(_loc11_.position.x,_loc11_.position.y);
      o4519.o8116.o11954.o11867(_loc15_);
      o4519.o8116.o11954.o11867(_loc11_);
      var _loc10_:int = param2.readShort();
      o12684 = param2.readFloat();
      var _loc16_:Boolean = param2.readByte();
      o10640 = param2.readByte();
      var _loc12_:Boolean = param2.readByte();
      var _loc5_:uint = o8723.o17798 | (!!_loc12_?o8723.o17079 | o8723.o42:0);
      super.o2348(param1,_loc9_,_loc7_,!!_loc16_?o8723.o10217 ^ o8723.o17798:o8723.o10217,_loc5_,o12684);
      if(_loc10_ != 0)
      {
         o406 = o4519.o8116.o9869.o1968(0,0,false);
         _loc8_ = new o17761(o406.o2535);
         _loc6_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc10_].o6041[0].id);
         _loc8_.o14486(_loc6_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.o5479,o17517.o6365,o17517.o6365,true);
         _loc4_.o10289 = _loc8_.id;
         o406.o14230(_loc4_);
         o406.o16280(this,o8273.o7087,o46);
         o406.o16280(this,o8273.o20083,o11631);
      }
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o11243 = o12684 * o10176.o6572();
      o1589 = o12684 * o10176.o6572();
      o1051.o4767(this,0.0333333333333333,o13947);
   }
   
   override protected function o317(param1:Number) : void
   {
      if(o2953)
      {
         return;
      }
      super.o317(param1);
      if(o11243 <= 0)
      {
         o359.o12265 = false;
         o359.o3030("destroyed");
         o359.o11543();
         o359.play();
         o14952.o12265 = false;
         o14952.o3030("destroyed");
         o14952.o11543();
         o14952.play();
         o6691.o16990 = o11381.o18674;
         o4519.o8116.o4812.o4404.o14442.play();
         o406.o12657(o8273.o7087,o46);
         o406.o12657(o8273.o20083,o11631);
      }
      else
      {
         o3031 = Math.ceil((1 - o11243 / o1589) * 3);
         o359.o5388("damage" + o3031);
         o14952.o5388("damage" + o3031);
      }
   }
   
   private function o46(param1:o663) : void
   {
      var _loc2_:int = 0;
      if(o6955 || o8289())
      {
         return;
      }
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_ != null)
      {
         o4449 = Number(o4449) + 1;
         _loc2_ = o4519.o8116.o2996.o20698(o17517).length;
         if(o4449 > _loc2_)
         {
            o4449 = _loc2_;
         }
         if(o4449 > 0 && !o2953)
         {
            o7433();
         }
      }
   }
   
   private function o11631(param1:o18091) : void
   {
      if(o6955 || o8289())
      {
         return;
      }
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null)
      {
         o4449 = Number(o4449) - 1;
         if(o4449 < 0)
         {
            o4449 = 0;
         }
         if(o4449 == 0 && o2953)
         {
            o13052();
         }
      }
   }
   
   private function o13947() : void
   {
      if(!o2953 && o9559 == 0)
      {
         return;
      }
      if(o2953 && o9559 == 1)
      {
         return;
      }
      if(o2953)
      {
         o9559 = o9559 + o12723;
         if(o9559 > 1)
         {
            o9559 = 1;
         }
      }
      else
      {
         o9559 = o9559 - o12723;
         if(o9559 < 0)
         {
            o9559 = 0;
         }
      }
      o18197.position.x = o2952.x + (o7100.x - o2952.x) * o9559;
      o18197.position.y = o2952.y + (o7100.y - o2952.y) * o9559;
      o10717.position.x = o4408.x + (o15475.x - o4408.x) * o9559;
      o10717.position.y = o4408.y + (o15475.y - o4408.y) * o9559;
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      o2953 = true;
      body.o15838(0);
      if(o6691 && o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14791.play(0.5,0,0,false,_loc2_.o10088());
      }
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      o2953 = false;
      body.o15838(o9288);
      if(o6691 && o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o16977.play(0.5,0,0,false,_loc2_.o10088());
      }
   }
}
