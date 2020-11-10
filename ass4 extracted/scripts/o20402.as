package
{
   import flash.display.Sprite;
   
   public class o20402 extends Sprite
   {
       
      
      public function o20402()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o275;
      }
   }
}

import flash.utils.ByteArray;

class o275 extends o7848
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"truck base asset"],[2,o17243.o2013,o13351.o10420,"truck top asset"],[3,o17243.o2013,o13351.o10420,"truck door asset"],[4,o17243.o2013,o13351.o10420,"truck physics"],[5,o17243.o2013,o13351.o10420,"pathing physics"]];
    
   
   private var o14622:o4332;
   
   private var o10140:o4332;
   
   private var o18526:o4332;
   
   private var o1606:o7331;
   
   private var o14926:Number;
   
   private var o1489:Number;
   
   private var o11302:Number;
   
   private var o17479:int;
   
   private var o8473:int;
   
   private var o9325:int = 0;
   
   private const o13231:Number = 1016;
   
   private const o5298:Number = 5;
   
   private var o13508:Number = 0;
   
   private var o1263:Vector.<o10262>;
   
   function o275()
   {
      o1263 = new Vector.<o10262>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc8_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc12_:int = param2.readShort();
      var _loc5_:int = param2.readShort();
      name = "swattruck";
      o14622 = o4519.o9721.o12831(_loc8_);
      o10140 = o4519.o9721.o12831(_loc3_);
      o18526 = o4519.o9721.o12831(_loc7_);
      var _loc11_:o7331 = o4519.o8116.o11676.o6798(o10140.o16396.assetID);
      _loc11_.o11525(o10140);
      _loc11_.play();
      o1606 = o4519.o8116.o11676.o6798(o18526.o16396.assetID);
      o1606.o11525(o18526);
      o1606.gotoAndStop(0);
      o1606.o12265 = false;
      o14926 = o14622.position.y;
      o1489 = o10140.position.y - o14622.position.y;
      o11302 = o18526.position.y - o14622.position.y;
      body = o4519.o8116.o9869.o1968(2);
      var _loc6_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc12_].o6041[0].id);
      var _loc14_:int = 0;
      var _loc13_:* = _loc6_;
      for each(var _loc10_ in _loc6_)
      {
         _loc10_.x = _loc10_.x - o14622.position.x;
         _loc10_.y = _loc10_.y - o14622.position.y;
         _loc10_.rotate(-o14622.rotation);
      }
      var _loc9_:o17761 = new o17761(body.o2535);
      _loc9_.o14486(_loc6_);
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o18180,o8723.o10217 ^ o8723.o12624,o8723.o32 | o8723.o9135);
      _loc4_.o10289 = _loc9_.id;
      body.o14230(_loc4_);
      body.o16687(o14622.rotation);
      body.o8564(o14622.position.x,o14622.position.y);
      body.o16280(this,o8273.o7087,o12058);
      body.o16280(this,o8273.o20083,o17692);
      o17479 = _loc5_;
      o8473 = o4519.o9721.o3865(Vector.<int>([o17479]),o8723.o3969,o8723.o10217 ^ o8723.o12624);
   }
   
   public function o9424() : void
   {
      o1051.o4767(this,0.0333333333333333,o14253,5 * 30);
      o1051.o9310(this,5,o19115);
      o1606.play();
      o19317();
      o4519.o9721.o5294(o8473);
   }
   
   private function o14253() : void
   {
      var _loc3_:int = 0;
      var _loc4_:* = null;
      if(o14622 == null)
      {
         return;
      }
      var _loc2_:* = 0.0333333333333333;
      o13508 = o13508 + _loc2_;
      var _loc1_:Number = o13508 / 5;
      _loc1_ = Math.pow(_loc1_,3);
      o14622.position.y = o14926 + _loc1_ * 1016;
      o10140.position.y = o14926 + o1489 + _loc1_ * 1016;
      o18526.position.y = o14926 + o11302 + _loc1_ * 1016;
      body.o8564(o14622.position.x,o14926 + _loc1_ * 1016);
      if(o13508 > 2 && o1263.length > 0)
      {
         _loc3_ = 0;
         while(_loc3_ < o1263.length)
         {
            _loc4_ = o4519.o8116.o2996.o14389(o1263[_loc3_]) as o17517;
            if(_loc4_ && _loc4_.body.o2697.y > o14622.position.y && _loc4_.body.o2697.x > o14622.position.x - 65 && _loc4_.body.o2697.x < o14622.position.x + 65)
            {
               o4519.o8116.o8361.o5725(_loc4_,o4016.o10062().initialise(1000000,1,this));
            }
            _loc3_++;
         }
      }
   }
   
   private function o12058(param1:o663) : void
   {
      o1263.push(param1.o11541);
   }
   
   private function o17692(param1:o18091) : void
   {
      o1263.splice(o1263.indexOf(param1.o11541),1);
   }
   
   override public function o19115() : void
   {
      super.o19115();
      o14622.o19115();
      o14622 = null;
      o10140.o19115();
      o18526.o19115();
      body.o19115();
   }
   
   private function o19317() : void
   {
      o4519.o8116.o4812.o10460.o13138.play(1);
   }
}
