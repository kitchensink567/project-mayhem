package
{
   public class o13817 extends o7848 implements o1452
   {
       
      
      private var o4326 = null;
      
      private var o12097:o4039 = null;
      
      private var o6297:uint = 0;
      
      private var o7112:o4039 = null;
      
      public var o13779:Boolean = true;
      
      private var o20587:Number = 1;
      
      private var o14964:Boolean = false;
      
      private var o17821:Number = 0;
      
      public function o13817()
      {
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.effects.AlphaVirusPickup");
         _loc1_.push("assets.effects.AlphaVirusExplosion");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*) : void
      {
         this.o4326 = param2;
         var _loc4_:o4332 = o4519.o8116.o11954.o10869();
         _loc4_.o16396 = o17541.o13617("assets.effects.AlphaVirusPickup");
         _loc4_.o16990 = o11381.o11085;
         var _loc3_:o10262 = o4519.o8116.o9869.o1968(1,1,false);
         var _loc5_:o17761 = new o17761(_loc3_.o2535);
         _loc5_.o16716(24);
         o6297 = o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969;
         o12097 = o4519.o8116.o20600.o15803(o8723.o9135,o6297,o6297,false,0,1);
         o12097.o10289 = _loc5_.id;
         _loc3_.o14230(o12097);
         super.o10783(param1,_loc3_,_loc4_,o4519.o8116.o11676);
         o16166.o12265 = true;
         o16166.play();
         o20587 = o4519.o8116.o4550(o19616.o18473);
         _loc5_ = new o17761(_loc3_.o2535);
         _loc5_.o16716(32);
         o7112 = o4519.o8116.o20600.o15803(o8723.o9135,o8723.o32,o8723.o32,true);
         o7112.o10289 = _loc5_.id;
         _loc3_.o14230(o7112);
         o7112.o16280(this,o2841.o1516,o4949);
         o1051.o4767(this,3,o13785);
      }
      
      public function o8564(param1:Number, param2:Number) : void
      {
         body.o8564(param1,param2);
      }
      
      public function o14322() : void
      {
         o12097.o8508(0);
         o7112.o8508(0);
         o6691.o9824 = false;
         o13779 = false;
         o14964 = false;
      }
      
      public function o9072() : void
      {
         o12097.o8508(o6297);
         o7112.o8508(o8723.o32);
         o6691.o9824 = true;
         o13779 = true;
         o14964 = false;
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(!_loc2_.o7694)
         {
            o4326.o9120(_loc2_);
         }
      }
      
      public function o19344(param1:o17517) : void
      {
         o4519.o13206.o16821(5,0.2);
         o13669();
         var _loc4_:Number = o4519.o8116.o4550(o19616.o16468);
         var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.AlphaVirusExplosion"]) as o2130;
         if(_loc2_ != null)
         {
            _loc2_.o6691.position.x = body.position.x;
            _loc2_.o6691.position.y = body.position.y;
            _loc2_.o6691.scaleX = _loc4_ / 100;
            _loc2_.o6691.scaleY = _loc4_ / 100;
         }
         var _loc3_:int = 0;
         o4519.o8116.o2996.o9685(o18442,body.position.x,body.position.y,_loc4_,o8723.o17798,0).defer(o10870);
      }
      
      private function o10870(param1:Array) : void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_ = o15460.o4078;
            _loc3_.x = _loc2_.body.position.x - body.position.x;
            _loc3_.y = _loc2_.body.position.y - body.position.y;
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(999999999,1,this,null,_loc3_.rotation));
         }
      }
      
      private function o13669() : void
      {
         var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o20325.o4335.play(1,0,0,false,_loc1_.o10088());
      }
      
      public function o19821(param1:int) : void
      {
         body.o6141((-1 + o4519.o8116.random.o10418(param1 + 47) * 2) * o20587 * 1.5,(-1 + o4519.o8116.random.o10418(param1 + 32) * 2) * o20587 * 1.5);
         o17821 = 0;
         o1051.o4767(this,0.0333333333333333,o7881,60);
      }
      
      private function o7881() : void
      {
         o17821 = o17821 + 0.0333333333333333;
         o6691.rotation = o6691.rotation + (2 - o17821) * 2 * 3.14159265358979 / 30;
      }
      
      private function o13785() : void
      {
         if(!o13779)
         {
            return;
         }
         if(o4519.o8116.o9869.o16561(body))
         {
            if(o14964)
            {
               o4326.reset();
            }
            else
            {
               o14964 = true;
            }
         }
      }
      
      public function o13005() : int
      {
         return 1;
      }
      
      public function o17441() : Boolean
      {
         return true;
      }
      
      public function o15437(param1:o7848) : Boolean
      {
         var _loc2_:Number = NaN;
         if(!o13779)
         {
            return true;
         }
         _loc2_ = (param1.body.position.x - body.position.x) * (param1.body.position.x - body.position.x) + (param1.body.position.y - body.position.y) * (param1.body.position.y - body.position.y);
         if(_loc2_ < 250000)
         {
            return false;
         }
         return true;
      }
      
      override public function o19115() : void
      {
         o12097 = null;
         o7112 = null;
         super.o19115();
      }
   }
}
