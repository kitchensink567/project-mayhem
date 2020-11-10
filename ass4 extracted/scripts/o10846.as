package
{
   public class o10846 extends o8023
   {
      
      private static var o18030:o10846;
       
      
      public var o16989:o13064;
      
      public var o19419:o14200;
      
      private var o17462:Boolean = false;
      
      private var o16050:Vector.<o4434>;
      
      private var o3189:Boolean;
      
      private var o15578:Boolean;
      
      public function o10846()
      {
         o16050 = new Vector.<o4434>();
         super();
         init(o4519.o8116.profileData);
      }
      
      public static function get o19505() : o10846
      {
         if(o18030 == null)
         {
            o18030 = new o10846();
         }
         return o18030;
      }
      
      public function get o6382() : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = o16050;
         for each(var _loc1_ in o16050)
         {
            if(_loc1_.o6382)
            {
               return true;
            }
         }
         return false;
      }
      
      public function init(param1:o14200) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         this.o19419 = param1;
         if(o4519.o17061 == false)
         {
            _loc2_ = new o17083(this);
            _loc2_.init();
            o16050.push(_loc2_);
            _loc3_ = new o18234(this);
            _loc3_.init();
            o16050.push(_loc3_);
         }
      }
      
      public function o1181(param1:Boolean) : void
      {
         dispatchData(new o7880(o7880.o6138,o6382));
      }
      
      public function o9201() : void
      {
         this.o8609();
         o19419.o15894.o4848.o18278.o15587();
         dispatchData(new o7880(o7880.o10443,false));
      }
      
      public function o18097() : String
      {
         var _loc2_:String = "debug (" + (!!o6382?"ok":"not found") + "): ";
         var _loc4_:int = 0;
         var _loc3_:* = o16050;
         for each(var _loc1_ in o16050)
         {
            _loc2_ = _loc2_ + ((!!_loc1_.o6382?"ok":"not found") + ", ");
         }
         return _loc2_;
      }
      
      public function o15977() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o16050;
         for each(var _loc1_ in o16050)
         {
            if(_loc1_.o6382)
            {
               this.o8605();
               _loc1_.o15977();
               return;
            }
         }
      }
      
      public function o4115() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o16050;
         for each(var _loc1_ in o16050)
         {
            _loc1_.o2265();
         }
      }
      
      public function o8605() : void
      {
         if(o17462)
         {
            return;
         }
         o17462 = true;
         o3189 = o4519.o8116.profileData.o1317.o400;
         o15578 = o4519.o8116.profileData.o1317.o9671;
         o4519.o8116.profileData.o1317.o400 = false;
         o4519.o8116.profileData.o1317.o9671 = false;
      }
      
      public function o8609() : void
      {
         if(o17462 == false)
         {
            return;
         }
         o17462 = false;
         o4519.o8116.profileData.o1317.o400 = o3189;
         o4519.o8116.profileData.o1317.o9671 = o15578;
      }
   }
}
