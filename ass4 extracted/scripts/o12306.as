package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class o12306 extends o9743
   {
       
      
      public var o17549:Boolean = true;
      
      public var o4402:Number = -1;
      
      public var o11712:Number = -1;
      
      private var o118:Number = 0;
      
      public function o12306()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      override public function o14009(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         if(o17549)
         {
            o674();
            super.o14009(param1,param2,param3,param4);
         }
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
      }
      
      override protected function o2635(param1:Event) : void
      {
         super.o2635(param1);
      }
      
      override public function set asset(param1:MovieClip) : void
      {
         .super.asset = param1;
      }
      
      override public function close() : void
      {
         if(o11985 == 2 || o11985 == 3)
         {
            return;
         }
         o11985 = 2;
         this.o12514 = true;
         asset.gotoAndPlay(o12794);
      }
      
      override public function o13640() : void
      {
         super.o13640();
      }
      
      override protected function o13010(param1:MovieClip, param2:int) : void
      {
         super.o13010(param1,param2);
      }
      
      override protected function o19614(param1:MovieClip, param2:String) : void
      {
         super.o19614(param1,param2);
      }
      
      override public function o8900(param1:int) : void
      {
         super.o8900(param1);
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         super.o13315(param1,param2);
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null)
         {
            return;
         }
         super.o6662(param1);
         if(asset == null || o12514)
         {
            return;
         }
         if(o4402 != -1 || o11712 != -1)
         {
            o118 = o118 + 0.0333333333333333;
            if(o11712 != -1 && o118 >= o11712)
            {
               this.o5382(null);
            }
            else if(o4402 != -1 && o118 >= o4402)
            {
               this.o19172(null);
            }
         }
      }
   }
}
