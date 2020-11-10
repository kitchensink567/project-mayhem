package
{
   import flash.display.Sprite;
   
   public class o17241 extends Sprite
   {
       
      
      public function o17241()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o18544;
      }
   }
}

import flash.utils.ByteArray;

class o18544 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.float,o13351.o10420,"health base"],[5,o17243.o14773,o13351.o10420,"projectiles pass through"],[7,o17243.o14773,o13351.o10420,"projectiles hurt"],[8,o17243.o14773,o13351.o10420,"enemies hurt"],[6,o17243.o2013,o13351.o5585,"image to remove when open"],[9,o17243.o2013,o13351.o5585,"image to remove when open(extra)"],[10,o17243.o2013,o13351.o5585,"image to show when open(extra)"],[12,o17243.o8809,o13351.o5585,"Event ID when open"],[13,o17243.float,o13351.o5585,"Time before auto-open"],[14,o17243.o14773,o13351.o5585,"custom pods open"]];
   
   protected static const o6500:int = 3;
    
   
   private var o19851:o4332 = null;
   
   private var o15595:o4332 = null;
   
   private var o10453:o4332 = null;
   
   private var o1848:int = 0;
   
   private var o8478:Boolean = false;
   
   private var o13743:int = 0;
   
   private var o10056:Number = 0;
   
   private var o17663:Boolean = false;
   
   private var o9695:o7331;
   
   function o18544()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      var o19148:int = o10303.readShort();
      var o15896:int = o10303.readShort();
      var o12684:Number = o10303.readFloat();
      var o419:Boolean = o10303.readByte();
      var o10640:Boolean = o10303.readByte();
      var o6375:Boolean = o10303.readByte();
      var o19558:int = o10303.readShort();
      var o7142:int = o10303.readShort();
      o1848 = o10303.readShort();
      if(o10303.bytesAvailable > 0)
      {
         o13743 = o10303.readInt();
      }
      if(o10303.bytesAvailable > 0)
      {
         o10056 = o10303.readFloat();
      }
      if(o10303.bytesAvailable > 0)
      {
         o17663 = o10303.readBoolean();
      }
      if(o19558 != 0)
      {
         o19851 = o4519.o9721.o12831(o19558);
      }
      if(o7142 != 0)
      {
         o15595 = o4519.o9721.o12831(o7142);
      }
      if(o1848 != 0)
      {
         o10453 = o4519.o9721.o12831(o1848);
      }
      if(o10453)
      {
         o4519.o8116.o11954.o17454(o10453);
      }
      var mask:uint = o8723.o10217;
      var o10879:uint = 0;
      if(o419)
      {
         mask = mask ^ o8723.o17798;
      }
      else if(o10640)
      {
         o10879 = o10879 | o8723.o17798;
      }
      if(o12684 == 0)
      {
         o12487 = true;
      }
      else if(o6375)
      {
         o10879 = o10879 | o8723.o17079;
         o10879 = o10879 | o8723.o42;
      }
      var o19505:* = this;
      o4519.o13206.o16280(o19505,o16450.o9745,function():void
      {
         if(o10056 != 0)
         {
            o1051.o9310(o19505,o10056,function():void
            {
               if(o8478 == false)
               {
                  o317(1.79769313486232e308);
               }
            });
         }
         o11243 = o12850(o12684);
      });
      super.o2348(o5973,o19148,o15896,mask,o10879,o12684);
   }
   
   private function o12850(param1:Number) : Number
   {
      return param1 * o10176.o6572();
   }
   
   override protected function o317(param1:Number) : void
   {
      super.o317(param1);
   }
   
   override public function set o11243(param1:Number) : void
   {
      value = param1;
      .super.o11243 = value;
      if(o8478)
      {
         return;
      }
      if(o11243 <= 0)
      {
         o8478 = true;
         if(o16166)
         {
            o16166.o12265 = false;
            if(o16166.o1579("destroyed"))
            {
               o16166.o3030("destroyed");
               o16166.o11("destroyed");
            }
            else
            {
               o16166.gotoAndStop(o16166.o12950() - 1);
            }
         }
         o19542();
         var o12034:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o17009.play(0.5,0,0,false,o12034.o10088());
         if(o19851)
         {
            o4519.o8116.o11954.o11867(o19851);
         }
         if(o15595)
         {
            o4519.o8116.o11954.o11867(o15595);
         }
         if(o10453)
         {
            o4519.o8116.o11954.o9226(o10453);
            o9695 = o4519.o9721.o7833(o1848);
            o9695.o12265 = false;
            o9695.gotoAndPlay(0);
         }
         if(o17663)
         {
            var o14765:* = o4519.o9721.o12334("burst_5");
            o14765.o1064();
            o14765 = o4519.o9721.o12334("burst_4");
            o14765.o1064();
            o1051.o9310(this,0.1,function():void
            {
               o14765 = o4519.o9721.o12334("burst_3");
               o14765.o1064();
               o14765 = o4519.o9721.o12334("burst_2");
               o14765.o1064();
            });
            o1051.o9310(this,0.2,function():void
            {
               o14765 = o4519.o9721.o12334("burst_1");
               o14765.o1064();
            });
         }
         if(o13743 != 0)
         {
            o4519.o13206.dispatchData(new o11210(o13743));
         }
      }
      else if(o16166)
      {
         var o562:int = Math.ceil((1 - o11243 / o1589) * 3);
         if(o562 > 0)
         {
            o16166.gotoAndStop(o562 - 1);
         }
      }
   }
   
   override public function o18192(param1:ByteArray) : void
   {
      param1.writeFloat(o11243);
   }
   
   override public function o14232(param1:ByteArray, param2:int = 0) : void
   {
      o11243 = param1.readFloat();
   }
   
   override protected function o1483(param1:Boolean, param2:o7848) : void
   {
      var _loc3_:* = Number(Math.random());
      if(_loc3_ > 0.5)
      {
         _loc3_ = 0.5;
      }
      if(!param1)
      {
         o4519.o8116.o4812.o4404.o8918.play(_loc3_);
      }
   }
}
