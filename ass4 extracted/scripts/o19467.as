package
{
   import flash.utils.Dictionary;
   
   public class o19467
   {
       
      
      public var o19419:o14200;
      
      public var id:int;
      
      public var name:String;
      
      private var o2087:o16123;
      
      private var o3016:o16123;
      
      private var o13981:o16123;
      
      private var o8503:o16123;
      
      public var enabled:Boolean;
      
      public var o6983:Dictionary;
      
      public var o2819:Dictionary;
      
      public var o12087:String;
      
      public var o7784:String;
      
      public var o8208:Vector.<String>;
      
      public var o15474:Vector.<Boolean>;
      
      public var o983:Vector.<String>;
      
      public var o12415:Vector.<String>;
      
      public var o15736:Dictionary;
      
      public var o15938:Dictionary;
      
      public function o19467(param1:o14200)
      {
         o2087 = new o16123(0);
         o3016 = new o16123(0);
         o13981 = new o16123(0);
         o8503 = new o16123(0);
         o6983 = new Dictionary();
         o2819 = new Dictionary();
         o8208 = new Vector.<String>();
         o15474 = new Vector.<Boolean>();
         o983 = new Vector.<String>();
         o12415 = new Vector.<String>();
         o15736 = new Dictionary();
         o15938 = new Dictionary();
         super();
         this.o19419 = param1;
      }
      
      public function get o17238() : int
      {
         o3016.value = o2087.value;
         if(o19419.o202.o18339 == 2)
         {
            return o3016.value * o14576.o17270;
         }
         return o3016.value;
      }
      
      public function get o300() : int
      {
         o8503.value = o13981.value * (o14200.o19505.o7923.level / 100);
         var _loc1_:int = o17238;
         if(o8503.value < _loc1_)
         {
            o8503.value = _loc1_;
         }
         if(o19419.o202.o18339 == 2)
         {
            o8503.value = o8503.value * o14576.o17270;
         }
         o8503.value = Math.abs(o8503.value);
         return o8503.value;
      }
      
      public function o5229(param1:int, param2:int) : void
      {
         o2087.value = param1;
         o13981.value = param2;
      }
      
      public function get o3331() : String
      {
         return o12087;
      }
      
      public function o7195() : int
      {
         return o300;
      }
      
      public function o18204() : void
      {
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         var _loc2_:o9503 = o4519.o8116.profileData.o7923.o3525;
         var _loc5_:int = 0;
         var _loc4_:* = o6983;
         for(_loc1_ in o6983)
         {
            _loc3_ = o6983[_loc1_];
            _loc2_.o780(_loc1_,_loc3_);
         }
         var _loc7_:int = 0;
         var _loc6_:* = o2819;
         for(_loc1_ in o2819)
         {
            _loc3_ = o2819[_loc1_];
            _loc2_.o780(_loc1_,_loc3_);
         }
      }
   }
}
