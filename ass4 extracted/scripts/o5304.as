package
{
   public class o5304 extends o8023
   {
       
      
      public var o6691:o4332 = null;
      
      public var o16166:o7331 = null;
      
      public function o5304()
      {
         super();
      }
      
      public function o11521(param1:String) : void
      {
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16444 = false;
         o6691.position = new o2415();
         o6691.position.x = -10000;
         o6691.position.y = -10000;
         o6691.o16396 = o17541.o13617(param1);
         o4519.o8116.o11954.o9226(o6691,false);
         o16166 = o4519.o8116.o11676.o6798(param1);
         o16166.o11525(o6691);
         o16166.play();
      }
      
      public function o1148(param1:String) : void
      {
         o4519.o8116.o11954.o13674(o6691);
         o6691.rotation = 0;
         o6691.scaleX = 1;
         o6691.scaleY = 1;
         o6691.o2158 = 6;
         o6691.o16444 = false;
         o6691.o6034 = null;
         o6691.colorTransform = null;
         o6691.o9824 = true;
         o6691.o16396 = o17541.o13617(param1);
         o16166.o10589(param1);
         o16166.gotoAndPlay(0);
      }
      
      public function o13640() : void
      {
         o16166.stop();
         o6691.o9824 = false;
         o4519.o8116.o11954.o13674(o6691);
         o4519.o8116.o13427.o11882(this);
      }
      
      override public function o19115() : void
      {
         if(o6691)
         {
            o6691.o19115();
         }
         o6691 = null;
         if(o16166)
         {
            o16166.o19115();
         }
         o16166 = null;
      }
   }
}
