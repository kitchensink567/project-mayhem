package
{
   import flash.utils.Dictionary;
   
   public class o4997 extends o8023
   {
      
      private static const o7601:Number = 0.03333333333333333;
      
      private static const o4770:Number = 0.1;
       
      
      private var o16191:int = 0;
      
      private var o19828:Dictionary;
      
      private var o6824:Number = 0;
      
      private var o9430:Number = 0;
      
      private var o6803:Number = 0;
      
      private var o11321:Number = 0;
      
      private var o19292:Number = 0;
      
      public function o4997()
      {
         o19828 = new Dictionary();
         super();
         var _loc1_:* = this;
      }
      
      public function init() : void
      {
         o1051.o4767(this,0.0333333333333333,o7658);
      }
      
      private function o12876() : void
      {
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         o16191 = Number(o16191) + 1;
         var _loc6_:Vector.<o1452> = Vector.<o1452>(o4519.o8116.o2996.o20698(o1452));
         var _loc8_:int = 0;
         var _loc7_:* = _loc6_;
         for each(var _loc1_ in _loc6_)
         {
            if(o16191 % _loc1_.o13005() == 0)
            {
               if(_loc1_.o17441() == false)
               {
                  o19828[_loc1_] = null;
               }
               else
               {
                  _loc2_ = o7848(_loc1_);
                  if(o19828[_loc1_] == null)
                  {
                     _loc4_ = o4519.o9721.o20360.o2566(_loc2_.body.id,_loc2_.body.position.x,_loc2_.body.position.y,o8723.o2823,o8723.o3969 | o8723.o18180);
                     _loc4_.o11333 = _loc2_;
                     _loc4_.defer(o17249);
                     _loc2_.o16280(this,o14571.o19115,o4037);
                  }
                  else
                  {
                     _loc3_ = o19828[_loc2_];
                     _loc5_ = o4519.o9721.o20360.o4259(_loc2_.body.position.x,_loc2_.body.position.y,_loc2_.body.id,_loc3_.x,_loc3_.y,o8723.o2823,o8723.o3969 | o8723.o18180);
                     _loc5_.o11333 = _loc2_;
                     _loc5_.defer(o18035);
                  }
               }
            }
         }
      }
      
      private function o18035(param1:Boolean, param2:o7848) : void
      {
         var _loc3_:* = null;
         if(param1 == false)
         {
            _loc3_ = o4519.o9721.o20360.o2566(param2.body.id,param2.body.position.x,param2.body.position.y,o8723.o2823,o8723.o3969 | o8723.o18180);
            _loc3_.o11333 = param2;
            _loc3_.defer(o17249);
         }
      }
      
      private function o17249(param1:o2041, param2:o7848) : void
      {
         o19828[param2] = param1;
      }
      
      private function o4037(param1:o7734) : void
      {
         o19828[param1.o11493] = null;
      }
      
      private function o7658() : void
      {
         o6824 = o6824 + 0.0333333333333333;
         if(o6824 >= 0.1)
         {
            o12876();
            o6824 = 0.1;
         }
      }
      
      public function o7925(param1:o18442) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1.o535)
         {
            return;
         }
         if(param1.o15849)
         {
            _loc2_ = o19828[param1.target];
            if(_loc2_ == null)
            {
               return;
            }
            param1.o535 = true;
            _loc3_ = o4519.o9721.o20360.o6048(_loc2_,o8723.o2823,param1.body.id,param1.body.position.x,param1.body.position.y,param1.target.body.id,param1.target.body.position.x,param1.target.body.position.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180,Vector.<int>([]),Vector.<int>([]));
            _loc3_.o11333 = param1;
            _loc3_.defer(o12457);
         }
         else
         {
            _loc3_ = o4519.o9721.o20360.o2566(0,param1.o13302.x,param1.o13302.y,o8723.o2823,o8723.o3969 | o8723.o18180);
            _loc3_.o11333 = param1;
            _loc3_.defer(o13859);
         }
      }
      
      private function o13859(param1:o2041, param2:o18442) : void
      {
         param2.o535 = true;
         var _loc3_:o14506 = o4519.o9721.o20360.o6048(param1,o8723.o2823,param2.body.id,param2.body.position.x,param2.body.position.y,0,param2.o13302.x,param2.o13302.y,o8723.o3969 | o8723.o18180,o8723.o3969 | o8723.o18180,Vector.<int>([]),Vector.<int>([]));
         _loc3_.o11333 = param2;
         _loc3_.defer(o12457);
      }
      
      private function o12457(param1:o972, param2:o18442) : void
      {
         param2.o535 = false;
         param2.o1337 = param1;
      }
      
      public function o1924(param1:o7848) : o2041
      {
         return o19828[param1];
      }
   }
}
