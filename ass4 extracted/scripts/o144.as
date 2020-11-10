package
{
   import flash.display.Sprite;
   
   public class o144 extends Sprite
   {
       
      
      public function o144()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2353;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o2353 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"hole image"],[2,o17243.o19845,o13351.o10420,"name"],[3,o17243.o2013,o13351.o10420,"hole point"],[4,o17243.o2013,o13351.o5585,"hole top image"]];
    
   
   private var o1198:int = 0;
   
   private var o17328:int = 0;
   
   private var o6691:o4332 = null;
   
   private var o10140:o4332 = null;
   
   private var o7029:o4332 = null;
   
   private var o16166:o7331 = null;
   
   private var o8258:int = 0;
   
   public var o13065:Boolean = false;
   
   function o2353()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o1198 = param2.readShort();
      name = param2.readUTF();
      o8258 = param2.readShort();
      o17328 = param2.readShort();
      o6691 = o4519.o9721.o12831(o1198);
      o6691.o16990 = o11381.o19615;
      if(o17328 != 0)
      {
         o10140 = o4519.o9721.o12831(o17328);
         o10140.o16990 = o11381.o7748 + 1;
         o10140.o9824 = false;
      }
      o7029 = o4519.o9721.o12831(o8258);
      o7029.position.x;
      o7029.position.y;
      o16166 = o4519.o8116.o11676.o6798(o6691.o16396.assetID);
      o16166.o11525(o6691);
      super.o16955(param1);
      o16166.gotoAndStop(0);
      o13065 = false;
   }
   
   public function o3801() : void
   {
      if(o13065)
      {
         return;
      }
      o13065 = true;
      o15132();
      o16166.gotoAndPlay(0);
      o16166.o12265 = false;
      o16166.o16280(this,o1490.o16612,o15197);
   }
   
   private function o15197(param1:Event = null) : void
   {
      o16166.stop();
      if(o10140)
      {
         o10140.o9824 = true;
      }
   }
   
   public function o6027() : Number
   {
      return o7029.position.x;
   }
   
   public function o17152() : Number
   {
      return o7029.position.y;
   }
   
   private function o15132() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o14151.play(1,0,1000,false,_loc1_.o10088());
   }
}
