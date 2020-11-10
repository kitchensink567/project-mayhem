package
{
   import assets.ui.LoadingAsset;
   import flash.display.MovieClip;
   
   public class o20006 extends MovieClip
   {
       
      
      private var o85:int;
      
      private var o12565:o16681;
      
      private var o3985:MovieClip;
      
      private var o1780:int;
      
      private var o9221:int;
      
      private var o17262:Boolean = false;
      
      private var o8289:Boolean = false;
      
      private var o8495:int = 0;
      
      public function o20006(param1:int, param2:o16681, param3:int, param4:int)
      {
         super();
         o3985 = new LoadingAsset();
         var _loc7_:Number = o3985.width / 2;
         var _loc6_:Number = o3985.height / 2;
         o3985.scaleX = 1;
         o3985.scaleY = 1;
         o3985.x = _loc7_;
         o3985.y = _loc6_;
         this.addChild(o3985);
         if(o3985 == null || o3985.parent != this)
         {
            throw new Error("BaseControlIconProxy add error");
         }
         this.o85 = param1;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.o6088 = param2;
         var _loc5_:String = o4519.o8116.o5830.o9009(param1);
         if(_loc5_ != null)
         {
            o4519.o8116.o1234.o11690(_loc5_).defer(o2622);
         }
      }
      
      public function get o6088() : o16681
      {
         return o12565;
      }
      
      public function set o6088(param1:o16681) : void
      {
         o12565 = param1;
      }
      
      public function o19115() : void
      {
         o8289 = true;
         o85 = 0;
         o12565 = null;
         o3985 = null;
         o1780 = 0;
         o9221 = 0;
      }
      
      private function o2622(param1:Class) : void
      {
         if(o8289)
         {
            return;
         }
         if(o8495 != 0)
         {
            throw new Error("assetLoadedCount > 0");
         }
         o8495 = Number(o8495) + 1;
         o17262 = true;
         var _loc2_:MovieClip = new param1() as MovieClip;
         _loc2_.mouseEnabled = false;
         _loc2_.mouseChildren = false;
         this.addChild(new param1() as MovieClip);
         if(o3985 != null && o3985.parent == this)
         {
            o16681.o1209(o3985);
            this.removeChild(o3985);
            if(o12565 != null)
            {
               if(o6088.asset != null)
               {
                  o12565.o1258();
               }
            }
            o12565 = null;
            o3985 = null;
            return;
         }
         if(o8289)
         {
            throw new Error("not attached (isDestroyed)?");
         }
         if(o3985 == null)
         {
            throw new Error("not attached (null)?");
         }
         throw new Error("not attached (parent)?");
      }
   }
}
