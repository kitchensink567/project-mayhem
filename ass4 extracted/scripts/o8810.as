package
{
   import flash.display.Sprite;
   
   public class o8810 extends Sprite
   {
       
      
      public function o8810()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19510;
      }
   }
}

import flash.events.Event;

class o19510 extends o10416
{
    
   
   private var o4243:Number;
   
   private var o20725:Number;
   
   private var o18493:o9686;
   
   private var o17950:Number = 1;
   
   function o19510()
   {
      super();
   }
   
   public function o16955(param1:int, param2:Number, param3:Number, param4:o18442) : void
   {
      o19505 = this;
      this.o4243 = param2;
      this.o20725 = param3;
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(1,0);
      var _loc6_:o4332 = o4519.o8116.o11954.o10869();
      o6365 = o8723.o42;
      o3046 = o8723.o19175 | o8723.o3969 | o8723.o19523 | o8723.o18180;
      o7742 = 0;
      o9531 = "assets.enemies.boss2Zombie.ProjectileParticalLoop";
      _loc6_.scaleX = 0.01;
      _loc6_.scaleY = 0.01;
      o18493 = new o9686();
      o18493.init("assets.enemies.boss2Zombie.ProjectileParticalLoop",0,0,o11381.o10850 + 1,0.1,this,_loc6_,-1,-1,0,7);
      super.o5179(param1,_loc5_,_loc6_,param4);
      _loc6_.o2158 = 7;
      _loc5_.o19926(this,o8273.o7087,o7087);
      o1051.o9310(this,60,o12103);
   }
   
   private function o7087(param1:o663) : void
   {
      var _loc4_:* = null;
      var _loc3_:Boolean = false;
      var _loc2_:o5640 = o4519.o8116.o2996.o14389(param1.o11541) as o5640;
      if(_loc2_ != null && _loc2_ is o5640)
      {
         if(!_loc2_.o7694 && !_loc2_.o12487)
         {
            o4519.o8116.o8361.o5725(_loc2_,o4016.o10062().initialise(o4243,2,o19505));
            _loc2_.o13423(o20725,3,2,o19505);
         }
         _loc3_ = true;
      }
      if(!_loc3_)
      {
         _loc4_ = o4519.o8116.o2996.o14389(param1.o11541) as o17517;
         if(_loc4_ != null)
         {
            if(!_loc4_.o7694 && !_loc4_.o12487)
            {
               o4519.o8116.o8361.o5725(_loc4_,o4016.o10062().initialise(o4243,2,o19505));
               _loc4_.o13423(o20725,3,2,o19505);
            }
         }
      }
      o12103();
   }
   
   private function o12103(param1:Event = null) : void
   {
      o18493.o19115();
      o19115();
   }
}
