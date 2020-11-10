package
{
   public class o8499
   {
       
      
      private var o16304:o16123;
      
      public var o14925:String;
      
      public var o20418:String;
      
      public var o8398:String;
      
      public var o12087:String;
      
      public function o8499()
      {
         o16304 = new o16123(0);
         super();
      }
      
      public function get type() : int
      {
         return o16304.value;
      }
      
      public function init(param1:o2693, param2:String) : void
      {
         param2 = param2 + ".";
         o16304.value = param1.o3554(param2 + "id");
         o14925 = param1.o9009(param2 + "title");
         o20418 = param1.o9009(param2 + "mullipleItemsTitle");
         o8398 = param1.o9009(param2 + "details");
         o12087 = param1.o9009(param2 + "iconFrameLabel");
      }
      
      public function o9868(param1:int) : String
      {
         if(param1 == 1)
         {
            return o14925;
         }
         return o20418.replace("[QTY]",param1.toString());
      }
   }
}
