package
{
   import flash.display.Sprite;
   
   public class o13742 extends Sprite
   {
       
      
      public function o13742()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o8455;
      }
   }
}

class o8455 extends o6743
{
    
   
   private const o12793:Number = 400;
   
   private var o12713:o10262;
   
   private var o6433:Boolean = false;
   
   function o8455()
   {
      super();
   }
   
   public function o16955(param1:int, param2:o18509, param3:int, param4:int, param5:Number = 1, param6:o12443 = null, param7:Boolean = false) : void
   {
      super.o9714(param1);
      o12713 = o4519.o8116.o9869.o1968(1,0,false);
      var _loc9_:o17761 = new o17761(body.o2535);
      _loc9_.o16716(24);
      var _loc8_:o4039 = o4519.o8116.o20600.o15803(o6365,o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969,o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969,true);
      _loc8_.o10289 = _loc9_.id;
      o12713.o14230(_loc8_);
      body.o13392(param2);
      o12713.o13392(param2);
      super.o12675(param3,param6,param5);
      o1051.o4767(this,0.25,o13785);
      if(param7)
      {
         o123();
      }
   }
   
   private function o13785() : void
   {
      var _loc1_:* = null;
      if(!o6433)
      {
         if(o15986 || o4519.o8116.o9869.o16561(o12713))
         {
            if(o16809.type == o19053.o14325 && o16809.o17401 == 11 && o4519.o32.o10691() >= 1)
            {
               body.o6141(0,0);
               o12713.o8564(body.position.x,body.position.y);
               return;
            }
            _loc1_ = o15460.o4078;
            _loc1_.x = o4519.o32.body.o2697.x - body.o2697.x;
            _loc1_.y = o4519.o32.body.o2697.y - body.o2697.y;
            _loc1_.o3215 = 400;
            body.o6141(_loc1_.x,_loc1_.y);
            o12713.o6141(_loc1_.x,_loc1_.y);
         }
         else
         {
            body.o6141(0,0);
            o12713.o8564(body.position.x,body.position.y);
         }
      }
   }
   
   public function o123() : void
   {
      o6433 = true;
      o1051.o9310(this,1,function():void
      {
         o6433 = false;
      });
   }
}
