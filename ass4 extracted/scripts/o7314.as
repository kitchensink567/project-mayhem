package
{
   import flash.display.Sprite;
   
   public class o7314 extends Sprite
   {
       
      
      public function o7314()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8222;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o8222 extends o9347
{
   
   public static var o20272:Array = [[9,o17243.o19845,o13351.o10420,"name"],[8,o17243.float,o13351.o10420,"health"],[1,o17243.o2013,o13351.o10420,"physics"],[7,o17243.o2013,o13351.o10420,"explosion pos an asset"],[2,o17243.o2013,o13351.o10420,"car 1"],[3,o17243.o2013,o13351.o10420,"car 2"],[4,o17243.o2013,o13351.o10420,"car 3"],[5,o17243.o2013,o13351.o10420,"car 4"],[6,o17243.o2013,o13351.o10420,"car 5"]];
   
   protected static const o6500:int = 3;
    
   
   private var o12684:Number;
   
   private var o19952:String;
   
   private var o17134:o18509;
   
   private var o676:Vector.<o4332>;
   
   private var o11798:Vector.<o7331>;
   
   private var o13610:int = -1;
   
   function o8222()
   {
      o17134 = new o18509();
      o676 = new Vector.<o4332>();
      o11798 = new Vector.<o7331>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc5_:int = 0;
      var _loc3_:int = 0;
      var _loc8_:* = null;
      var _loc7_:* = null;
      this.name = param2.readUTF();
      o12684 = param2.readFloat();
      var _loc9_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc4_:o4332 = o4519.o9721.o12831(_loc6_);
      o19952 = _loc4_.o16396.assetID;
      o17134.x = _loc4_.position.x;
      o17134.y = _loc4_.position.y;
      o4519.o8116.o11954.o11867(_loc4_);
      this.o30 = 100;
      _loc5_ = 0;
      while(_loc5_ < 5)
      {
         _loc3_ = param2.readShort();
         _loc8_ = o4519.o9721.o12831(_loc3_);
         _loc7_ = o4519.o9721.o7833(_loc3_);
         if(!(_loc3_ == 0 || _loc8_ == null))
         {
            o676.push(_loc8_);
            o11798.push(_loc7_);
         }
         _loc5_++;
      }
      super.o2348(param1,_loc9_,null,o8723.o10217,o8723.o17798 | o8723.trigger,o12684);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      var _loc2_:Array = [0,1,1.7,2.3,2.85];
      o8199 = o12684 + o12684 * o10176.o13327() * 0.34 * _loc2_[o4519.o13206.o2685.o7629()];
      o1589 = o12684 + o12684 * o10176.o13327() * 0.34 * _loc2_[o4519.o13206.o2685.o7629()];
   }
   
   override protected function o317(param1:Number) : void
   {
      super.o317(param1);
      o4519.o8116.o4812.o4404.o18609.play(0.4);
   }
   
   override public function set o11243(param1:Number) : void
   {
      var _loc2_:* = null;
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc4_:int = 0;
      var _loc6_:* = !o6955;
      .super.o11243 = param1;
      if(o11243 <= 0 && _loc6_)
      {
         _loc2_ = o4519.o8116.o13427.o11961(o2130,[o19952]) as o2130;
         if(_loc2_ != null)
         {
            _loc2_.o6691.position.x = o17134.x;
            _loc2_.o6691.position.y = o17134.y;
         }
         _loc3_ = 0;
         while(_loc3_ < o11798.length)
         {
            o11798[_loc3_].o3030("destroyed");
            o11798[_loc3_].play();
            _loc3_++;
         }
         o11798[0].o16280(this,o1490.o16612,o19396);
         _loc5_ = new o257(_loc2_.o6691.position.x,_loc2_.o6691.position.y);
         o4519.o8116.o4812.o20325.o19111.play(0.5,0,0,false,_loc5_.o10088());
      }
      else
      {
         _loc4_ = (1 - o11243 / o1589) * 3;
         if(_loc4_ != o13610)
         {
            o13610 = _loc4_;
            _loc3_ = 0;
            while(_loc3_ < o11798.length)
            {
               o11798[_loc3_].o3030("damage" + _loc4_.toString());
               o11798[_loc3_].play();
               _loc3_++;
            }
         }
      }
   }
   
   private function o19396(param1:Event) : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < o11798.length)
      {
         o11798[_loc2_].o11("destroyedloop");
         o676[_loc2_].o16990 = 0.5;
         _loc2_++;
      }
   }
   
   override public function o19115() : void
   {
      o17134 = null;
      o676 = null;
      o11798 = null;
      super.o19115();
   }
}
