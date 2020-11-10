package
{
   public class o18342 extends o2415
   {
      
      private static const delta:Number = 0.03333333333333333;
       
      
      private var o2913:o18509;
      
      private var o16470:Number = 0;
      
      private var o13475:o4332;
      
      private var o2182:o4332;
      
      public function o18342(param1:o4332, param2:o4332, param3:Number, param4:Number, param5:Boolean = true)
      {
         o2913 = new o18509();
         super();
         type = 1;
         o13475 = param1;
         o2182 = param2;
         o2913.x = param3;
         o2913.y = param4;
         o16470 = o2913.rotation;
         if(!param5)
         {
            o1051.o4767(param1,0.0333333333333333,o7664,0,true);
         }
      }
      
      public function o7664() : void
      {
         o2913.rotation = o16470 + o2182.rotation;
         x = o2182.position.x + o2913.x;
         y = o2182.position.y + o2913.y;
         o13475.rotation = o2182.rotation;
      }
      
      override public function o3246() : void
      {
         o2913.rotation = o16470 + o2182.rotation;
         x = o2182.position.x + o2913.x;
         y = o2182.position.y + o2913.y;
         o13475.rotation = o2182.rotation;
      }
      
      public function o10515(param1:Number, param2:Number) : void
      {
         o2913.x = param1;
         o2913.y = param2;
         o16470 = o2913.rotation;
      }
   }
}
