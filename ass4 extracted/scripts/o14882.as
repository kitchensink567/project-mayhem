package
{
   import flash.events.Event;
   
   public class o14882
   {
      
      public static var o12128:Vector.<o14882> = new Vector.<o14882>();
       
      
      public var o17954:o4332;
      
      public var o218:o7331;
      
      public var o17415:o4332;
      
      public var o8478:Boolean = false;
      
      public var position:o18509;
      
      public function o14882()
      {
         super();
      }
      
      public function init(param1:o4332, param2:o7331, param3:o4332) : void
      {
         o12128.push(this);
         this.o17954 = param1;
         this.o218 = param2;
         this.o17415 = param3;
         param1.o9824 = false;
         param3.o9824 = false;
         param1.o16990 = 0.01;
         param3.o16990 = 75;
         position = new o18509(param1.position.x,param1.position.y);
      }
      
      public function o20816() : void
      {
         if(o17415.o9824 == true)
         {
            o8478 = true;
            return;
         }
         o8478 = true;
         o17954.o9824 = true;
         o17415.o9824 = true;
         o17954.o16280(null,o1490.o16612,o14397);
         o218.play();
         var _loc1_:o257 = new o257(this.o17954.position.x,this.o17954.position.y);
         o4519.o8116.o4812.o4404.o14151.play(1,0,1000,false,_loc1_.o10088());
         new o6880(o17415).o2008(0.5,false);
      }
      
      private function o14397(param1:Event) : void
      {
         o4519.o9721.o2075.o471(o17954);
         o17954.o19115();
         o218.o19115();
      }
   }
}
