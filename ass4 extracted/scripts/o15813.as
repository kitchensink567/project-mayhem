package
{
   import flash.display.Sprite;
   
   public class o15813 extends Sprite
   {
       
      
      public function o15813()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o3799;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o3799 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics barrier"],[3,o17243.o2013,o13351.o10420,"image"],[4,o17243.o2013,o13351.o10420,"roof to hide"],[5,o17243.float,o13351.o10420,"roof fade time"],[6,o17243.float,o13351.o10420,"health"],[7,o17243.o8809,o13351.o10420,"loot reveal id"]];
    
   
   private var o2964:o4332 = null;
   
   private var o18877:Number = 0;
   
   private var o9901:int;
   
   private var o12684:Number;
   
   function o3799()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      o18877 = param2.readFloat();
      o12684 = param2.readFloat();
      o9901 = param2.readInt();
      var _loc3_:uint = o8723.o17798;
      super.o2348(param1,_loc7_,_loc6_,o8723.o10217,_loc3_,o12684);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
      o2964 = o4519.o8116.o11954.o10869();
      o2964.o16396 = o17541.o13617(_loc5_);
      o2964.position = new o2415();
      o2964.o16990 = 110;
      o4519.o8116.o11954.o9226(o2964);
      o4519.o13206.o16280(this,o16450.o9745,start);
   }
   
   private function start(param1:Event) : void
   {
      o11243 = o12684 * (o10176.o6572() / o10176.o6407() / 2 + 0.5);
      o1589 = o12684 * (o10176.o6572() / o10176.o6407() / 2 + 0.5);
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
            o4519.o8116.o4812.o4404.o17023.play(0.5,0,0,false,_loc2_.o10088(),0,11);
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
         o16166.o12265 = false;
         o16166.o3030("destroyed");
         o16166.o11("destroyed");
         o6691.o16990 = o11381.o6537;
         _loc3_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o7259.play(0.5,0,0,false,_loc3_.o10088());
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
         o4519.o13206.dispatchData(new o11210(o9901));
         o1051.o9310(this,2,remove);
      }
      else
      {
         _loc2_ = Math.ceil((1 - o11243 / o1589) * 3);
         if(_loc2_ > 0)
         {
            o16166.gotoAndStop(_loc2_ - 1);
         }
      }
   }
   
   private function remove() : void
   {
      o4519.o9721.o2075.o471(o6691);
      o19115();
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
