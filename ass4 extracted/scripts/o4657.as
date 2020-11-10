package
{
   import flash.display.Sprite;
   
   public class o4657 extends Sprite
   {
       
      
      public function o4657()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3552;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o3552 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"],[6,o17243.o2013,o13351.o10420,"image to hide/area of image"],[7,o17243.float,o13351.o5585,"image to hide fade time"],[3,o17243.float,o13351.o10420,"health"],[4,o17243.o14773,o13351.o10420,"players hurt"],[5,o17243.o14773,o13351.o10420,"enemies hurt"],[8,o17243.o8809,o13351.o5585,"spawn event ID"],[9,o17243.o14773,o13351.o5585,"use damage states (default: hit animation)"]];
    
   
   private var o2964:o4332 = null;
   
   private var o18877:Number = 0;
   
   private var o20548:int = 0;
   
   private var o11741:Boolean = false;
   
   private var o12684:Number;
   
   function o3552()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:* = undefined;
      var _loc9_:int = param2.readShort();
      var _loc8_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o18877 = param2.readFloat();
      o12684 = param2.readFloat();
      var _loc6_:Boolean = param2.readByte();
      var _loc5_:Boolean = param2.readByte();
      o20548 = param2.readInt();
      o11741 = param2.readBoolean();
      o8199 = o12684;
      var _loc3_:uint = (!!_loc6_?o8723.o17798:0) | (!!_loc5_?o8723.o17079 | o8723.o7778 | o8723.o42:0);
      super.o2348(param1,_loc9_,_loc8_,o8723.o10217,_loc3_,o12684);
      o16166.o12265 = false;
      if(o11741)
      {
         o16166.gotoAndStop(0);
      }
      else
      {
         o16166.o5388("hit");
         o16166.o3030("hit");
      }
      o2964 = o4519.o9721.o12831(_loc4_);
      if(o2964 == null)
      {
         _loc7_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
         o2964 = o4519.o8116.o11954.o10869();
         o2964.o16396 = o17541.o13617(_loc7_);
         o2964.position = new o2415();
         o2964.o16990 = 110;
         o4519.o8116.o11954.o9226(o2964);
      }
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o8199 = o12684 * o10176.o6572();
      o1589 = o12684 * o10176.o6572();
   }
   
   override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
   {
      o317(param1);
      var _loc6_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o18609.play(0.5,0,0,false,_loc6_.o10088());
   }
   
   override public function o5725(param1:o4016) : void
   {
      var _loc2_:* = null;
      o317(param1.amount);
      if(!param1.o9968)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         if(param1.o16334 is o17517 || param1.o16334 is o10416)
         {
            o4519.o8116.o4812.o4404.o18609.play(0.5,0,0,false,_loc2_.o10088());
         }
         else
         {
            o4519.o8116.o4812.o4404.o17023.play(0.5,0,0,false,_loc2_.o10088(),0,2);
         }
      }
   }
   
   override public function set o11243(param1:Number) : void
   {
      var _loc3_:* = null;
      var _loc2_:int = 0;
      o8199 = param1;
      if(o6955)
      {
         return;
      }
      if(o8199 <= 0)
      {
         o6955 = true;
         if(o11741)
         {
            o16166.o11("destroyed");
         }
         else
         {
            o16166.o3030("fall");
            o16166.o11("fall");
         }
         _loc3_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14442.play(0.5,0,0,false,_loc3_.o10088());
         o6691.o16990 = o11381.o6180;
         body.o19115();
         if(o2964)
         {
            if(o18877 <= 0)
            {
               o4519.o8116.o11954.o17454(o2964);
            }
            else
            {
               new o6880(o2964).o20013(o18877,true);
            }
         }
         if(o20548 != 0)
         {
            o4519.o13206.dispatchData(new o11210(o20548));
         }
      }
      else if(o11741)
      {
         _loc2_ = (1 - o11243 / o1589) * 4;
         o16166.o5388("damage" + _loc2_);
      }
      else
      {
         o16166.o11("hit");
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o2964.o19115();
      super.o19115();
   }
}
