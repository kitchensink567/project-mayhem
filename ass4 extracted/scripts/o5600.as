package
{
   public class o5600 extends o18442
   {
       
      
      private var o15080:o16123;
      
      private var o5122:int = -1;
      
      private const o11326:int = 5;
      
      public function o5600()
      {
         o15080 = new o16123(0);
         super();
      }
      
      protected function get o5610() : int
      {
         return o15080.value;
      }
      
      protected function set o5610(param1:int) : void
      {
         o15080.value = param1;
      }
      
      override public function o19011(param1:int, param2:o10262, param3:o4332, param4:o18509, param5:int, param6:int = -1, param7:Boolean = true, param8:int = -1) : void
      {
         var _loc9_:* = NaN;
         super.o19011(param1,param2,param3,param4,param5);
         if(o5610 <= 0)
         {
            o5610 = o14576.o11605;
         }
         if(o4519.o13206.o2685.o4326 == 2)
         {
            _loc9_ = 1.3;
            this.o6691.scaleX = this.o6691.scaleX * _loc9_;
            this.o6691.scaleY = this.o6691.scaleY * _loc9_;
         }
         if(o20104())
         {
            o753 = 0.05;
         }
         o17127 = true;
         o15777(o14213.o8949);
      }
      
      override protected function o16963() : void
      {
         var _loc9_:* = null;
         var _loc8_:int = 0;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc10_:* = null;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc3_:* = undefined;
         if(o20104() && o16277 && o1918 > 0)
         {
            _loc9_ = new o9607();
            _loc8_ = 0;
            while(_loc8_ < o5610)
            {
               _loc2_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
               _loc6_ = o4519.o8116.o2996.o2998(_loc2_,[new o18509(body.position.x,body.position.y),o4052,o20133,1,new o12443(this),true]) as o6743;
               if(_loc6_)
               {
                  _loc6_.body.o6141(Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100,Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100);
               }
               _loc8_++;
            }
            _loc1_ = this;
            _loc8_ = 0;
            while(_loc8_ < 5)
            {
               _loc5_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
               _loc10_ = o4519.o8116.o2996.o2998(_loc5_,[new o18509(body.position.x,body.position.y),o1197.o17861,o20133 / 2,1,new o12443(_loc1_),true]) as o6743;
               if(_loc10_)
               {
                  _loc10_.body.o6141(Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100,Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100);
               }
               _loc8_++;
            }
            if(o13800.o18381)
            {
               if(o13800.o4513())
               {
                  _loc4_ = o13800.o13588(this.o5973,this.type,o4084,o16277);
                  if(_loc4_ > 0)
                  {
                     _loc7_ = Math.ceil(_loc4_ / 10 < 1?1:_loc4_ / 10 > 10?10:_loc4_ / 10);
                     trace("Alloy Packs: " + _loc7_);
                     _loc11_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"];
                     _loc8_ = 0;
                     while(_loc8_ < _loc7_)
                     {
                        _loc3_ = o4519.o8116.o2996.o2998(_loc11_,[new o18509(body.position.x,body.position.y),o19053.o10094,0,0,new o12443(this),true]) as o6743;
                        if(_loc3_)
                        {
                           _loc3_.body.o6141(Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100,Math.random() >= 0.5?Math.random() * 100 * -1:Math.random() * 100);
                        }
                        _loc8_++;
                     }
                  }
               }
            }
         }
         else if(o20104())
         {
            _loc5_ = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
            _loc10_ = o4519.o8116.o2996.o2998(_loc5_,[new o18509(body.position.x,body.position.y),o1197.o17861,o20133,1,new o12443(_loc1_),true]) as o6743;
            super.o16963();
         }
         else
         {
            super.o16963();
         }
      }
      
      protected function o3511() : void
      {
         if(o16277)
         {
            this.o14116(this.o13200() + o14576.o19002);
         }
      }
      
      protected function o20104() : Boolean
      {
         return o4519.o13206.o4326 == 2?true:false;
      }
      
      override public function get o16277() : Boolean
      {
         return grade > 0?true:false;
      }
      
      override public function o13864(param1:Number = 1.0, param2:Number = 1.0, param3:Number = 1.0, param4:Number = 1.0, param5:Number = 0.0, param6:Boolean = false) : void
      {
         super.o13864(param1,param2,param3,param4,param5,param6);
      }
      
      override public function o19115() : void
      {
         super.o19115();
      }
   }
}
