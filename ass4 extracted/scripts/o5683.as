package
{
   public class o5683 extends o19042
   {
       
      
      public var o10696:Vector.<o5683>;
      
      private var o4239:Number = 0;
      
      private var o16044:Number = 0;
      
      private var o17195:Number = 1;
      
      private var o13767:o4039;
      
      private const delta:Number = 0.03333333333333333;
      
      private var o16554:int;
      
      public function o5683()
      {
         super();
      }
      
      public function o16955(param1:o18509, param2:Number, param3:o18509, param4:o8925, param5:o7848, param6:uint, param7:uint, param8:Array) : void
      {
         this.o1432 = param5;
         this.o13376 = param4;
         o17195 = param4.o18640;
         this.o6365 = param6;
         this.o3046 = o8723.o3969 | o8723.o18180 | o8723.o19523;
         this.o10464 = param8;
         o16044 = o4519.o8116.o4550(o13376.o16685);
         o7742 = 1;
         o4982 = false;
         o30 = 15;
         super.o9943();
         fixture.o16280(this,o2841.o1516,o11304);
         var _loc9_:o17761 = new o17761(body.o2535);
         _loc9_.o16716(o30);
         o13767 = o4519.o8116.o20600.o15803(param6,param7,o8723.o10217,true);
         o13767.o10289 = _loc9_.id;
         body.o14230(o13767);
         o13767.o16280(this,o2841.o1516,o9663);
         body.o8564(param1.x,param1.y);
         body.o6141(param3.x,param3.y);
         o6691.rotation = param2;
         o16554 = o1051.o4767(this,0.0333333333333333,o7664);
      }
      
      private function o7664() : void
      {
         o4239 = o4239 + o16044 * 0.0333333333333333;
         if(o4239 > 1200)
         {
            o13640();
         }
         if(body)
         {
            body.o2503().defer(o2573);
         }
      }
      
      private function o2573(param1:o18509) : void
      {
         if(o6691)
         {
            o6691.rotation = param1.rotation;
         }
      }
      
      private function o9663(param1:o4217) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:* = null;
         var _loc4_:o6270 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6270;
         if(_loc4_)
         {
            _loc3_ = o13376.o5725 * o20409(o4239);
            _loc3_ = _loc3_ * o2493;
            _loc3_ = _loc3_ * o10886.o1815;
            _loc3_ = _loc3_ * (o17195 >= 1?1:o17195);
            _loc2_ = o4016.o10062().initialise(_loc3_,o13376.o3,o1432,this,o6691.rotation,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
            o4519.o8116.o8361.o5725(_loc4_,_loc2_);
            if(!(_loc4_ is o10384))
            {
               body.o2503().defer(o12366);
            }
            o17195 = o17195 - 1;
            if(o17195 <= 0)
            {
               o13640();
            }
         }
      }
      
      private function o12366(param1:o18509) : void
      {
         param1.rotate(-0.523598775598299 + 3.14159265358979 / 3 * Math.random());
         body.o6141(param1.x,param1.y);
         o6691.rotation = param1.rotation;
      }
      
      private function o20409(param1:Number) : Number
      {
         var _loc2_:* = 1;
         var _loc3_:Number = o4519.o8116.o4550(o13376.o14120);
         if(param1 <= _loc3_)
         {
            _loc2_ = Number(_loc2_ * 1);
         }
         else if(param1 <= _loc3_ * 2)
         {
            _loc2_ = Number(_loc2_ * 0.75);
         }
         else
         {
            _loc2_ = Number(_loc2_ * 0.5);
         }
         return _loc2_;
      }
      
      private function o11304(param1:o4217) : void
      {
         var _loc2_:o257 = new o257(body.position.x,body.position.y);
         o4519.o8116.o4812.o4404.o11304.play(0.4,0,0,false,_loc2_.o10088());
      }
      
      override public function o13640() : void
      {
         o4239 = 0;
         body.o19977(o13767.id);
         o13767.o19115();
         o13767 = null;
         o1051.o19115(o16554);
         super.o13640();
         o10696.push(this);
      }
   }
}
