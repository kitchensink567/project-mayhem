package
{
   import flash.display.Sprite;
   
   public class o6265 extends Sprite
   {
       
      
      public function o6265()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13984;
      }
   }
}

import flash.utils.ByteArray;

class o13984 extends o15755
{
   
   public static var o20272:Array = [[0,o17243.o2013,o13351.o10420,"room area"],[1,o17243.float,o13351.o10420,"alpha amount"],[2,o17243.float,o13351.o10420,"show min"],[3,o17243.float,o13351.o10420,"show max"],[4,o17243.float,o13351.o10420,"hide min"],[5,o17243.float,o13351.o10420,"hide max"]];
    
   
   private var o15981:int = 0;
   
   private var alpha:Number = 0.1;
   
   private var o15782:o4332 = null;
   
   private var o7159:Number = 0.1;
   
   private var o16252:Number = 1;
   
   private var o2810:Number = 0.1;
   
   private var o19223:Number = 1;
   
   private const o12947:int = 15;
   
   function o13984()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o15981 = param2.readShort();
      if(param2.bytesAvailable > 0)
      {
         alpha = param2.readFloat();
      }
      if(param2.bytesAvailable > 0)
      {
         o7159 = param2.readFloat();
         o16252 = param2.readFloat();
         o2810 = param2.readFloat();
         o19223 = param2.readFloat();
      }
      var _loc4_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o15981].o6041[0].id);
      o15782 = o4519.o8116.o11954.o10869();
      o15782.o16396 = o17541.o13617(_loc4_);
      o15782.position = new o2415();
      o15782.o16990 = 110;
      o4519.o8116.o11954.o9226(o15782);
      o4929(0,0,0,0,alpha,o15782);
      var _loc3_:Number = (o16252 - o7159) * Math.random();
      _loc3_ = _loc3_ + o7159;
      o1051.o9310(this,_loc3_,o17454);
   }
   
   private function o17454() : void
   {
      o15782.o9824 = false;
      var _loc1_:Number = (o19223 - o2810) * Math.random();
      _loc1_ = _loc1_ + o2810;
      o1051.o9310(this,_loc1_,o9226);
   }
   
   private function o9226() : void
   {
      o15782.o9824 = true;
      var _loc1_:Number = (o16252 - o7159) * Math.random();
      _loc1_ = _loc1_ + o7159;
      o1051.o9310(this,_loc1_,o17454);
   }
   
   public function o4929(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1, param6:o4332 = null) : void
   {
      o1562 = param1;
      o20642 = param2;
      o20621 = param3;
      o7003 = param4;
      alpha = param5;
      o10668 = param6;
      var o18384:o6163 = new o6163();
      o18384.o7003 = o7003;
      o18384.o1562 = o1562;
      o18384.o20642 = o20642;
      o18384.o20621 = o20621;
      var o14208:Array = o18384.o17114();
      o14208 = o14208.filter(function(param1:Number, param2:int, param3:Array):Boolean
      {
         if((param2 + 1) % 5 == 0)
         {
            return false;
         }
         return true;
      });
      o14208[15] = alpha;
      if(o10668 != null)
      {
         o10668.colorTransform = Vector.<Number>(o14208);
         o10668.o6034 = new <Number>[o7003,o7003,o7003,0];
      }
   }
}
