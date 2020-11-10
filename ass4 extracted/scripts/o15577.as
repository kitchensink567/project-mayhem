package
{
   import flash.filters.GlowFilter;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class o15577
   {
       
      
      public var o4638:TextField;
      
      private var o7199:Number = 0;
      
      private var o15527:Number = 0;
      
      private var o16846:Number = 0;
      
      private var o8630:Number = 0;
      
      public var o6899:Boolean = false;
      
      public function o15577(param1:String, param2:Number, param3:TextFormat, param4:Number, param5:Number, param6:Boolean, param7:Boolean = false)
      {
         super();
         this.o6899 = param6;
         o4638 = new TextField();
         o4638.defaultTextFormat = param3;
         o4638.height = 5;
         o4638.width = param2;
         o4638.multiline = true;
         o4638.autoSize = "left";
         o4638.wordWrap = true;
         o4638.selectable = false;
         o4638.htmlText = param1;
         o4638.mouseEnabled = false;
         var _loc8_:GlowFilter = new GlowFilter(0,1,5,5,5,2);
         o4638.filters = [_loc8_];
         this.o15527 = param4;
         this.o8630 = param5;
         if(param7)
         {
            o7199 = param4;
            o16846 = param5;
            o4638.visible = false;
         }
      }
      
      public function o7664(param1:Number) : void
      {
         if(o7199 < o15527)
         {
            o7199 = o7199 + param1;
         }
         else if(o16846 < o8630)
         {
            o16846 = o16846 + param1;
            o4638.alpha = 1 - o16846 / o8630;
         }
         else
         {
            o4638.visible = false;
         }
         if(o6899)
         {
            o4638.visible = true;
            o4638.alpha = 1;
         }
      }
   }
}
