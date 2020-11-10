package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class o6718 extends o9743
   {
      
      public static const o2864:int = 0;
      
      public static const o6229:int = 1;
      
      public static const o13452:int = 2;
       
      
      private var o11187:Number = -1;
      
      private var o4036:Vector.<MovieClip>;
      
      private var o7378:MovieClip;
      
      private var o11230:Timer;
      
      public function o6718()
      {
         super();
      }
      
      override public function o13640() : void
      {
         o4036 = null;
         o7378 = null;
         if(o11230 != null)
         {
            o11230.stop();
            o11230.removeEventListener("timerComplete",o13600);
            o11230 = null;
         }
         super.o13640();
      }
      
      private function o12070(param1:String) : void
      {
         var _loc2_:MovieClip = asset.getChildByName(param1) as MovieClip;
         o14400(_loc2_);
         o4036.push(_loc2_);
         _loc2_.gotoAndStop(1);
         _loc2_.visible = false;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         o4036 = new Vector.<MovieClip>();
         o12070("gradeAplus");
         o12070("gradeA");
         o12070("gradeAminus");
         o12070("gradeBplus");
         o12070("gradeB");
         o12070("gradeBminus");
         o12070("gradeCplus");
         o12070("gradeC");
         o12070("gradeCminus");
      }
      
      private function o14400(param1:MovieClip) : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:int = param1.numChildren;
         param1.mouseChildren = false;
         param1.mouseEnabled = false;
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            _loc6_ = param1.getChildAt(_loc5_);
            if(_loc6_ is MovieClip)
            {
               _loc4_ = _loc6_ as MovieClip;
               o14400(_loc4_);
            }
            else if(_loc6_ is TextField)
            {
               _loc3_ = _loc6_ as TextField;
               _loc3_.mouseEnabled = false;
            }
            _loc5_++;
         }
      }
      
      public function o9998(param1:int, param2:String, param3:String, param4:Number = 3) : void
      {
         this.o12407("","");
         o11187 = param4;
         if(o11230 != null)
         {
            o11230.stop();
            o11230.removeEventListener("timerComplete",o13600);
            o11230 = null;
         }
         o11230 = new Timer(o11187 * 1000);
         o11230.addEventListener("timer",o13600,false,0,true);
         o11230.start();
         var _loc6_:MovieClip = o4036[param1];
         o7378 = _loc6_;
         _loc6_.visible = true;
         _loc6_.gotoAndPlay(1);
         var _loc5_:MovieClip = asset.getChildByName("panel") as MovieClip;
         var _loc7_:TextField = _loc5_.getChildByName("lblHeading") as TextField;
         var _loc8_:TextField = _loc5_.getChildByName("lblDetails") as TextField;
         _loc7_.text = param2;
         _loc8_.text = param3;
         asset.x = 238.2;
         asset.y = 99.75;
      }
      
      override protected function o6662(param1:Event) : void
      {
         if(asset == null || asset.stage == null || o7378 == null)
         {
            return;
         }
         super.o6662(param1);
         o11692(o7378);
      }
      
      private function o13600(param1:Event) : void
      {
         if(o11230 != null)
         {
            o11230.stop();
            o11230.removeEventListener("timerComplete",o13600);
            o11230 = null;
         }
         this.close();
      }
   }
}
