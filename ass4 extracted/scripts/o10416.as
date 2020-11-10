package
{
   import flash.utils.ByteArray;
   
   public class o10416 extends o7848
   {
       
      
      public var o6365:uint;
      
      protected var o3046:int;
      
      protected var o10464:Array;
      
      public var o2493:Number = 1.0;
      
      public var o10886:o8464;
      
      protected var o7742:Number = 0.7;
      
      protected var o12438:Number = 0;
      
      protected var fixture:o4039 = null;
      
      protected var o4982:Boolean = true;
      
      public var o19505:o10416 = null;
      
      public var o9531:String;
      
      public var o1432:o7848 = null;
      
      public var o3:int = 1;
      
      public var o13376:o8925;
      
      public var target:o7848;
      
      public var o19888:Boolean = false;
      
      public function o10416()
      {
         o6365 = o8723.o17798;
         o3046 = o8723.o10217;
         o10464 = [o18442,o5640,o10384];
         o10886 = new o8464();
         o9531 = "assets.bullets.Bullet";
         super();
      }
      
      public function o5179(param1:int, param2:o10262, param3:o4332, param4:o7848) : void
      {
         this.o19505 = this;
         o1432 = param4;
         if(o30 == 0)
         {
            o30 = 10;
         }
         var _loc6_:o17761 = new o17761(param2.o2535);
         _loc6_.o16716(o30);
         var _loc5_:uint = o8723.o10217;
         fixture = o4519.o8116.o20600.o15803(o6365,o3046,_loc5_,o4982,o12438,o7742);
         fixture.o10289 = _loc6_.id;
         param2.o14230(fixture);
         if(param3 != null)
         {
            param3.o16396 = o17541.o13617(o9531);
            param3.o16990 = o11381.o11085;
         }
         super.o10783(param1,param2,param3,o4519.o8116.o11676);
      }
      
      public function o6141(param1:Number, param2:Number) : void
      {
         body.o6141(param1,param2);
      }
      
      override public function o19115() : void
      {
         if(o6691)
         {
            o6691.o19115();
         }
         o6691 = null;
         o10464 = null;
         o13376 = null;
         fixture = null;
         o19505 = null;
         o9531 = null;
         o10886 = null;
         target = null;
         super.o19115();
      }
      
      override public function o18192(param1:ByteArray) : void
      {
      }
      
      override public function o14232(param1:ByteArray, param2:int = 0) : void
      {
      }
   }
}
