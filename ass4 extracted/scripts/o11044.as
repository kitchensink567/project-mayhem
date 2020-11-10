package
{
   public class o11044 extends o7848
   {
      
      private static const o15206:Number = 0.5;
      
      private static const o4565:Number = 20;
       
      
      private var o15465:o4332;
      
      private var o681:o4332;
      
      private var o3843:Number = 750;
      
      private var o7616:o3358;
      
      public function o11044()
      {
         super();
      }
      
      public function o16955(param1:int, param2:o3358, param3:o18509, param4:Number, param5:int = 0) : void
      {
         this.o7616 = param2;
         var _loc8_:o4332 = o4519.o8116.o11954.o10869();
         _loc8_.o16990 = o11381.o7998;
         _loc8_.o2158 = 1;
         o4929(50,-50,0,0.5,0.5,0.5,0.6,_loc8_);
         o15465 = o4519.o8116.o11954.o10869();
         o15465.o16990 = o11381.o9071;
         o15465.o16396 = o17541.o13617("assets.avatar.pose.Pistol");
         o15465.o2158 = 1;
         o4929(50,-50,0,0.5,0.5,0.5,0.6,o15465);
         var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,0,false);
         var _loc9_:o17761 = new o17761(_loc6_.o2535);
         _loc9_.o16716(20);
         var _loc7_:o4039 = o4519.o8116.o20600.o15803(o8723.o17445,o8723.o13056);
         _loc7_.o10289 = _loc9_.id;
         _loc6_.o14230(_loc7_);
         _loc6_.o8564(param3.x,param3.y);
         super.o10783(param1,_loc6_,_loc8_,o4519.o8116.o11676);
         o15465.position = _loc6_.position;
         o4519.o8116.o11954.o9226(o15465);
         o16166.o10589("assets.characters.avatar.Legs");
         o16166.o12265 = true;
         o16166.play();
         o4693(param2).o18447 = this;
         o1051.o4767(this,0.0333333333333333,o7664);
      }
      
      public function o7664() : void
      {
         var _loc2_:* = null;
         var _loc1_:Number = NaN;
         if(o7616.o10720.x != 0 || o7616.o10720.y != 0)
         {
            o6691.rotation = o7616.o10720.rotation;
         }
         var _loc4_:o18509 = o15460.o4078;
         _loc4_.x = 1;
         _loc4_.y = 0;
         _loc4_.rotate(o7616.o2179.rotation);
         o15465.rotation = _loc4_.rotation;
         var _loc3_:* = 1;
         if(o7616.o10720.o3215 > 0)
         {
            _loc2_ = new o18509();
            _loc2_.x = 1;
            _loc2_.y = 0;
            _loc2_.rotate(o6691.rotation);
            _loc1_ = Math.abs(_loc4_.o19203(_loc2_));
            _loc3_ = Number(1 - _loc1_ / 3.14159265358979 * 0.5);
            if(_loc1_ <= 3.14159265358979 / 4)
            {
               o16166.o10589("assets.avatar.legs.Foward");
            }
            else if(_loc1_ <= 2.35619449019235)
            {
               o16166.o10589("assets.avatar.legs.Sideway");
               if(_loc4_.o10018(_loc2_.o4010()) > 0)
               {
                  o6691.rotation = o6691.rotation + 3.14159265358979 / 2;
               }
               else
               {
                  o6691.rotation = o6691.rotation - 3.14159265358979 / 2;
               }
            }
            else
            {
               o16166.o10589("assets.avatar.legs.Backward");
               o6691.rotation = o6691.rotation - 3.14159265358979;
            }
         }
         else
         {
            o16166.o10589("assets.avatar.legs.Idle");
            o6691.rotation = o15465.rotation;
         }
         body.o6141(o7616.o10720.x * o3843 * _loc3_,o7616.o10720.y * o3843 * _loc3_);
      }
   }
}
