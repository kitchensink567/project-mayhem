package
{
   import flash.display.Sprite;
   
   public class o13754 extends Sprite
   {
       
      
      public function o13754()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o12152;
      }
   }
}

class o12152 extends o10416
{
    
   
   private var o20554:Number;
   
   private var o4243:Number;
   
   private var o17950:Number = 1;
   
   function o12152()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc1_:Vector.<String> = new Vector.<String>();
      _loc1_.push("assets.enemies.spitter.Spit");
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:Number, param3:Number, param4:Number, param5:o18442) : void
   {
      o19505 = this;
      this.o20554 = param4;
      this.o4243 = param3;
      var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc7_:o4332 = o4519.o8116.o11954.o10869();
      o6365 = o8723.o42;
      o3046 = o8723.o19175 | o8723.o3969 | o8723.o18180 | o8723.o19523;
      o7742 = 0;
      o9531 = "assets.enemies.spitter.Spit";
      super.o5179(param1,_loc6_,_loc7_,param5);
      _loc6_.o19926(this,o8273.o7087,o7087);
      o1051.o9310(this,param2,o20017);
   }
   
   private function o6341() : void
   {
      var _loc3_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o11205.play(o17950,0,0,false,_loc3_.o10088());
      var _loc2_:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.projectiles.SpitPool"];
      var _loc1_:* = o4519.o8116.o2996.o2998(_loc2_,[o1432,o20554,3,o3]);
      _loc1_.body.o8564(body.o2697.x,body.o2697.y);
      _loc1_.o6691.rotation = o6691.rotation;
   }
   
   public function o20017() : void
   {
      o6341();
      o19115();
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc2_:o17517 = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
      if(_loc2_ != null && !_loc2_.o7694)
      {
         o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(o4243,o3,o19505));
      }
      o20017();
   }
}
