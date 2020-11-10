package
{
   public class o9047 extends o7848
   {
      
      public static var o6365:int = o8723.o11272;
       
      
      private var o4903:o18509;
      
      private var o20462:int = 0;
      
      private var o14174:int = 0;
      
      private var o6311:Number = 3.141592653589793;
      
      public var o12363:Boolean = true;
      
      public function o9047()
      {
         super();
      }
      
      public function o16955(param1:int, param2:int) : void
      {
         var _loc4_:o10262 = o4519.o8116.o9869.o1968(1,5,false);
         var _loc6_:o4332 = o4519.o8116.o11954.o10869();
         var _loc9_:o17761 = new o17761(_loc4_.o2535);
         _loc9_.o16716(3);
         var _loc3_:* = o8723.o18180 | o8723.o19523 | o8723.o3969;
         var _loc5_:o4039 = o4519.o8116.o20600.o15803(o6365,_loc3_,0,false,0,0.7);
         _loc5_.o10289 = _loc9_.id;
         _loc4_.o14230(_loc5_);
         _loc4_.o7191 = 10;
         var _loc8_:int = 0;
         var _loc7_:String = "";
         switch(int(param2))
         {
            case 0:
               _loc8_ = Math.random() * 10 + 1;
               _loc7_ = "assets.common.zombie.gib" + _loc8_.toString();
               break;
            case 1:
               _loc8_ = Math.random() * 13 + 1;
               _loc7_ = "assets.common.zombie.tech.gib" + _loc8_.toString();
               break;
            case 2:
               if(Math.random() >= 0.5)
               {
                  _loc8_ = Math.random() * 10 + 1;
                  _loc7_ = "assets.common.zombie.gib" + _loc8_.toString();
               }
               else
               {
                  _loc8_ = Math.random() * 13 + 1;
                  _loc7_ = "assets.common.zombie.tech.gib" + _loc8_.toString();
               }
               break;
            case 3:
               _loc8_ = Math.random() * 13 + 1;
               _loc7_ = "assets.enemies.boss3Zombie.Gib";
               if(_loc8_ < 10)
               {
                  _loc7_ = _loc7_ + "0";
               }
               _loc7_ = _loc7_ + _loc8_.toString();
               break;
            case 4:
               _loc8_ = Math.random() * 5 + 1;
               _loc7_ = "assets.effects.wallGib" + _loc8_.toString();
               break;
            case 5:
               _loc8_ = Math.random() * 5 + 1;
               _loc7_ = "assets.effects.ExplodeGib" + _loc8_.toString();
               break;
            case 6:
               _loc8_ = Math.random() * 10 + 1;
               _loc7_ = "assets.common.zombie.ice.Gib" + _loc8_.toString();
         }
         _loc6_.o16396 = o17541.o13617(_loc7_);
         _loc6_.o16990 = o11381.o11272;
         super.o10783(param1,_loc4_,_loc6_,o4519.o8116.o11676);
      }
      
      public function o6141(param1:o18509) : void
      {
         o4903 = new o18509(param1.x,param1.y);
         o4903.o17903(1000);
         var _loc2_:Number = Math.random() * 0.5 + 0.5;
         o4903.o17903(_loc2_);
         o6311 = Math.random() * (3.14159265358979 * 0.2) - 3.14159265358979 * 0.1;
         o14174 = 10 + int(Math.random() * 16);
         body.o6141(o4903.x,o4903.y);
         o1051.o9310(this,o14174 * 0.0333333333333333,o20857);
      }
      
      private function o20857() : void
      {
         if(o12363)
         {
            o4519.o9721.o2075.o471(o6691);
            o6691 = null;
         }
         o19115();
      }
   }
}
