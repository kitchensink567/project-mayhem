package
{
   import flash.display.MovieClip;
   
   public class o16327 extends o8535
   {
       
      
      private var o7447:Boolean = false;
      
      private var o11849:int = 1;
      
      private var o19402:o14096 = null;
      
      private var o20278:Boolean = false;
      
      private var o17010:int = 0;
      
      private var o5184:int;
      
      public var o263:int = 0;
      
      public function o16327()
      {
         super();
      }
      
      public function get o3() : int
      {
         return o5184;
      }
      
      public function set o3(param1:int) : void
      {
         o5184 = param1;
      }
      
      public function get o12062() : int
      {
         return o11849;
      }
      
      public function set o12062(param1:int) : void
      {
         o11849 = param1;
      }
      
      public function get o2752() : o14096
      {
         return o19402;
      }
      
      public function set o2752(param1:o14096) : void
      {
         o19402 = param1;
      }
      
      public function get o1419() : Boolean
      {
         return o20278;
      }
      
      public function set o1419(param1:Boolean) : void
      {
         o20278 = param1;
      }
      
      public function get o4752() : int
      {
         return o17010;
      }
      
      public function set o4752(param1:int) : void
      {
         o17010 = param1;
      }
      
      public function get o19146() : Boolean
      {
         return o7447;
      }
      
      public function set o19146(param1:Boolean) : void
      {
         o7447 = param1;
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc3_:MovieClip = this.asset.getChildByName("unselectedWeapon") as MovieClip;
         if(_loc3_ != null)
         {
            _loc3_.visible = o7447;
         }
         var _loc4_:MovieClip = this.asset.getChildByName("iconContainer") as MovieClip;
         if(_loc4_ != null)
         {
            _loc4_.visible = o7447 == false;
         }
         var _loc2_:MovieClip = this.asset.getChildByName("damageTypeIcon") as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.visible = o7447 == false;
            o13010(_loc2_,o5184);
         }
         var _loc5_:MovieClip = this.asset.getChildByName("eliteCore") as MovieClip;
         if(_loc5_ != null)
         {
            _loc5_.visible = this.o263 > 0;
         }
         var _loc1_:MovieClip = this.asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc1_)
         {
            if(o19402)
            {
               _loc1_.gotoAndStop(o7251.o20313(o2752));
               _loc1_.visible = true;
            }
            else
            {
               _loc1_.visible = false;
            }
         }
      }
      
      override public function o13640() : void
      {
         o7447 = false;
         o5184 = 0;
         o19402 = null;
         super.o13640();
      }
   }
}
