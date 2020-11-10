package
{
   public class o4650 extends o19042
   {
      
      private static const o11429:Number = 0.5235987755982988;
       
      
      public var o10696:Vector.<o4650>;
      
      private var o5725:Number;
      
      private var o14926:o18509;
      
      private var o15493:o7848;
      
      private var o16470:Number;
      
      public function o4650()
      {
         o14926 = new o18509();
         super();
      }
      
      override public function o5179() : void
      {
      }
      
      public function init(param1:o7848, param2:Number, param3:Number, param4:o8925, param5:o7848, param6:int, param7:int, param8:Array, param9:o8464 = null) : void
      {
         this.o6365 = o6365;
         this.o3046 = param7;
         this.o10464 = param8;
         this.o13376 = param4;
         this.o5725 = param2;
         this.o1432 = param5;
         this.o16470 = param3;
         this.o15493 = param1;
         if(param9 != null)
         {
            this.o10886 = param9;
         }
         o14926.x = param1.body.position.x;
         o14926.y = param1.body.position.y;
         var _loc10_:Number = o4519.o8116.o4550(param4.o14729);
         o4519.o8116.o2996.o2368(param8,param1.body.position.x,param1.body.position.y,_loc10_,o6365,o8723.o3969 | o8723.o18180).defer(o14057);
      }
      
      private function o14057(param1:Array) : void
      {
         var _loc2_:* = null;
         var _loc9_:Number = NaN;
         var _loc11_:* = null;
         var _loc8_:* = null;
         var _loc3_:* = null;
         var _loc10_:* = null;
         var _loc12_:* = null;
         var _loc7_:* = null;
         var _loc4_:o18509 = null;
         var _loc5_:o18509 = null;
         var _loc14_:int = 0;
         var _loc13_:* = param1;
         for each(var _loc6_ in param1)
         {
            if(_loc6_ != o15493)
            {
               _loc2_ = o15460.o4078;
               _loc2_.x = _loc6_.body.position.x - o14926.x;
               _loc2_.y = _loc6_.body.position.y - o14926.y;
               _loc9_ = _loc2_.o13655(o16470);
               if(_loc12_ == null)
               {
                  if(_loc9_ > -2.61799387799149 && _loc9_ < -0.523598775598299)
                  {
                     _loc12_ = _loc6_;
                     _loc4_ = new o18509(_loc2_.x,_loc2_.y);
                     continue;
                  }
               }
               if(_loc7_ == null)
               {
                  if(_loc9_ > 0.523598775598299 && _loc9_ < 3.14159265358979 - 0.523598775598299)
                  {
                     _loc7_ = _loc6_;
                     _loc5_ = new o18509(_loc2_.x,_loc2_.y);
                     continue;
                  }
               }
               if(!(_loc12_ && _loc7_))
               {
                  continue;
               }
               break;
            }
         }
         if(_loc12_)
         {
            _loc11_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.enemyHit.shocker.Arc",o11381.o2131]) as o2130;
            if(_loc11_ != null)
            {
               _loc11_.o6691.position.x = o14926.x;
               _loc11_.o6691.position.y = o14926.y;
               _loc11_.o6691.scaleX = _loc4_.o3215 / 150;
               _loc11_.o6691.rotation = _loc4_.rotation;
            }
            _loc8_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.enemyHit.Shocker",o11381.o2131]) as o2130;
            if(_loc8_ != null)
            {
               _loc8_.o6691.position.x = _loc12_.body.position.x;
               _loc8_.o6691.position.y = _loc12_.body.position.y;
            }
            if(!o19888)
            {
               _loc3_ = o4016.o10062().initialise(o5725,o13376.o3,o1432,this,_loc4_.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
               o4519.o8116.o8361.o5725(o6270(_loc12_),_loc3_);
            }
            _loc10_ = new o257(_loc12_.body.position.x,_loc12_.body.position.y);
            o4519.o8116.o4812.o4404.o15083.play(0.5,0,0,false,_loc10_.o10088());
         }
         if(_loc7_)
         {
            _loc11_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.enemyHit.shocker.Arc",o11381.o2131]) as o2130;
            if(_loc11_ != null)
            {
               _loc11_.o6691.position.x = o14926.x;
               _loc11_.o6691.position.y = o14926.y;
               _loc11_.o6691.scaleX = _loc5_.o3215 / 150;
               _loc11_.o6691.rotation = _loc5_.rotation;
            }
            _loc8_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.enemyHit.Shocker",o11381.o2131]) as o2130;
            if(_loc8_ != null)
            {
               _loc8_.o6691.position.x = _loc7_.body.position.x;
               _loc8_.o6691.position.y = _loc7_.body.position.y;
            }
            if(!o19888)
            {
               _loc3_ = o4016.o10062().initialise(o5725,o13376.o3,o1432,this,_loc5_.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
               o4519.o8116.o8361.o5725(o6270(_loc7_),_loc3_);
            }
            _loc10_ = new o257(_loc7_.body.position.x,_loc7_.body.position.y);
            o4519.o8116.o4812.o4404.o15083.play(0.5,0,0,false,_loc10_.o10088());
         }
         o13640();
      }
      
      override public function o13640() : void
      {
         super.o13640();
         this.o15493 = null;
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         super.o19115();
         this.o15493 = null;
      }
   }
}
