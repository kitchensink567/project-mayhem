package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o5910 extends o8535
   {
       
      
      public var o2752:o14096;
      
      public var o6992:Boolean = true;
      
      public function o5910()
      {
         super();
      }
      
      public function get o2138() : Boolean
      {
         return this.o6992;
      }
      
      public function set o2138(param1:Boolean) : void
      {
         this.o6992 = param1;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         this.o5175();
         var _loc2_:MovieClip = param1.getChildByName("lblCollectionInfo") as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.visible = false;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         .super.visible = param1;
      }
      
      override protected function draw() : void
      {
         var _loc4_:* = null;
         super.draw();
         var _loc2_:MovieClip = this.asset.getChildByName("lblNew") as MovieClip;
         if(_loc2_ != null && o2752)
         {
            _loc2_.visible = o2752.o2397;
         }
         var _loc3_:MovieClip = this.asset.getChildByName("grade") as MovieClip;
         if(_loc3_ != null && o2752)
         {
            _loc3_.gotoAndStop(o2752.grade + 1);
         }
         var _loc6_:TextField = this.asset.getChildByName("lblGrade") as TextField;
         if(_loc6_ != null && o2752)
         {
            _loc6_.text = o2752.grade.toString();
         }
         if(o2752)
         {
            _loc4_ = new o20565(this);
            _loc4_.o5877("aug",o2752.o5520,o2752.o4680,"on","off",4);
         }
         var _loc5_:MovieClip = this.asset.getChildByName("eliteCore") as MovieClip;
         if(_loc5_ != null && o2752)
         {
            _loc5_.visible = o2752.o263 > 0;
         }
         var _loc1_:MovieClip = asset.getChildByName("premiumWeaponParticleEffect") as MovieClip;
         if(_loc1_)
         {
            if(o2752)
            {
               _loc1_.gotoAndStop(o7251.o20313(o2752));
               _loc1_.visible = true;
            }
            else
            {
               _loc1_.visible = false;
            }
         }
         if(o3700 != null)
         {
            o3700.visible = this.enabled;
         }
         if(enabled == false)
         {
            if(o2138)
            {
               this.o19614(asset,"disabledBlank");
            }
            else
            {
               this.o19614(asset,"disabled");
            }
         }
      }
      
      override public function o13640() : void
      {
         o2138 = false;
         o2752 = null;
         super.o13640();
      }
   }
}
