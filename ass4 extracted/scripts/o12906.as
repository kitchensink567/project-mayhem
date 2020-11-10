package
{
   import flash.events.Event;
   
   public class o12906 extends o5304
   {
       
      
      private var o7764:String;
      
      public function o12906()
      {
         o7764 = "";
         super();
      }
      
      public function o16677(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:String = "assets.maps.zombieEgg.bossEggSpikeCracks";
         super.o11521(_loc4_);
         o11533(param1,param2,param3);
      }
      
      public function o1666(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:String = "assets.maps.zombieEgg.bossEggSpikeCracks";
         super.o1148(_loc4_);
         o11533(param1,param2,param3);
      }
      
      private function o11533(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:int = int(Math.random() * 3) + 1;
         o7764 = "assets.maps.zombieEgg.bossEggSpikes" + _loc5_.toString();
         o6691.o16990 = o11381.o3648;
         o6691.rotation = Math.random() * 3.14159265358979 * 2;
         o6691.position.x = param2;
         o6691.position.y = param3;
         var _loc4_:int = Math.random() * 4;
         o16166.gotoAndPlay(_loc4_);
         o16166.o11224(0,18);
         o16166.o12265 = false;
         o1051.o9310(this,param1 + Math.random() * 0.8 - 0.4,o4526);
      }
      
      public function o4526() : void
      {
         var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,[o7764,o11381.o16883]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = o6691.position.x;
            _loc1_.o6691.position.y = o6691.position.y;
            _loc1_.o6691.rotation = o6691.rotation;
         }
         o16166.o11224(0,o16166.o12950() - 1);
         o16166.o11("red");
         o16166.o12265 = false;
         o16166.o19926(this,o1490.o16612,o12704);
      }
      
      public function o12704(param1:Event = null) : void
      {
         o13640();
      }
   }
}
