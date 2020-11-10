package
{
   import flash.display.Sprite;
   
   public class o726 extends Sprite
   {
       
      
      public function o726()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15375;
      }
   }
}

class o15375 extends o18442
{
    
   
   function o15375()
   {
      super();
   }
   
   public function o16955(param1:int, param2:int, param3:o18509, param4:int) : void
   {
      grade = param2;
      type = 19;
      o1589 = 1;
      o11243 = 1;
      o3478 = 0;
      o20384 = new o7600(param1);
      var _loc7_:uint = 0;
      switch(int(grade))
      {
         case 0:
            this.o16125 = "Purge Nest";
            o17664(0);
            o17074 = 1;
            _loc7_ = o8723.o10217 ^ o8723.o2823 ^ o8723.o478 ^ o8723.o32 ^ o8723.o3732;
            break;
         case 1:
            this.o16125 = "Boss Egg";
            o17664(0);
            o17074 = 250;
            _loc7_ = o8723.o10217 ^ o8723.o2823;
            break;
         case 2:
            this.o16125 = "Minion Egg";
            o17664(0);
            o17074 = 200;
            _loc7_ = o8723.o10217 ^ o8723.o2823;
      }
      var _loc5_:o10262 = o4519.o8116.o9869.o1968(0,0);
      var _loc6_:o4332 = o4519.o8116.o11954.o10869();
      super.o19011(param1,_loc5_,_loc6_,param3,param4,o8723.o3969,false,0);
      _loc5_.o20458(fixture.id,o8723.o3969);
      _loc5_.o11496(fixture.id,_loc7_);
      _loc5_.o7191 = 40;
   }
   
   override public function o5725(param1:o4016) : void
   {
   }
}
