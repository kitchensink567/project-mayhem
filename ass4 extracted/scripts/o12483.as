package
{
   import flash.events.Event;
   
   public class o12483 extends o8023
   {
       
      
      public const o12963:Number = 0.6;
      
      public const o18640:uint = 50;
      
      public var o30:Number = 0;
      
      public var o5725:Number = 0;
      
      public var o10977:Number = 1;
      
      private var o1432:o17517;
      
      private var o18171:o18509;
      
      private var o7766:int = -1;
      
      private var o19399:int = -1;
      
      private var o6691:o4332;
      
      private var o16166:o7331;
      
      private var o2652:int = 0;
      
      private var o2913:o18509;
      
      public function o12483()
      {
         o18171 = new o18509();
         o2913 = new o18509();
         super();
      }
      
      public function init(param1:o17517, param2:Number, param3:Number, param4:int) : void
      {
         o1432 = param1;
         o30 = param2;
         o5725 = param3;
         o16191 = param4;
         this.o30 = o30;
         this.o5725 = o5725;
         this.o1432 = o1432;
         o19399 = o1051.o9310(this,0.05,function():void
         {
            o1432.o3314(26);
         });
         o10977 = o16191;
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16396 = o17541.o13617("assets.skills.aerialBombardment.Target");
         o6691.position = new o2415();
         o6691.o16990 = o11381.o2131;
         o4519.o8116.o11954.o9226(o6691);
         o16166 = o4519.o8116.o11676.o6798("assets.skills.aerialBombardment.Target");
         o16166.o11525(o6691);
         o16166.gotoAndStop(0);
         o4519.o19389.addEventListener("mouseDown",o10893);
         o7766 = o1051.o4767(this,0.0333333333333333,o10482);
      }
      
      private function o10482(param1:Event = null) : void
      {
         o6691.position.x = o4519.o32.o7616.o1523.x;
         o6691.position.y = o4519.o32.o7616.o1523.y;
      }
      
      private function o10893(param1:Event = null) : void
      {
         o1051.o19115(o19399);
         o1432.o1094(26);
         o8573();
         o18171.x = o4519.o32.o7616.o1523.x;
         o18171.y = o4519.o32.o7616.o1523.y;
         o1051.o19115(o7766);
         o7766 = -1;
         o4519.o19389.removeEventListener("mouseDown",o10893);
         o2652 = 0;
         o1051.o4767(this,0.6,o15247,o10977);
         o16166.gotoAndPlay(1);
         o16166.o12265 = false;
         o1051.o9310(this,o10977 * (0.6 + 2),o13815);
      }
      
      private function o15247() : void
      {
         o2652 = Number(o2652) + 1;
         if(o2652 != 1)
         {
            o2913.x = 130;
            o2913.y = 0;
            o2913.rotate(Math.random() * 2 * 3.14159265358979);
         }
         o1051.o9310(this,Math.random() * 0.6 * 0.95,o20446);
      }
      
      private function o20446() : void
      {
         o1432.o495(o30,o5725,o18171.x + o2913.x,o18171.y + o2913.y);
      }
      
      private function o13815(param1:Event = null) : void
      {
         if(o7766 != -1)
         {
            o4519.o19389.removeEventListener("mouseDown",o10893);
         }
      }
      
      private function o8573() : void
      {
         o4519.o8116.o4812.o1162.o3568.play(0.65);
      }
   }
}
