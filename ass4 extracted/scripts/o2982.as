package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o2982 extends o12290
   {
       
      
      private var o19478:int;
      
      private var o971:int;
      
      private var o12484:int = 1;
      
      private var o13128:Boolean = true;
      
      private var o9365:MovieClip;
      
      public var o12087:String;
      
      private var o9614:Number;
      
      private var o118:Timer;
      
      public function o2982()
      {
         super();
      }
      
      public function o7658(param1:int, param2:int, param3:int) : void
      {
         o19478 = param1;
         o971 = param2;
         o12484 = param3;
         this.o1258();
      }
      
      public function o4432(param1:Number) : void
      {
         this.o9614 = param1;
         o118 = new Timer(1000);
         o118.addEventListener("timer",o5348,false,0,true);
         o118.start();
         o5348(null);
      }
      
      public function o5348(param1:Event) : void
      {
         o9614 = o9614 - 1000;
         if(o9614 < 0)
         {
            o118.stop();
            this.o13586 = "";
            this.visible = false;
         }
         else
         {
            this.o13586 = "Promotion Ends in: " + o16724.o19944(o9614);
         }
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o13128 = false;
      }
      
      override protected function draw() : void
      {
         var _loc3_:* = null;
         super.draw();
         if(o9614 < 0)
         {
            return;
         }
         o9365 = this.asset.getChildByName("icon") as MovieClip;
         if(o9365 != null)
         {
            o9365.stop();
         }
         var _loc4_:TextField = this.asset.getChildByName("lblCost") as TextField;
         if(_loc4_ != null)
         {
            if(o19478 > 0)
            {
               _loc4_.text = o19478.toString();
            }
            else
            {
               _loc4_.text = "";
            }
         }
         var _loc2_:MovieClip = this.asset.getChildByName("salePrice") as MovieClip;
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getChildByName("lblCostSale") as TextField;
            _loc2_.visible = o19478 != o971;
            o1256(_loc3_,o971.toString());
         }
         if(o9365 != null)
         {
            if(o12087 != null)
            {
               o19614(o9365,o12087);
            }
            else
            {
               o13010(o9365,o12484);
            }
         }
         var _loc1_:MovieClip = this.asset.getChildByName("coinIcon") as MovieClip;
         if(_loc1_ != null)
         {
            _loc1_.visible = o19478 > 0;
         }
      }
      
      override public function o13640() : void
      {
         if(o118 != null)
         {
            o118.stop();
            o118.removeEventListener("timer",o5348);
         }
         o19478 = 0;
         o12484 = 0;
         o13128 = false;
         o9365 = null;
         o118 = null;
         super.o13640();
      }
   }
}
