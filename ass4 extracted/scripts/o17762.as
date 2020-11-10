package
{
   import flash.display.DisplayObject;
   
   public class o17762 extends o3358
   {
       
      
      private var o10555:o5640 = null;
      
      private var o18706:Boolean = false;
      
      private var target:o7848 = null;
      
      private var o11675:Vector.<uint>;
      
      private var o19505:o17762 = null;
      
      private var o19827:o17517 = null;
      
      private var o1337:o972 = null;
      
      private var o20819:int = -1;
      
      private var o11329:Number = 100;
      
      public function o17762(param1:DisplayObject, param2:o1885)
      {
         o11675 = new Vector.<uint>();
         super(param1,param2);
         o19827 = o4519.o32;
         o19505 = this;
         o1051.o9310(this,0.1,init);
      }
      
      private function init() : void
      {
         o575();
         o1051.o4767(this,0.5,o20024);
         o1051.o4767(this,0.0333333333333333,o7664);
      }
      
      public function o3151(param1:o5640) : void
      {
         this.o10555 = param1;
      }
      
      private function o20024() : void
      {
         o4519.o8116.o2996.o2368([o18442,o5640],o10555.body.position.x,o10555.body.position.y,o4519.o8116.o4550(8),o8723.o17798).defer(o16853);
      }
      
      private function o16853(param1:Array) : void
      {
         target = null;
         if(param1.length > 0)
         {
            target = param1[0];
         }
      }
      
      private function o575() : void
      {
         o599();
         o1051.o9310(o19505,0.5 + Math.random(),o575);
      }
      
      private function o599() : void
      {
         var _loc1_:o18509 = new o18509(o19827.x,o19827.y);
         _loc1_.x = _loc1_.x + (Math.random() * 2 * o11329 - o11329);
         _loc1_.y = _loc1_.y + (Math.random() * 2 * o11329 - o11329);
         o4519.o8116.o2996.o4816(o10555.body.position.x,o10555.body.position.y,_loc1_.x,_loc1_.y,o8723.o32,1 | o11386.o6365).defer(o7655);
      }
      
      private function o7655(param1:*) : void
      {
         var _loc5_:* = 0;
         var _loc4_:* = null;
         var _loc3_:o18509 = new o18509(param1.x,param1.y);
         if(param1.entity == 1)
         {
            _loc3_.x = param1.endX;
            _loc3_.y = param1.endY;
         }
         var _loc2_:o2041 = o4519.o9721.o20318.o1924(o19827);
         if(_loc2_ == null)
         {
            o5363(null);
         }
         else
         {
            _loc5_ = o8723.o3969 | o8723.o18180;
            _loc4_ = o4519.o9721.o10946.o6048(_loc2_,o8723.o32,o10555.body.id,o10555.body.position.x,o10555.body.position.y,0,_loc3_.x,_loc3_.y,_loc5_,_loc5_,Vector.<int>([]),Vector.<int>([]));
            _loc4_.defer(o5363);
         }
      }
      
      private function o5363(param1:o972) : void
      {
         this.o1337 = param1;
      }
      
      private function o7664() : void
      {
         if(o1337 != null && o1337.o16255.length > 0)
         {
            o10720.x = o1337.o16255[0].x - o10555.body.position.x;
            o10720.y = o1337.o16255[0].y - o10555.body.position.y;
            if(o10720.o3215 < 10)
            {
               o1337.o16255.shift();
               o10720.x = 0;
               o10720.y = 0;
            }
            else
            {
               o10720.o14528();
            }
         }
         else
         {
            o10720.x = 0;
            o10720.y = 0;
         }
         dispatchData(new o282(o10720));
         if(target != null && target.o8289())
         {
            target = null;
         }
         if(target != null)
         {
            o2179.x = target.body.position.x - o10555.body.position.x;
            o2179.y = target.body.position.y - o10555.body.position.y;
            dispatchData(new o7208(o2179));
            if(!o18706)
            {
               o15777(o2511.o7816);
               o18706 = true;
               if(o10555.o2752.o4670.o16859 == 2)
               {
                  o20819 = o1051.o4767(o10555,0.0333333333333333,function():void
                  {
                     o15777(o2511.o6315);
                     o15777(o2511.o7816);
                  });
               }
            }
         }
         else
         {
            if((o10720.x != 0 || o10720.y != 0) && (o2179.x != 0 || o2179.y != 0))
            {
               var o11709:Number = o2179.o19203(o10720);
               o2179.rotate(o11709 / 4);
            }
            if(o18706)
            {
               o15777(o2511.o6315);
               o18706 = false;
               if(o20819 != -1)
               {
                  o1051.o19115(o20819);
                  o20819 = -1;
               }
            }
         }
      }
      
      public function o2794() : void
      {
         o11329 = 0;
         o599();
      }
      
      public function o7561() : void
      {
         o11329 = 100;
         o599();
      }
      
      public function o12564() : void
      {
         this.o10555.body.o15838(0);
      }
      
      public function o4011() : void
      {
         this.o10555.body.o15838(o8723.o10217 ^ o8723.o32);
      }
   }
}
