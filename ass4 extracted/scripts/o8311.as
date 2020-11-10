package
{
   import flash.display.Sprite;
   
   public class o8311 extends Sprite
   {
       
      
      public function o8311()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o4667;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o4667 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image lower"],[3,o17243.o2013,o13351.o10420,"image upper"],[4,o17243.float,o13351.o10420,"health base"],[5,o17243.o19845,o13351.o10420,"name"]];
   
   protected static const o6500:int = 3;
    
   
   private var o18904:o4332 = null;
   
   private var o20221:o7331 = null;
   
   private var o12684:Number;
   
   function o4667()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      o12684 = param2.readFloat();
      name = param2.readUTF();
      o18904 = o4519.o9721.o12831(_loc3_);
      o20221 = o4519.o9721.o7833(_loc3_);
      o20221.gotoAndStop(0);
      super.o2348(param1,_loc5_,_loc4_,o8723.o10217 ^ o8723.o17798,o8723.o17079 | o8723.o7778 | o8723.o42,o12684);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc2_:Array = [1,0.7,0.5,0.3];
      o8199 = o12684 * Math.sqrt(o10176.o13327()) * _loc2_[o4519.o13206.o2685.o7629() - 1];
      o1589 = o12684 * Math.sqrt(o10176.o13327()) * _loc2_[o4519.o13206.o2685.o7629() - 1];
   }
   
   override public function set o11243(param1:Number) : void
   {
      var _loc4_:* = null;
      var _loc3_:* = undefined;
      var _loc2_:int = 0;
      if(o6955)
      {
         return;
      }
      .super.o11243 = param1;
      if(o11243 <= 0)
      {
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o16166.o16280(this,o1490.o16612,o4696);
         o6691.o16990 = o11381.o6537;
         _loc4_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o3018.play(0.5,0,0,false,_loc4_.o10088());
         if(o18904)
         {
            o4519.o8116.o11954.o11867(o18904);
         }
         o4519.o13206.o16821(10,0.3);
         _loc3_ = o4519.o9721.o12334("NGZOutside");
         if(_loc3_ && _loc3_.o8289() == false)
         {
            _loc3_.o19115();
         }
      }
      else
      {
         _loc2_ = Math.ceil((1 - o11243 / o1589) * 3);
         if(_loc2_ > 0)
         {
            o16166.gotoAndStop(_loc2_ - 1);
            o20221.gotoAndStop(_loc2_ - 1);
         }
      }
   }
   
   public function o4696(param1:Event = null) : void
   {
      o19115();
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o4519.o9721.o2075.o471(o6691);
      if(o6691 != null)
      {
         o6691.o19115();
      }
      if(body != null)
      {
         body.o19115();
      }
      super.o19115();
   }
}
