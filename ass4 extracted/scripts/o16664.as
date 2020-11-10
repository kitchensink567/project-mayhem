package
{
   public class o16664 extends o19042
   {
       
      
      public var o10696:Vector.<o16664>;
      
      private var o19673:Number;
      
      private var o15268:Number;
      
      private var o14926:o18509;
      
      private var o984:Array;
      
      public function o16664()
      {
         o14926 = new o18509();
         super();
      }
      
      override public function o5179() : void
      {
      }
      
      public function init(param1:o7848, param2:Array, param3:Number, param4:Number, param5:Number, param6:o8925, param7:o7848, param8:int, param9:int, param10:Array, param11:o8464 = null) : void
      {
         var _loc16_:* = NaN;
         var _loc15_:* = null;
         this.o6365 = o6365;
         this.o3046 = param9;
         this.o10464 = param10;
         this.o13376 = param6;
         this.o19673 = param3;
         this.o15268 = param5;
         this.o984 = param2;
         this.o1432 = param7;
         if(param11 != null)
         {
            this.o10886 = param11;
         }
         o14926.x = param1.body.position.x;
         o14926.y = param1.body.position.y;
         var _loc12_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.tormentParticalTrail",o11381.o2131]) as o2130;
         if(_loc12_ != null)
         {
            _loc12_.o6691.position.x = o14926.x;
            _loc12_.o6691.position.y = o14926.y;
         }
         var _loc14_:o257 = new o257(o14926.x,o14926.y);
         o4519.o8116.o4812.o4404.o15083.play(0.5,0,0,false,_loc14_.o10088());
         if(!o19888)
         {
            _loc16_ = param3;
            if(o15268 < 1)
            {
               _loc16_ = Number(_loc16_ * o15268);
            }
            _loc15_ = o4016.o10062().initialise(_loc16_,o13376.o3,param7,this,param4,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
            o4519.o8116.o8361.o5725(o6270(param1),_loc15_);
            if(o13376.o4687 > 0)
            {
               param1.o13423(o13376.o4687 * o2493,o13376.o10273,o13376.o3,param7,this,-1,o13376.o1775,o13376.id);
            }
         }
         param2.push(param1);
         o15268 = Number(o15268) - 1;
         if(o15268 <= 0)
         {
            o13640();
            return;
         }
         var _loc13_:Number = o4519.o8116.o4550(param6.o14729);
         o4519.o8116.o2996.o2368(param10,param1.body.position.x,param1.body.position.y,_loc13_,o6365,o8723.o3969 | o8723.o18180,param2.length + 1).defer(o14057);
      }
      
      private function o14057(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1.length == 0)
         {
            o13640();
            return;
         }
         var _loc9_:int = 0;
         var _loc8_:* = o984;
         for each(var _loc7_ in o984)
         {
            _loc2_ = param1.indexOf(_loc7_);
            if(_loc2_ != -1)
            {
               param1.splice(_loc2_,1);
               if(param1.length == 0)
               {
                  o13640();
                  return;
               }
            }
         }
         var _loc5_:o7848 = param1[0];
         var _loc4_:o18509 = new o18509(_loc5_.body.position.x - o14926.x,_loc5_.body.position.y - o14926.y);
         var _loc6_:Number = _loc4_.rotation;
         if(o10696.length > 0)
         {
            _loc3_ = o10696.pop();
         }
         else
         {
            _loc3_ = new o16664();
            _loc3_.o10696 = o10696;
         }
         _loc3_.o10886 = this.o10886;
         _loc3_.o19888 = this.o19888;
         _loc3_.init(_loc5_,o984,o19673,_loc6_,o15268,o13376,o1432,o6365,o3046,o10464);
         o13640();
      }
      
      override public function o13640() : void
      {
         super.o13640();
         o984 = null;
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         super.o19115();
         o14926 = null;
         o984 = null;
      }
   }
}
