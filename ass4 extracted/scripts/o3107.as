package
{
   public class o3107 extends o8023
   {
       
      
      private var o1440:Number;
      
      private var o11962:Number;
      
      private var o9087:Number;
      
      public var o8012:Number;
      
      public var o14797:Number;
      
      public var o1432:o7848;
      
      private var o16388:Number = 0;
      
      private var o6691:o4332;
      
      private var o16166:o7331;
      
      private const o11142:Number = 40;
      
      private const o1521:Number = 162;
      
      private var o5402:Vector.<o17517>;
      
      private var o3:int;
      
      private var o16287:Vector.<o17517>;
      
      public function o3107()
      {
         o5402 = new Vector.<o17517>();
         o16287 = new Vector.<o17517>();
         super();
      }
      
      public function o16955(param1:String, param2:int, param3:Number, param4:Number, param5:Number) : void
      {
         o6691 = o4519.o8116.o11954.o10869();
         o6691.position = new o2415();
         o6691.o16396 = o17541.o13617(param1);
         o4519.o8116.o11954.o9226(o6691);
         this.o3 = param2;
         o16166 = o4519.o8116.o11676.o6798(o6691.o16396.assetID);
         o16166.o10589(o6691.o16396.assetID);
         o16166.o11525(o6691);
         o16166.play();
         o6691.position.x = param3;
         o6691.position.y = param4;
         o6691.o16990 = o11381.o12953;
         o9087 = o16166.o12950() / 30;
         this.o11962 = param5;
         o1440 = 40 * param5 / 162;
         o6691.scaleX = param5 / 162;
         o6691.scaleY = param5 / 162;
         o4519.o8116.o2996.o9685(o17517,param3,param4,param5,o8723.o42).defer(o17110);
         o1051.o4767(this,0.0333333333333333,o7664,o9087 * 30 + 0.01);
         o1051.o9310(this,o9087,o19115);
      }
      
      private function o17110(param1:Array) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for each(var _loc2_ in param1)
         {
            o5402.push(_loc2_);
         }
      }
      
      private function o7664() : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc6_:Number = NaN;
         var _loc3_:* = 0.0333333333333333;
         o16388 = o16388 + _loc3_;
         var _loc1_:Number = o1440 + (o11962 - o1440) * o16388 / o9087;
         _loc4_ = 0;
         while(_loc4_ < o5402.length)
         {
            _loc5_ = o5402[_loc4_];
            if(o16287.indexOf(_loc5_) == -1)
            {
               _loc2_ = o15460.o4078;
               _loc2_.x = _loc5_.x - o6691.position.x;
               _loc2_.y = _loc5_.y - o6691.position.y;
               if(_loc2_.o17573 < _loc1_ * _loc1_)
               {
                  _loc6_ = o14797 + (o8012 - o14797) * (1 - _loc2_.o3215 / o11962);
                  o4519.o8116.o8361.o5725(_loc5_,o4016.o10062().initialise(_loc6_,o3,o1432));
                  o16287.push(_loc5_);
               }
            }
            _loc4_++;
         }
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         o16166.o19115();
         o16166 = null;
         o4519.o8116.o11954.o17454(o6691);
         o6691.o19115();
         o6691 = null;
         super.o19115();
      }
   }
}
