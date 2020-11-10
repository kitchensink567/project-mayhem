package
{
   import flash.events.Event;
   
   public class o20164
   {
       
      
      private var o1432:o17517;
      
      private var o7218:int;
      
      private var o4312:Number;
      
      private var o5725:Number;
      
      private var o11243:Number;
      
      private var o17018:o18509;
      
      private var o10555:o5640;
      
      private var o7616:o3358;
      
      private var o13827:int;
      
      public function o20164(param1:o17517, param2:int, param3:Number, param4:Number, param5:Number)
      {
         super();
         this.o1432 = param1;
         this.o7218 = param2;
         this.o4312 = param3;
         this.o5725 = param4;
         this.o11243 = param5;
         var _loc6_:o18509 = o15460.o4078;
         _loc6_.x = 75;
         _loc6_.y = 0;
         _loc6_.rotate(o4519.o8116.random.o10418(param2) * 3.14159265358979 * 2);
         o4519.o8116.o2996.o4816(param1.body.position.x,param1.body.position.y,param1.body.position.x + _loc6_.x,param1.body.position.y + _loc6_.y,o8723.o32,o8723.o3969 | o8723.o18180 | o8723.o19523).defer(o14870);
      }
      
      private function o14870(param1:*) : void
      {
         o17018 = new o18509(param1.x,param1.y);
         if(param1.entity == 1 && param1.x == 0 && param1.y == 0)
         {
            o17018.x = param1.endX;
            o17018.y = param1.endY;
         }
         var _loc2_:o6392 = o4519.o8116.o13427.o11961(o6392,["assets.eliteAvatar.Intro",o5367,o11381.o7800]) as o6392;
         _loc2_.o6691.position.x = o17018.x;
         _loc2_.o6691.position.y = o17018.y;
      }
      
      private function o5367() : void
      {
         if(o1432 == o4519.o32)
         {
            o7616 = new o17762(o4519.o8116.stage,o4519.o8116.o18929);
         }
         else
         {
            o7616 = new o3358(o4519.o8116.stage,o4519.o8116.o18929);
         }
         var _loc1_:uint = o8723.o3969 | o8723.o18481 | o8723.o19523 | o8723.o7778 | o8723.o19394 | o8723.o9077 | o8723.o5479 | o8723.o18180 | o8723.o17079 | o8723.o42 | o8723.o14328;
         var _loc2_:uint = o8723.o17079 | o8723.o7778 | o8723.o19394 | o8723.o42;
         var _loc3_:o8347 = o12523();
         o10555 = o4519.o8116.o2996.o2998(o5640,["A1",o17018,Math.random() * 2 * 3.14159265358979,_loc1_,_loc2_,_loc3_,o7616],o7218) as o5640;
         o10555.body.o7191 = 200;
         o10555.o7921(o1432.o3843);
         o10555.o4027 = "Assault Team Member";
         o10555.o10051 = 9490778;
         o10555.o19989 = "assets.eliteAvatar.pose.Pistol";
         o10555.o4963 = "assets.eliteAvatar.pose.Rifle";
         o10555.o17332 = "assets.avatar.pose.Death";
         o10555.o279 = "assets.eliteAvatar.legs.Foward";
         o10555.o13718 = "assets.eliteAvatar.legs.Sideway";
         o10555.o11700 = "assets.eliteAvatar.legs.Backward";
         o10555.o14808 = "assets.eliteAvatar.legs.Idle";
         o10555.o6610();
         o10555.o15644();
         o10555.o2752.o2493 = o5725;
         o10555.o5946(o11243);
         o10555.o2752.o18404 = 1000000;
         o10555.o1432 = o1432;
         o10555.o10887 = o1432.o5973;
         o10555.o12086 = false;
         if(o7616 is o17762)
         {
            o17762(o7616).o3151(o10555);
         }
         o10555.o16280(o1432,o5640.o12777,o17212);
         o13827 = o1051.o9310(o1432,o4312,o4910);
      }
      
      private function o12523() : o8347
      {
         var _loc1_:Vector.<o8347> = new Vector.<o8347>();
         var _loc4_:int = 0;
         var _loc3_:* = o4519.o8116.o1184.o11620;
         for each(var _loc2_ in o4519.o8116.o1184.o11620)
         {
            if(_loc2_.o11412 == 2 && !_loc2_.o5168 && _loc2_.o6365 != 1 && _loc2_.o11570 == 1)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_[int(o4519.o8116.random.o10418(o7218 + 2) * _loc1_.length)];
      }
      
      private function o17212(param1:Event) : void
      {
         o4910();
      }
      
      private function o4910() : void
      {
         o1051.o19115(o13827);
         var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.eliteAvatar.TimeOut",o11381.o7800]) as o2130;
         _loc1_.o6691.position.x = o10555.o6691.position.x;
         _loc1_.o6691.position.y = o10555.o6691.position.y;
         _loc1_.o6691.rotation = o10555.o6691.rotation;
         if(o7616)
         {
            o7616.o19115();
         }
         o10555.o19115();
      }
   }
}
