package
{
   public class o19042 extends o7848
   {
      
      private static var o336:o8464 = new o8464();
       
      
      public var o6365:uint;
      
      protected var o3046:uint;
      
      protected var o10464:Array;
      
      public var o2493:Number = 1.0;
      
      public var o10886:o8464;
      
      protected var fixture:o4039 = null;
      
      protected var o3396:Number = 0;
      
      protected var o7742:Number = 0.7;
      
      protected var o12438:Number = 0;
      
      protected var o4982:Boolean = true;
      
      public var o1432:o7848 = null;
      
      public var o2752:o4411;
      
      public var o13376:o8925;
      
      public var o19888:Boolean = false;
      
      public var o128:Function = null;
      
      public function o19042()
      {
         o6365 = o8723.o17798;
         o3046 = o8723.o10217;
         o10464 = [o18442,o5640,o10384];
         o10886 = new o8464();
         super();
      }
      
      public function o5179() : void
      {
         if(o30 == 0)
         {
            o30 = 10;
         }
         o6691 = o4519.o8116.o11954.o10869();
         o6691.o16396 = o17541.o13617("assets.ammo.Shell.Display");
         o6691.o16990 = o11381.o11085;
         o6691.position = new o2415();
         o16166 = o4519.o8116.o11676.o6798(null);
         o16166.o11525(o6691);
         o4519.o8116.o11954.o9226(o6691);
      }
      
      public function o9943() : void
      {
         body = o4519.o8116.o9869.o1968(1,o3396);
         o6691.position = body.position;
         o16166.o10589(o4519.o8116.o5830.o9009(o13376.o4766));
         o6691.o9824 = true;
         var _loc2_:o17761 = new o17761(body.o2535);
         _loc2_.o16716(o30);
         var _loc1_:uint = o8723.o10217;
         fixture = o4519.o8116.o20600.o15803(o6365,o3046,_loc1_,o4982,o12438,o7742);
         fixture.o10289 = _loc2_.id;
         body.o14230(fixture);
      }
      
      public function o6141(param1:Number, param2:Number) : void
      {
         body.o6141(param1,param2);
      }
      
      public function o13640() : void
      {
         if(o6691)
         {
            o6691.o9824 = false;
         }
         if(body)
         {
            body.o19115();
         }
         body = null;
         if(fixture)
         {
            fixture.o19115();
         }
         fixture = null;
         o2752 = null;
         o13376 = null;
         o1432 = null;
         o128 = null;
         o10886 = o336;
         o3396 = 0;
         o7742 = 0.7;
         o12438 = 0;
         o4982 = true;
         o2493 = 1;
         o19888 = false;
      }
      
      override public function o19115() : void
      {
         if(o6691)
         {
            o6691.o19115();
         }
         o6691 = null;
         if(body)
         {
            body.o19115();
         }
         body = null;
         if(fixture)
         {
            fixture.o19115();
         }
         fixture = null;
         o10464 = null;
         fixture = null;
         o2752 = null;
         o13376 = null;
         o1432 = null;
         o10886 = null;
         o128 = null;
         super.o19115();
      }
   }
}
