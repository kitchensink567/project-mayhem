package
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.text.TextField;
   
   public class o18903 extends o9743
   {
       
      
      private var o17419:Vector.<o4215>;
      
      private var o20029:o15625;
      
      private var o1934:o15625;
      
      private var o1030:TextField;
      
      private var o7871:TextField;
      
      private var o10198:TextField;
      
      private var o12931:MovieClip;
      
      private var o2120:int = 0;
      
      private var loader:Loader;
      
      public function o18903()
      {
         super();
      }
      
      private function o11271(param1:String) : void
      {
         if(loader != null)
         {
            loader.contentLoaderInfo.removeEventListener("complete",o16706);
         }
         var _loc3_:String = o4519.o8116.o7484 + "/img/" + param1;
         o12931.removeChildren(0,o12931.numChildren - 1);
         var _loc2_:URLRequest = new URLRequest(_loc3_);
         loader = new Loader();
         loader.load(_loc2_);
         loader.contentLoaderInfo.addEventListener("complete",o16706,false,0,true);
      }
      
      private function o16706(param1:Event) : void
      {
         o12931.addChild(loader);
         loader.contentLoaderInfo.removeEventListener("complete",o16706);
         loader = null;
      }
      
      public function o16384(param1:MovieClip, param2:Vector.<o4215>) : void
      {
         super.init(param1);
         this.o17419 = param2;
         o20029 = o9679.o17578("btnPrev",container);
         o1934 = o9679.o17578("btnNext",container);
         o20029.addEventListener("click",o20561,false,0,true);
         o1934.addEventListener("click",o5552,false,0,true);
         o1030 = container.getChildByName("title") as TextField;
         o7871 = container.getChildByName("date") as TextField;
         o10198 = container.getChildByName("description") as TextField;
         o12931 = container.getChildByName("imagesContainer") as MovieClip;
         if(param2.length <= 1)
         {
            o20029.visible = false;
            o1934.visible = false;
         }
         o12948(0);
      }
      
      private function o20561(param1:Event) : void
      {
         o12948(o2120 + 1);
      }
      
      private function o5552(param1:Event) : void
      {
         o12948(o2120 - 1);
      }
      
      public function o12948(param1:int) : void
      {
         o2120 = param1;
         o20029.enabled = param1 < o17419.length - 1;
         o1934.enabled = param1 > 0;
         var _loc2_:o4215 = o17419[param1];
         o7871.text = _loc2_.date;
         o1030.text = _loc2_.o17977;
         o10198.text = _loc2_.o8398;
         o11271(_loc2_.o7957);
      }
      
      override public function o13640() : void
      {
         o20029.removeEventListener("click",o20561);
         o1934.removeEventListener("click",o5552);
         if(loader != null)
         {
            loader.contentLoaderInfo.removeEventListener("complete",o16706);
         }
         o17419 = null;
         o20029 = null;
         o1934 = null;
         o1030 = null;
         o7871 = null;
         o10198 = null;
         o12931 = null;
         loader = null;
         super.o13640();
      }
   }
}
