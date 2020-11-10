package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o8234 extends o9743
   {
       
      
      private var o14956:Vector.<o12760>;
      
      private var o17284:TextField;
      
      private var o16388:Timer;
      
      private var o14975:Number;
      
      private var o539:Date;
      
      public function o8234()
      {
         super();
      }
      
      public function o20873(param1:int, param2:int, param3:int, param4:int, param5:o14096) : void
      {
         var _loc7_:MovieClip = container.getChildByName("btnPremiumWeapon" + param1) as MovieClip;
         var _loc6_:o12760 = new o12760();
         _loc6_.o15618(_loc7_);
         _loc6_.o1797(param2,param3,param4,param5,o539);
         this.o5452(_loc6_);
         o14956.push(_loc6_);
      }
      
      public function o16384(param1:MovieClip, param2:Date) : void
      {
         super.init(param1);
         this.o539 = param2;
         o14975 = param2.time - o4519.o8116.o15020.time;
         o17284 = container.getChildByName("promoEndsIn") as TextField;
         o17284.text = "";
         o14956 = new Vector.<o12760>();
         o16388 = new Timer(1000);
         o16388.addEventListener("timer",o18956,false,0,true);
         o16388.start();
         o18956(null);
      }
      
      public function o18956(param1:Event) : void
      {
         if(o16388 == null)
         {
            return;
         }
         o14975 = o14975 - 1000;
         if(o14975 < 0)
         {
            o14975 = 0;
            o16388.stop();
            this.close();
         }
         o17284.text = "Promotion Ends in : " + o16724.o13621(o14975);
      }
      
      override public function o13640() : void
      {
         o16388.removeEventListener("timer",o18956);
         o14956 = null;
         o17284 = null;
         o16388 = null;
         super.o13640();
      }
   }
}
