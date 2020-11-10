package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o6583 extends o16681
   {
       
      
      private var o20640:TextField;
      
      private var o7319:TextField;
      
      private var o3039:Vector.<MovieClip>;
      
      public function o6583()
      {
         super();
      }
      
      override public function init(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = null;
         super.init(param1);
         var _loc6_:MovieClip = param1.getChildByName("superEventMedals") as MovieClip;
         o20640 = _loc6_.getChildByName("lblEventMedals") as TextField;
         o7319 = _loc6_.getChildByName("lblTotalMedals") as TextField;
         var _loc3_:Vector.<int> = new Vector.<int>();
         _loc2_ = 0;
         while(_loc2_ < 6)
         {
            _loc3_.push(0);
            _loc2_++;
         }
         o3039 = new Vector.<MovieClip>();
         _loc5_ = 0;
         while(_loc5_ < 1)
         {
            _loc4_ = param1.getChildByName("badgeSet" + _loc5_.toString()) as MovieClip;
            o3039.push(_loc4_);
            o3379(_loc3_,true);
            _loc5_++;
         }
      }
      
      public function o7658(param1:o19626) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         this.o3962(param1.o12273,param1.o14461);
         var _loc5_:int = 0;
         var _loc4_:Vector.<int> = new Vector.<int>();
         if(param1.o1788)
         {
            var _loc10_:int = 0;
            var _loc9_:* = param1.o1788;
            for(var _loc6_ in param1.o1788)
            {
               _loc2_ = param1.o14223(_loc6_);
               while(_loc4_.length < _loc2_.length)
               {
                  _loc4_.push(0);
               }
               _loc3_ = 0;
               while(_loc3_ < _loc2_.length)
               {
                  var _loc7_:* = _loc3_;
                  var _loc8_:* = _loc4_[_loc7_] + _loc2_[_loc3_];
                  _loc4_[_loc7_] = _loc8_;
                  _loc3_++;
               }
               if(o20151(_loc2_))
               {
                  o3379(_loc4_);
                  _loc5_++;
               }
            }
         }
      }
      
      public function o3962(param1:int, param2:int) : void
      {
         o1256(o20640,"x" + param1.toString());
         o1256(o7319,"x" + param2.toString());
      }
      
      public function o20151(param1:Vector.<int>) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for each(var _loc2_ in param1)
         {
            if(_loc2_ > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function o3379(param1:Vector.<int>, param2:Boolean = false) : void
      {
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         var _loc4_:MovieClip = o3039[0];
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc12_:int = 0;
         var _loc11_:* = param1;
         for each(var _loc3_ in param1)
         {
            if(_loc3_ <= 0 && param2 == false)
            {
               _loc10_++;
            }
            else
            {
               _loc8_ = _loc4_.getChildByName("level" + _loc9_.toString()) as MovieClip;
               _loc8_.gotoAndStop(1);
               _loc5_ = _loc8_.getChildByName("level") as MovieClip;
               _loc5_.gotoAndStop(_loc10_ + 1);
               _loc7_ = _loc8_.getChildByName("lblCount") as TextField;
               if(param1[_loc10_] > 1)
               {
                  _loc7_.text = param1[_loc10_].toString();
               }
               else
               {
                  _loc7_.text = "";
               }
               this.o5452(new o20636(_loc10_,_loc5_));
               _loc8_.visible = true;
               _loc9_++;
               _loc10_++;
            }
         }
         if(param2)
         {
            _loc9_ = 0;
         }
         _loc6_ = _loc9_;
         while(_loc6_ < param1.length)
         {
            _loc8_ = _loc4_.getChildByName("level" + _loc6_.toString()) as MovieClip;
            _loc8_.visible = false;
            _loc6_++;
         }
      }
   }
}
