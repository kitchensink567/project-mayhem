package
{
   import flash.display.Sprite;
   
   public class o6702 extends Sprite
   {
       
      
      public function o6702()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o20945;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o20945 extends o9347
{
   
   public static var o20272:Array = [[4,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"barrier image"],[3,o17243.o2013,o13351.o10420,"roof to hide"]];
   
   protected static const o6500:int = 3;
   
   private static const o5210:Number = 1.0;
   
   private static const o11451:Number = 2000;
   
   private static const o685:Number = 0.25;
   
   public static const o10741:int = 0;
   
   public static const o6350:int = 1;
   
   private static var o11164:Boolean = true;
   
   private static const o3349:int = 15;
    
   
   public var o12321:int;
   
   private var o15782:o4332;
   
   public var o1436:int = 0;
   
   private var o8380:int = 0;
   
   private var o1962:int = 0;
   
   private var o1010:Vector.<o17517>;
   
   private var o9937:int = 0;
   
   function o20945()
   {
      o1010 = new Vector.<o17517>();
      super();
   }
   
   private static function o5722() : void
   {
      o11164 = true;
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc3_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o1962 = param2.readShort();
      o15782 = o9776();
      o4519.o8116.o11954.o9226(o15782);
      super.o2348(param1,_loc3_,_loc4_,o8723.o10217,o8723.o32 | o8723.o17079 | o8723.o7778 | o8723.o42,2000);
      body.o16280(this,o8273.o7087,o7087);
      body.o16280(this,o8273.o20083,o20083);
      o16166.o12265 = false;
      o16166.o5388("damage0");
      o8380 = 0;
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o8199 = 2000 * o10176.o6572() / o10176.o6407();
      o1589 = 2000 * o10176.o6572() / o10176.o6407();
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc4_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc4_ != null)
      {
         if(o1010.indexOf(_loc4_) == -1)
         {
            o1010.push(_loc4_);
         }
         o9937 = o1051.o4767(this,1,o9075);
         if(o11164)
         {
            if(_loc4_.o1217 == 0)
            {
               _loc2_ = 8;
            }
            else if(_loc4_.o1217 == 1)
            {
               _loc2_ = 10;
            }
            else if(_loc4_.o1217 == 2)
            {
               _loc2_ = 9;
            }
            _loc3_ = o4519.o8116.profileData.o10206("dialogMessage.survivorsMessages.msgPlayerOpeningDoor");
            o4519.o8116.o20488.o2251(_loc2_,_loc3_);
            o11164 = false;
            o1051.o9310(null,15,o5722);
         }
      }
   }
   
   private function o20083(param1:o18091) : void
   {
      var _loc2_:int = 0;
      var _loc3_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc3_ != null)
      {
         _loc2_ = o1010.indexOf(_loc3_);
         if(_loc2_ != -1)
         {
            o1010.splice(_loc2_,1);
         }
         if(o1010.length == 0)
         {
            o1051.o19115(o9937);
         }
      }
   }
   
   private function o9075() : void
   {
      if(o11243 - o1589 * 0.25 <= 0)
      {
         o1436 = 1;
      }
      o11243 = o11243 - o1589 * 0.25;
   }
   
   override public function set o11243(param1:Number) : void
   {
      var _loc2_:int = 0;
      var _loc3_:* = null;
      if(o6955)
      {
         return;
      }
      o8199 = param1;
      if(o11243 <= 0)
      {
         if(o6691 != null)
         {
            o4929(0,0,0,0,0,0);
            if(o14601)
            {
               o4929(0,0,0,0,0,0,1,o14601);
            }
         }
         o6955 = true;
         dispatchData(new o11702(o11702.o19440,this));
      }
      else
      {
         _loc2_ = (1 - o11243 / o1589) * 3;
         if(_loc2_ != o8380)
         {
            o8380 = _loc2_;
            o16166.o3030("damage" + _loc2_);
            o16166.o11("damage" + _loc2_);
            _loc3_ = new o257(this.o6691.position.x,this.o6691.position.y);
            o4519.o8116.o4812.o4404.o2567.play(0.75,0,0,false,_loc3_.o10088());
         }
      }
   }
   
   public function o16118() : void
   {
      o16166.o3030("destroyed");
      o16166.o11("destroyed");
      o6691.o16990 = o11381.o6537;
      o16166.o16280(this,o1490.o16612,remove);
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o14442.play(0.5,0,0,false,_loc1_.o10088());
      body.o19115();
      new o6880(o15782).o20013(1,true);
   }
   
   private function o9776() : o4332
   {
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o1962].o6041[0].id);
      var _loc1_:o4332 = o4519.o8116.o11954.o10869();
      _loc1_.o16396 = o17541.o13617(_loc2_);
      _loc1_.position = new o2415();
      _loc1_.o16990 = 110;
      return _loc1_;
   }
   
   public function o348() : o4332
   {
      return o9776();
   }
   
   override public function o19115() : void
   {
      super.o19115();
      o6691.o19115();
      body.o19115();
   }
   
   private function remove(param1:Event = null) : void
   {
      o4519.o9721.o2075.o471(o6691);
      o19115();
   }
}
