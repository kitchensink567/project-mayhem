package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o16733 extends o12290
   {
       
      
      private var o14897:Number = 1.0;
      
      public var o9533:int;
      
      public var o10798:int;
      
      public var o8757:String;
      
      public var o20396:int;
      
      public var o5185:int;
      
      public var o11566:String;
      
      public var o19350:Boolean = true;
      
      public function o16733()
      {
         o8757 = "?";
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         super.init(param1);
      }
      
      override public function o13640() : void
      {
         o14897 = 0;
         o9533 = 0;
         o10798 = 0;
         o8757 = null;
         o20396 = 0;
         o5185 = 0;
         o11566 = null;
         super.o13640();
      }
      
      public function get o4473() : Number
      {
         return o14897;
      }
      
      public function set o4473(param1:Number) : void
      {
         o14897 = param1;
         this.o1258();
      }
      
      public function get o12121() : Boolean
      {
         return o19350;
      }
      
      public function set o12121(param1:Boolean) : void
      {
         var _loc2_:* = param1 != o19350;
         o19350 = param1;
         if(_loc2_)
         {
            if(o5185 >= o20396 && o12121)
            {
               this.o3993 = false;
            }
            this.o1258();
         }
      }
      
      override protected function draw() : void
      {
         var _loc2_:int = 0;
         super.draw();
         var _loc3_:TextField = this.asset.getChildByName("lblSkillName") as TextField;
         if(_loc3_ != null && o11566 != null)
         {
            o1256(_loc3_,o11566);
         }
         var _loc4_:MovieClip = this.asset.getChildByName("cooldown") as MovieClip;
         if(_loc4_ != null)
         {
            _loc2_ = o14897 * 99 + 1;
            if(_loc2_ > 99)
            {
               _loc2_ = 99;
            }
            o13010(_loc4_,_loc2_);
         }
         var _loc6_:MovieClip = this.asset.getChildByName("icon") as MovieClip;
         if(_loc6_ != null)
         {
            o13010(_loc6_,o10798);
         }
         var _loc1_:TextField = this.asset.getChildByName("lblHotkey") as TextField;
         if(_loc1_ != null)
         {
            o1256(_loc1_,o8757);
         }
         var _loc5_:MovieClip = this.asset.getChildByName("notEnoughEnergyIcon") as MovieClip;
         if(_loc5_ != null && _loc5_.visible == o19350)
         {
            _loc5_.visible = o19350 == false;
         }
      }
   }
}
