package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class o19496 extends o15625
   {
       
      
      private var o5918:String;
      
      private var o17141:int = 0;
      
      private var o141:String;
      
      public var o20341:int = 0;
      
      public function o19496()
      {
         o5918 = "x";
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.asset.addEventListener("addedToStage",o343,false,0,true);
      }
      
      private function o343(param1:Event) : void
      {
         this.asset.removeEventListener("addedToStage",o343);
      }
      
      override public function o13640() : void
      {
         o5918 = null;
         o17141 = 0;
         o141 = null;
         super.o13640();
      }
      
      private function o3736(param1:MouseEvent) : void
      {
      }
      
      private function o9554(param1:MouseEvent) : void
      {
      }
      
      public function get o7215() : String
      {
         return o5918;
      }
      
      public function set o9421(param1:String) : void
      {
         o5918 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc4_:TextField = this.asset.getChildByName("lblHotKey") as TextField;
         if(_loc4_ != null)
         {
            o1256(_loc4_,o5918);
            _loc4_.mouseEnabled = false;
         }
         var _loc3_:TextField = this.asset.getChildByName("lblQty") as TextField;
         if(_loc3_ != null)
         {
            o1256(_loc3_,o16724.o10417(o17141));
            _loc3_.mouseEnabled = false;
         }
         var _loc1_:TextField = this.asset.getChildByName("lblBuy") as TextField;
         if(_loc1_ != null)
         {
            o1256(_loc1_,o141);
            _loc1_.mouseEnabled = false;
         }
         var _loc2_:TextField = this.asset.getChildByName("lblQtyExtra") as TextField;
         if(_loc2_ != null)
         {
            _loc2_.visible = o20341 != 0;
            if(_loc2_.visible)
            {
               o1256(_loc2_,"+" + o20341);
            }
            _loc2_.mouseEnabled = false;
         }
      }
      
      public function o7658(param1:String, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = o17141 != param2;
         o17141 = param2;
         if(o141 == null)
         {
            _loc5_ = true;
            o5918 = param1;
            o141 = "Buy $" + o16724.o10417(param3) + "x" + param4;
         }
         if(_loc5_)
         {
            this.o1258();
         }
      }
   }
}
