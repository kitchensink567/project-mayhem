package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o20912 extends o15625
   {
       
      
      private var o1714:String;
      
      private var o1151:int = 0;
      
      private var o9480:int = 1;
      
      private var o10073:Boolean = false;
      
      private var o3325:Boolean = true;
      
      public var o16058:Function;
      
      public var o9429:Function;
      
      private var o14019:Boolean = false;
      
      public function o20912()
      {
         o1714 = "";
         super();
      }
      
      override public function set o12514(param1:Boolean) : void
      {
         .super.o12514 = param1;
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      public function get o14925() : String
      {
         return o1714;
      }
      
      public function set o14925(param1:String) : void
      {
         o1714 = param1;
         this.o1258();
      }
      
      public function get o8061() : int
      {
         return o1151;
      }
      
      public function set o8061(param1:int) : void
      {
         o1151 = param1;
         this.o1258();
      }
      
      public function get o10798() : int
      {
         return o9480;
      }
      
      public function set o10798(param1:int) : void
      {
         o9480 = param1;
         this.o1258();
      }
      
      public function get o5882() : Boolean
      {
         return o14019;
      }
      
      public function set o5882(param1:Boolean) : void
      {
         o14019 = param1;
         this.o1258();
      }
      
      public function get o13228() : Boolean
      {
         return o10073;
      }
      
      public function set o13228(param1:Boolean) : void
      {
         o10073 = param1;
         this.o1258();
      }
      
      override protected function draw() : void
      {
         super.draw();
         var _loc7_:TextField = this.asset.getChildByName("skillTitle") as TextField;
         if(_loc7_ != null)
         {
            o1256(_loc7_,o1714);
         }
         var _loc1_:TextField = this.asset.getChildByName("skillPoints") as TextField;
         if(_loc1_ != null)
         {
            o1256(_loc1_,o1151.toString());
            _loc1_.visible = o1151 > 0;
         }
         var _loc2_:MovieClip = this.asset.getChildByName("skillPointIcon") as MovieClip;
         if(_loc2_ != null)
         {
            _loc2_.visible = o1151 > 0;
         }
         var _loc4_:MovieClip = this.asset.getChildByName("icon") as MovieClip;
         if(_loc4_ != null)
         {
            if(o3325)
            {
               _loc4_.gotoAndStop(o9480);
            }
            else
            {
               o13010(_loc4_,o9480);
            }
         }
         var _loc6_:MovieClip = this.asset.getChildByName("activatedAbility") as MovieClip;
         if(_loc6_)
         {
            _loc6_.visible = o5882;
         }
         var _loc5_:MovieClip = this.asset.getChildByName("noSkillAdded") as MovieClip;
         if(_loc5_)
         {
            _loc5_.visible = o1151 <= 0;
         }
         var _loc3_:MovieClip = this.asset.getChildByName("lockedIcon") as MovieClip;
         if(_loc3_)
         {
            _loc3_.visible = o13228;
         }
      }
      
      override public function o9173(param1:String) : void
      {
         super.o9173(param1);
         if(param1 == "over" && o16058 != null)
         {
            o16058(this);
         }
         else if(param1 == "up" && o9429 != null)
         {
            o9429(this);
         }
      }
      
      override public function o13640() : void
      {
         o1714 = null;
         o1151 = 0;
         o9480 = 0;
         o10073 = false;
         o3325 = false;
         o16058 = null;
         o9429 = null;
         super.o13640();
      }
   }
}
