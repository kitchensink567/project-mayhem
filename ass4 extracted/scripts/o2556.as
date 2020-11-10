package
{
   import flash.events.Event;
   
   public class o2556 extends o19042
   {
      
      private static const o12877:Number = 20;
       
      
      public var o10696:Vector.<o2556>;
      
      private var o592:Number = 1;
      
      private var o13767:o4039;
      
      public function o2556()
      {
         super();
      }
      
      public function o16955(param1:o8925, param2:o7848, param3:uint, param4:uint, param5:Number, param6:Number = 0.0) : void
      {
         this.o1432 = param2;
         o13376 = param1;
         o7742 = 0;
         o12438 = 0;
         o4982 = false;
         this.o6365 = param3;
         this.o3046 = o8723.o3969 | o8723.o18180 | o8723.o19523;
         o30 = o4519.o8116.o4550(param1.o30);
         o592 = param5;
         o3396 = 2;
         super.o9943();
         o6691.rotation = param6;
         o6691.o2158 = 7;
         var _loc8_:* = o30 / 20;
         o6691.scaleY = _loc8_;
         o6691.scaleX = _loc8_;
         o16166.gotoAndPlay(0);
         o16166.frameRate = o16166.frameRate * param1.o15918;
         var _loc7_:o17761 = new o17761(body.o2535);
         _loc7_.o16716(o30);
         o13767 = o4519.o8116.o20600.o15803(param3,param4 & ~(o8723.o3969 | o8723.o18180),o8723.o10217,true);
         o13767.o10289 = _loc7_.id;
         body.o14230(o13767);
         o13767.o16280(this,o2841.o1516,o20307);
         o16166.o16280(this,o1490.o16612,o15586);
      }
      
      public function o20307(param1:o4217) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:* = null;
         if(o19888)
         {
            o592 = Number(o592) - 1;
            if(o592 <= 0)
            {
               o13640();
            }
            return;
         }
         var _loc3_:o6270 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6270;
         if(_loc3_)
         {
            _loc4_ = o13376.o5725;
            _loc4_ = _loc4_ * o2493;
            _loc4_ = _loc4_ * o10886.o1815;
            _loc2_ = o4016.o10062().initialise(_loc4_,o13376.o3,o1432,this,0,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
            o4519.o8116.o8361.o5725(_loc3_,_loc2_);
            if(o13376.o4687 > 0)
            {
               o7848(_loc3_).o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,o1432,this,-1,o13376.o1775,o13376.id);
            }
            o592 = Number(o592) - 1;
            if(o592 <= 0)
            {
               o13640();
            }
         }
      }
      
      private function o15586(param1:Event = null) : void
      {
         o13640();
      }
      
      override public function o13640() : void
      {
         o16166.frameRate = 0.0333333333333333;
         o16166.o12657(o1490.o16612,o15586);
         if(body && o13767)
         {
            body.o19977(o13767.id);
         }
         if(o13767)
         {
            o13767.o19115();
         }
         o13767 = null;
         super.o13640();
         o10696.push(this);
      }
   }
}
