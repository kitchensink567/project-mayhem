package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o796 extends o19454
   {
      
      private static var o10143:Boolean = false;
       
      
      private var o8027:o14200;
      
      public function o796(param1:o14200)
      {
         super();
         o8027 = param1;
      }
      
      override protected function o19412() : o11191
      {
         return new o14596(o8027);
      }
      
      override protected function o10512() : o5492
      {
         return new o16381(o8027);
      }
      
      override protected function o9999() : o10676
      {
         return new o9092(o8027);
      }
      
      override protected function o12638(param1:Event) : void
      {
         super.o12638(param1);
         o8027.o15894.o4848.o2719.o16945 = 1;
         o16989.o15998();
         if(o10143 == false)
         {
            o8027.o15894.o4848.o18278.o5828();
            o10143 = true;
         }
      }
      
      override public function o13315(param1:int, param2:Function) : void
      {
         super.o13315(param1,param2);
         o8027.o15894.o4848.o2719.o16945 = 0;
      }
      
      override protected function o11639(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o14759.play();
      }
      
      override protected function o2806(param1:o15625) : void
      {
         o4519.o8116.o4812.ui.o876.play();
      }
      
      override public function o13640() : void
      {
         o8027 = null;
         super.o13640();
      }
      
      override public function o16384(param1:MovieClip, param2:o978, param3:int) : void
      {
         var _loc4_:int = 0;
         super.o16384(param1,param2,param3);
         o19386(o8027.o7923.o4934(),o8027.o7923.o12416());
         this.o1258();
         if(o8027.o7923.o11248.length > 0)
         {
            o8027.o202.o11362();
            o8027.o202.o19424(o8027.o7923);
            this.o16989.o13000();
         }
         else
         {
            if(o8027.o202.o17896.value)
            {
               o8027.o202.o17896.value = false;
               o16989.o13478();
            }
            else if(o8027.o202.o16608.value)
            {
               o8027.o202.o16608.value = false;
               _loc4_ = o8027.o5292.o120();
               this.o16989.o6578(_loc4_);
            }
            o8027.o7923.o13012.o19556();
         }
         param2.o9799.o1258();
         param2.o1258();
      }
      
      override public function o1258() : void
      {
         super.o1258();
         o19386(o8027.o7923.o4934(),o8027.o7923.o12416());
      }
      
      public function o19386(param1:int, param2:int) : void
      {
         var _loc3_:MovieClip = asset.getChildByName("newWeapons") as MovieClip;
         var _loc7_:MovieClip = asset.getChildByName("newArmour") as MovieClip;
         var _loc4_:MovieClip = asset.getChildByName("newSupport") as MovieClip;
         if(_loc4_ == null)
         {
            return;
         }
         _loc4_.visible = false;
         var _loc5_:TextField = _loc3_.getChildByName("lblcount") as TextField;
         var _loc6_:TextField = _loc7_.getChildByName("lblcount") as TextField;
         _loc3_.visible = param1 > 0;
         _loc7_.visible = param2 > 0;
         o1256(_loc5_,param1.toString());
         o1256(_loc6_,param2.toString());
      }
   }
}
