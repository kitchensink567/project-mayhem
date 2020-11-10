package
{
   import flash.utils.ByteArray;
   
   public class o72 extends o7848 implements o6270
   {
      
      public static var o13797:Number = 0.25;
       
      
      private var o1432:o7848;
      
      public function o72()
      {
         super();
      }
      
      public function o16955(param1:int, param2:o7848, param3:int) : void
      {
         this.o1432 = param2;
         body = o4519.o8116.o9869.o1968(2,0);
         var _loc5_:o17761 = new o17761(body.o2535);
         switch(int(param3))
         {
            case 0:
               _loc5_.o10827(20,-21.5,18,54);
               break;
            case 1:
               _loc5_.o10827(33,-11,21,58);
               break;
            case 2:
               _loc5_.o10827(29.5,-18,23,64);
               break;
            case 3:
               _loc5_.o10827(30.5,-14,24,64);
         }
         var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o19523,o8723.o17798,o8723.o17798);
         _loc4_.o10289 = _loc5_.id;
         body.o14230(_loc4_);
         super.o10783(param1,body,null,o4519.o8116.o11676);
         _loc4_.o16280(this,o2841.o1516,o3842);
      }
      
      private function o3842(param1:o4217) : void
      {
         var _loc2_:o257 = new o257(body.position.x,body.position.y);
         o4519.o8116.o4812.o14142.o1242.play(0.75,0,0,false,_loc2_.o10088(),0,2);
      }
      
      public function o11022(param1:o4016) : void
      {
      }
      
      public function o5725(param1:o4016) : void
      {
         var _loc2_:* = null;
         if(Math.random() < o13797)
         {
            o4519.o8116.o8361.o5725(o6270(o1432),param1);
         }
         else
         {
            _loc2_ = new o257(body.position.x,body.position.y);
            o4519.o8116.o4812.o14142.o1242.play(0.75,0,0,false,_loc2_.o10088(),0,2);
         }
      }
      
      override public function o13423(param1:Number, param2:Number, param3:int, param4:o7848, param5:o7848 = null, param6:int = -1, param7:Number = 0, param8:int = -1, param9:int = 0) : int
      {
         return -1;
      }
      
      override public function o11739(param1:int, param2:Number = 0) : int
      {
         return -1;
      }
      
      override public function o18192(param1:ByteArray) : void
      {
      }
      
      override public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
