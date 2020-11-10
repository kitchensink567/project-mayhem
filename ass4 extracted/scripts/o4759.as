package
{
   import flash.display.MovieClip;
   
   public class o4759
   {
       
      
      private var o15344:MovieClip;
      
      private const o10504:int = 0;
      
      private const o3694:int = 1;
      
      private const o3378:int = 2;
      
      private const o11403:int = 3;
      
      private var o19801:int = 0;
      
      private var o17817:Number = 0.25;
      
      private var o4556:Number = 0.01;
      
      private var o17610:Number = 0;
      
      private var o18543:Number = 0;
      
      public function o4759(param1:MovieClip)
      {
         super();
         o15344 = param1;
         o15344.visible = false;
         o15344.alpha = 0;
         o15344.mouseChildren = false;
         o15344.mouseEnabled = false;
         o15344.enabled = false;
         var _loc4_:int = 0;
         var _loc3_:* = o15344;
         for each(var _loc2_ in o15344)
         {
            _loc2_.mouseChildren = false;
            _loc2_.mouseEnabled = false;
            _loc2_.enabled = false;
         }
      }
      
      public function o4526() : void
      {
         if(o15344.visible == false)
         {
            o15344.visible = true;
            o15344.alpha = 0;
         }
         o19801 = 1;
      }
      
      public function o7658(param1:Number) : void
      {
         if(o15344.visible)
         {
            if(o19801 == 1)
            {
               o17610 = o17610 + param1;
               if(o17610 > o17817)
               {
                  o17610 = o17817;
                  o18543 = 0;
                  o19801 = 2;
                  o15344.alpha = 1;
               }
               else
               {
                  o15344.alpha = o17610 / o17817;
               }
            }
            else if(o19801 == 2)
            {
               o18543 = o18543 + param1;
               if(o18543 > o4556)
               {
                  o18543 = 0;
                  o19801 = 3;
               }
            }
            else if(o19801 == 3)
            {
               o17610 = o17610 - param1;
               if(o17610 < 0)
               {
                  o17610 = 0;
                  o15344.visible = false;
                  o15344.alpha = 0;
               }
               else
               {
                  o15344.alpha = o17610 / o17817;
               }
            }
         }
      }
      
      public function o13640() : void
      {
         o15344 = null;
         o19801 = 0;
         o17817 = 0;
         o4556 = 0;
         o17610 = 0;
         o18543 = 0;
      }
   }
}
