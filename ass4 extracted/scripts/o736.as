package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o736 extends o8535
   {
       
      
      public var o19948:int;
      
      public var grade:int = 1;
      
      public var o4990:int = 1;
      
      public var o14075:int = 3;
      
      public var o11262:int = 3;
      
      public var o2397:Boolean = false;
      
      public var o2138:Boolean = false;
      
      public var o263:int = 0;
      
      public function o736()
      {
         super();
         o14075 = 3;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
         param1.gotoAndStop(1);
         this.o5175();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc1_:MovieClip = this.asset.getChildByName("lblNew") as MovieClip;
         if(_loc1_ != null)
         {
            _loc1_.visible = o2397;
         }
         var _loc2_:MovieClip = this.asset.getChildByName("grade") as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.gotoAndStop(grade + 1);
         }
         var _loc5_:TextField = this.asset.getChildByName("lblGrade") as TextField;
         if(_loc5_ != null)
         {
            _loc5_.text = grade.toString();
         }
         var _loc3_:o20565 = new o20565(this);
         _loc3_.o5877("aug",o4990,o11262,"on","off",o14075);
         if(o3700 != null)
         {
            o3700.visible = this.enabled;
         }
         var _loc4_:MovieClip = this.asset.getChildByName("eliteCore") as MovieClip;
         if(_loc4_ != null)
         {
            _loc4_.visible = this.o263 > 0;
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
         o19948 = 0;
         grade = 0;
         o4990 = 0;
         o14075 = 0;
         o11262 = 0;
         o2397 = false;
         super.o13640();
      }
   }
}
