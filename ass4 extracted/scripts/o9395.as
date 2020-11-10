package
{
   import flash.display.Sprite;
   
   public class o9395 extends Sprite
   {
       
      
      public function o9395()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19017;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o19017 extends o9347
{
   
   public static var o20272:Array = [[9,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"barrier graph"],[2,o17243.o2013,o13351.o10420,"imageL"],[11,o17243.o2013,o13351.o10420,"imageL open"],[14,o17243.o2013,o13351.o10420,"imageR"],[12,o17243.o2013,o13351.o10420,"imageR open"],[13,o17243.float,o13351.o10420,"open/close anim time"],[3,o17243.float,o13351.o10420,"time till opens"],[8,o17243.float,o13351.o10420,"health base"],[5,o17243.o14773,o13351.o10420,"projectiles pass through"],[6,o17243.o14773,o13351.o10420,"projectiles hurt"],[7,o17243.o14773,o13351.o10420,"enemies hurt"],[4,o17243.o2013,o13351.o5585,"image to remove when open"],[10,o17243.o8809,o13351.o5585,"spawn event ID"]];
   
   protected static const o6500:int = 3;
    
   
   private var o18197:o4332;
   
   private var o10717:o4332;
   
   private var o2952:o18509;
   
   private var o4408:o18509;
   
   private var o7100:o18509;
   
   private var o15475:o18509;
   
   private var o12723:Number;
   
   private var o16829:Number;
   
   private var o9559:Number = 0;
   
   private var o19851:o4332 = null;
   
   private var o5932:int = -1;
   
   private var o19680:Boolean = false;
   
   private var o16136:Number = 0;
   
   private var o20548:int = 0;
   
   function o19017()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc9_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      var _loc13_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      o16829 = param2.readFloat();
      o12723 = 1 / (30 * o16829);
      o18197 = o4519.o9721.o12831(_loc7_);
      o10717 = o4519.o9721.o12831(_loc13_);
      o2952 = new o18509(o18197.position.x,o18197.position.y);
      o4408 = new o18509(o10717.position.x,o10717.position.y);
      var _loc14_:o4332 = o4519.o9721.o12831(_loc12_);
      var _loc10_:o4332 = o4519.o9721.o12831(_loc3_);
      o7100 = new o18509(_loc14_.position.x,_loc14_.position.y);
      o15475 = new o18509(_loc10_.position.x,_loc10_.position.y);
      o4519.o8116.o11954.o11867(_loc14_);
      o4519.o8116.o11954.o11867(_loc10_);
      o16136 = param2.readFloat();
      var _loc8_:Number = param2.readFloat();
      var _loc15_:Boolean = param2.readByte();
      var _loc16_:Boolean = param2.readByte();
      var _loc11_:Boolean = param2.readByte();
      var _loc6_:int = param2.readShort();
      o20548 = param2.readInt();
      if(_loc6_ != 0)
      {
         o19851 = o4519.o9721.o12831(_loc6_);
      }
      var _loc5_:uint = o8723.o10217;
      var _loc4_:uint = 0;
      if(_loc15_)
      {
         _loc5_ = _loc5_ ^ o8723.o17798;
      }
      else if(_loc16_)
      {
         _loc4_ = _loc4_ | o8723.o17798;
      }
      if(_loc8_ == 0)
      {
         o12487 = true;
      }
      else if(_loc11_)
      {
         _loc4_ = _loc4_ | o8723.o17079;
         _loc4_ = _loc4_ | o8723.o42;
      }
      super.o2348(param1,_loc9_,_loc7_,_loc5_,_loc4_,_loc8_);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o5932 = o1051.o9310(this,o16136,o7703);
   }
   
   public function o1373(param1:Number) : void
   {
      o1051.o19115(o5932);
      o5932 = o1051.o9310(this,param1,o7703);
   }
   
   private function o7703() : void
   {
      if(o6955)
      {
         return;
      }
      if(o19680)
      {
         return;
      }
      o1051.o4767(this,0.0333333333333333,o18998,30 * o16829);
      if(o20548 != 0)
      {
         o4519.o13206.dispatchData(new o11210(o20548));
      }
      body.o19115();
      if(o19851)
      {
         o4519.o8116.o11954.o11867(o19851);
      }
   }
   
   private function o18998() : void
   {
      o9559 = o9559 + o12723;
      if(o9559 > 1)
      {
         o9559 = 1;
      }
      o18197.position.x = o2952.x + (o7100.x - o2952.x) * o9559;
      o18197.position.y = o2952.y + (o7100.y - o2952.y) * o9559;
      o10717.position.x = o4408.x + (o15475.x - o4408.x) * o9559;
      o10717.position.y = o4408.y + (o15475.y - o4408.y) * o9559;
   }
}
