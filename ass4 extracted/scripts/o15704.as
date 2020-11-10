package
{
   import flash.display.MovieClip;
   
   public class o15704
   {
       
      
      private var container:MovieClip;
      
      public var o10696:Vector.<MovieClip>;
      
      public var o11818:Vector.<Boolean>;
      
      public function o15704(param1:MovieClip, param2:Vector.<MovieClip>)
      {
         o10696 = new Vector.<MovieClip>();
         o11818 = new Vector.<Boolean>();
         super();
         this.container = param1;
         this.o10696 = param2;
         var _loc5_:int = 0;
         var _loc4_:* = param2;
         for each(var _loc3_ in param2)
         {
            _loc3_.visible = false;
            _loc3_.enabled = false;
            _loc3_.gotoAndStop(1);
            o11818.push(false);
         }
      }
      
      public function o11893() : MovieClip
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         var _loc1_:* = null;
         _loc2_ = 0;
         while(_loc2_ < o10696.length)
         {
            _loc3_ = o11818[_loc2_];
            if(_loc3_ == false)
            {
               o11818[_loc2_] = true;
               _loc1_ = o10696[_loc2_];
               _loc1_.visible = true;
               _loc1_.enabled = true;
               container.addChild(_loc1_);
               return _loc1_;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function o15828(param1:MovieClip) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         param1.gotoAndStop(1);
         param1.visible = false;
         _loc3_ = 0;
         while(_loc3_ < o10696.length)
         {
            _loc2_ = o10696[_loc3_];
            if(_loc2_ == param1)
            {
               o11818[_loc3_] = false;
               _loc2_.visible = false;
               _loc2_.enabled = true;
               _loc2_.gotoAndStop(1);
               o16681.o1209(_loc2_);
               _loc2_.parent.removeChild(_loc2_);
               return;
            }
            _loc3_++;
         }
      }
      
      public function o13640() : void
      {
         container = null;
         o10696 = null;
         o11818 = null;
      }
   }
}
