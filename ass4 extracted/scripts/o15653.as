package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o15653 extends o8535
   {
       
      
      public var o12715:int;
      
      public var grade:int = 1;
      
      public var o4990:int = 1;
      
      private var o4302:int = 3;
      
      public var o14333:String;
      
      public var o263:int = 0;
      
      public var o2397:Boolean;
      
      public function o15653()
      {
         o14333 = "";
         super();
      }
      
      public function get o14075() : int
      {
         return o4302;
      }
      
      public function set o14075(param1:int) : void
      {
         o4302 = param1;
      }
      
      override protected function draw() : void
      {
         var _loc3_:* = null;
         var _loc1_:* = null;
         super.draw();
         var _loc7_:TextField = this.asset.getChildByName("lblGrade") as TextField;
         if(_loc7_ != null)
         {
            _loc7_.text = grade.toString();
         }
         var _loc4_:MovieClip = this.asset.getChildByName("grade") as MovieClip;
         if(_loc4_ != null)
         {
            if(grade == -1)
            {
               _loc4_.visible = false;
               o20355.o11365(o3700 as MovieClip,2953746,0.9);
            }
            else
            {
               _loc4_.visible = true;
               _loc4_.gotoAndStop(grade + 1);
            }
         }
         if(o14333 != null)
         {
            _loc3_ = asset.getChildByName("lblCollectionInfo") as TextField;
            if(_loc3_ == null)
            {
               _loc1_ = asset.getChildByName("lblCollectionInfo") as MovieClip;
               if(_loc1_ != null)
               {
                  _loc3_ = _loc1_.getChildByName("lblCollectionInfo") as TextField;
               }
            }
            if(_loc3_ != null)
            {
               _loc3_.text = o14333;
               if(_loc1_ != null)
               {
                  _loc1_.visible = o14333.length > 0;
               }
            }
         }
         var _loc6_:MovieClip = this.asset.getChildByName("eliteCore") as MovieClip;
         if(_loc6_ != null)
         {
            _loc6_.visible = this.o263 > 0;
         }
         var _loc5_:o20565 = new o20565(this);
         _loc5_.o5877("aug",o4990,o14075,"on","off",4);
         var _loc2_:MovieClip = asset.getChildByName("lblNew") as MovieClip;
         _loc2_.visible = o2397;
      }
      
      override public function o13640() : void
      {
         o12715 = 0;
         grade = 0;
         o4990 = 0;
         o4302 = 0;
         o2397 = false;
         super.o13640();
      }
   }
}
