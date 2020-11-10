package
{
   import flash.utils.Dictionary;
   
   public class o10384 extends o7848 implements o6270
   {
      
      public static var o6365:uint = o8723.o19523;
       
      
      private var o12456:Dictionary;
      
      public function o10384()
      {
         o12456 = new Dictionary();
         super();
      }
      
      public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
      {
      }
      
      override protected function o17308() : void
      {
         var _loc3_:* = null;
         var _loc2_:Boolean = false;
         var _loc1_:int = 0;
         var _loc5_:* = null;
         var _loc7_:int = 0;
         var _loc6_:* = o12456;
         for(var _loc4_ in o12456)
         {
            _loc3_ = o12456[_loc4_];
            if(_loc3_.o18141())
            {
               _loc2_ = false;
               _loc1_ = 0;
               while(_loc1_ < o16738.length)
               {
                  if(_loc4_ == o16738[_loc1_].type)
                  {
                     _loc2_ = true;
                     break;
                  }
                  _loc1_++;
               }
               if(!_loc2_)
               {
                  _loc3_.stop();
               }
            }
         }
         _loc1_ = 0;
         while(_loc1_ < o16738.length)
         {
            _loc5_ = o16738[_loc1_];
            if(o12456[_loc5_.type] == null)
            {
               o12456[_loc5_.type] = o18303(_loc5_.type);
            }
            if(o12456[_loc5_.type].o18141() == false)
            {
               o12456[_loc5_.type].start();
            }
            _loc1_++;
         }
      }
      
      private function o18303(param1:int) : o9686
      {
         var _loc3_:o9686 = new o9686();
         var _loc4_:String = o7342.o9506[param1];
         var _loc2_:int = 6;
         if(param1 == 2)
         {
            _loc2_ = 7;
         }
         _loc3_.init(_loc4_,0,0,o11381.o20103,0.1,this,this.o6691,-1,-1,o9686.o19410,_loc2_);
         return _loc3_;
      }
      
      public function get o13917() : Boolean
      {
         return true;
      }
      
      public function o11022(param1:o4016) : void
      {
      }
      
      public function o5725(param1:o4016) : void
      {
      }
   }
}
