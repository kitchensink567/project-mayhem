package
{
   public class o13966 extends o19042
   {
      
      public static var o1031:Vector.<o1619>;
      
      private static const delta:Number = 0.03333333333333333;
       
      
      public var o10696:Vector.<o13966>;
      
      private var o4239:Number = 0;
      
      private var o16044:Number = 0;
      
      private var o11457:int = 0;
      
      private var o18354:int = 0;
      
      private var o13909:Number = 1;
      
      private var o15268:Number = 1;
      
      private var o4670:o8925;
      
      private var o16554:int;
      
      private const o16168:Number = 0.26666666666666666;
      
      private var o13943:Number = 0;
      
      private var o3615:Boolean = false;
      
      public function o13966()
      {
         super();
      }
      
      public function o16955(param1:o18509, param2:Number, param3:o18509, param4:o8925, param5:o7848, param6:uint, param7:uint, param8:Array) : void
      {
         this.o1432 = param5;
         this.o13376 = param4;
         this.o3615 = false;
         o7742 = 0;
         o13943 = 0;
         this.o6365 = param6;
         this.o3046 = param7;
         this.o10464 = param8;
         this.o15268 = param4.o18640;
         this.o4670 = param4;
         o13909 = o4519.o8116.o4550(o13376.o30);
         o16044 = o4519.o8116.o4550(o13376.o16685);
         o11457 = o13376.o20325;
         o18354 = o13376.o13485;
         o30 = 15;
         super.o9943();
         this.o16166.o12265 = true;
         this.o16166.play();
         fixture.o16280(this,o2841.o1516,o9663);
         body.o8564(param1.x,param1.y);
         body.o6141(param3.x,param3.y);
         o6691.rotation = param2;
         o15381();
         o16554 = o1051.o4767(this,0.0333333333333333,o7664);
      }
      
      private function o7664() : void
      {
         o4239 = o4239 + o16044 * 0.0333333333333333;
         o13943 = o13943 + 0.0333333333333333;
         if(o13943 >= 0.266666666666667)
         {
            o20514();
            o13640();
         }
      }
      
      private function o9663(param1:o4217) : void
      {
         var _loc3_:* = null;
         var _loc6_:Number = o4670.o5725 * o20409(o4239);
         _loc6_ = _loc6_ * o2493;
         _loc6_ = _loc6_ * o10886.o1815;
         var _loc4_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.PlayerAcidPool"];
         var _loc2_:* = o4519.o8116.o2996.o2998(_loc4_,[o1432,o4670.o4687 * o2493,o4670.o10273,o4670.o3,o4670.o18640,o4670.o7077,o4670.o11401,o4670.o1775,o4670.id,o19888]);
         _loc2_.body.o8564(body.position.x,body.position.y);
         _loc2_.o6691.rotation = o6691.rotation;
         var _loc5_:o6270 = o4519.o8116.o2996.o14389(param1.o11541.body) as o6270;
         if(_loc5_ && !o19888)
         {
            _loc3_ = o4016.o10062().initialise(_loc6_,o4670.o3,o1432,this,0,o13376.o15985,o10886.o12680,0,false,o10886.o7859,0,false,o13376.o1775,o10886.o14685,o10886.o18873,o13376.id);
            o4519.o8116.o8361.o5725(_loc5_,_loc3_);
         }
         o13640();
      }
      
      private function o20514() : void
      {
         var _loc3_:Number = o4670.o5725 * o20409(o4239);
         _loc3_ = _loc3_ * o2493;
         _loc3_ = _loc3_ * o10886.o1815;
         var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.PlayerAcidPool"];
         var _loc1_:* = o4519.o8116.o2996.o2998(_loc2_,[o1432,o4670.o4687 * o2493,o4670.o10273,o4670.o3,o4670.o18640,o4670.o7077,o4670.o11401,o4670.o1775,o4670.id,o19888]);
         _loc1_.body.o8564(body.position.x,body.position.y);
         _loc1_.o6691.rotation = o6691.rotation;
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
      
      private function o15381() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o14142.o6890.play(0.5,0,0,false,_loc1_.o10088());
      }
      
      override public function o13640() : void
      {
         o3615 = true;
         o4239 = 0;
         o13943 = 0;
         o1051.o19115(o16554);
         super.o13640();
         o10696.push(this);
      }
      
      override public function o19115() : void
      {
         o1051.o19115(o16554);
         super.o19115();
      }
   }
}
