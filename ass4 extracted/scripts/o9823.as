package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class o9823 extends o15625
   {
       
      
      private var o20069:o5024;
      
      public var o20971:TextField;
      
      public var o11707:String;
      
      public var o19163:MovieClip;
      
      public function o9823()
      {
         super();
      }
      
      public function get o8923() : o5024
      {
         return o20069;
      }
      
      public function set o8923(param1:o5024) : void
      {
         o20069 = param1;
         o20069.o7359 = false;
         o20069.o3687 = 0.84;
         o20069.o19243 = new Point(-4,0);
         o20069.addEventListener(o5024.o4281,o2634,false,0,true);
      }
      
      private function o2634(param1:Event) : void
      {
         this.o1258();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         param1.gotoAndStop(1);
      }
      
      override public function o13640() : void
      {
         o20069.removeEventListener(o5024.o4281,o2634);
         o20069 = null;
         o20971 = null;
         o11707 = null;
         o19163 = null;
         super.o13640();
      }
      
      override protected function draw() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.draw();
         try
         {
            o19163 = asset.getChildByName("unequippedImage") as MovieClip;
            if(o8923 != null && enabled)
            {
               _loc1_ = o8923.asset == null?0:o8923.asset.numChildren;
               if(_loc1_ > 0 && o8923.o3700 != null)
               {
                  _loc2_ = o8923.asset.getChildAt(0) as MovieClip;
                  _loc1_ = _loc2_.numChildren;
                  o19163.visible = _loc1_ == 0;
               }
               else
               {
                  o19163.visible = false;
               }
               _loc3_ = o8923.asset.transform.colorTransform;
               o20971.visible = true;
            }
            return;
         }
         catch(o7367:Error)
         {
            throw new Error("EquipSlotButton error: " + o7367);
         }
      }
      
      override public function o1258() : void
      {
         super.o1258();
         if(o8923 != null)
         {
            o8923.o1258();
         }
      }
   }
}
