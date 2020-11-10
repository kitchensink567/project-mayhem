package
{
   import com.ninjakiwi.gateway.nk.NKGateway;
   import com.ninjakiwi.gateway.nk.NKGatewayUser;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.LocalConnection;
   import flash.utils.Dictionary;
   
   public class o14200 extends EventDispatcher
   {
      
      public static var o19505:o14200;
      
      private static const o9871:String = "sas4Con";
      
      public static const SAS_MONEY_CHANGED:String = "sasMoneyChanged";
       
      
      private var o19710:int;
      
      private var o19167:LocalConnection;
      
      private var o13111:LocalConnection;
      
      public var o15894:o4889;
      
      public var gateway:NKGateway;
      
      public var o11453:o16819;
      
      public var o5292:o14413;
      
      public var o202:o13467;
      
      public var o1317:o6278;
      
      public var data:o7751;
      
      public var o2554:String = null;
      
      public var o18075:String;
      
      private var o17434:o10411;
      
      public var o19552:o2693;
      
      public var o5099:o2693;
      
      public var o14693:Dictionary;
      
      private var o9678:o10411;
      
      public var o8576:Boolean = false;
      
      public var o4722:Boolean = false;
      
      public var o13637:o11063;
      
      public function o14200(param1:LoaderInfo, param2:String)
      {
         o18075 = "";
         o17434 = new o10411(false);
         o9678 = new o10411(false);
         o13637 = new o11063();
         super();
         o15894 = new o4889(this,param2);
         o202 = new o13467(this);
         o11453 = new o16819(this);
         o5292 = new o14413(this);
         o1317 = new o6278(this);
         data = new o7751(this);
         o14693 = new Dictionary();
         o5292.o12970 = new o16236();
         o5292.o16679 = new o10330();
         o19505 = this;
      }
      
      public function get o2719() : o921
      {
         if(o15894 == null || o15894.o4848 == null)
         {
            return null;
         }
         return o15894.o4848.o2719;
      }
      
      public function get o20616() : Boolean
      {
         if(this.o15894.o4848.o4539 != null)
         {
            return this.o15894.o4848.o4539.saveData.level != 0;
         }
         return false;
      }
      
      public function set o20616(param1:Boolean) : void
      {
         if(this.o15894.o4848.o4539 != null)
         {
            this.o15894.o4848.o4539.saveData.level = !!param1?1:0;
         }
      }
      
      public function get o1029() : Boolean
      {
         return o17434.value;
      }
      
      public function get o20602() : Boolean
      {
         return o9678.value;
      }
      
      public function set o1029(param1:Boolean) : void
      {
         o17434.value = param1;
      }
      
      public function set o20602(param1:Boolean) : void
      {
         o9678.value = param1;
      }
      
      public function get o12094() : o6701
      {
         return this.o15894.o4848;
      }
      
      public function get o4539() : NKGatewayUser
      {
         return o15894.o4539;
      }
      
      public function o14986(param1:NKGatewayUser) : void
      {
         if(o15894 != null)
         {
            return o15894.o14986(param1);
         }
      }
      
      public function get o9276() : Boolean
      {
         if(false || o9678.value)
         {
            return false;
         }
         return true;
      }
      
      public function set o9276(param1:Boolean) : void
      {
      }
      
      public function o8304() : void
      {
         dispatchEvent(new Event(SAS_MONEY_CHANGED));
      }
      
      public function o16796(param1:String) : Boolean
      {
         if(o14693[param1] == null)
         {
            o14693[param1] = 1;
            return true;
         }
         return false;
      }
      
      public function o12911(param1:String) : Boolean
      {
         if(param1 == null || param1 == "")
         {
            return false;
         }
         return o14693[param1] != null;
      }
      
      public function get o13206() : o9602
      {
         return o4519.o13206;
      }
      
      public function o2187() : void
      {
         o202.o13640();
         o11453 = new o16819(this);
         o1317 = new o6278(this);
         data = new o7751(this);
         o14693 = new Dictionary();
         o4519.o8116.o6895 = new o6051();
         this.o202.o6464();
      }
      
      public function o14603() : void
      {
      }
      
      public function o10206(param1:String) : String
      {
         return this.o5099.o9009(param1);
      }
      
      public function saveData() : o16124
      {
         return o15894.save();
      }
      
      public function o2324() : o16124
      {
         var _loc1_:o16124 = new o16124();
         o15894.o4848.o2599(new Error("Fake save error"));
         _loc1_.data = false;
         return _loc1_;
      }
      
      public function o2992() : void
      {
         o15894.o2992();
      }
      
      public function o9573(param1:int, param2:String, param3:int) : o9145
      {
         return o15894.o7892(param1,param2 == null?"Test user " + data.o11400.length:param2,param3);
      }
      
      public function o11296(param1:o9145) : void
      {
         this.o15894.o11296(param1);
         this.o15894.save();
      }
      
      public function o20934(param1:o9145) : void
      {
         this.o15894.o20934(param1);
         this.o15894.save();
      }
      
      public function o15325(param1:o9145) : void
      {
         this.o15894.o15325(param1);
         this.o15894.save();
      }
      
      public function o1816(param1:o9145) : void
      {
         this.o15894.o1816(param1);
         this.o15894.save();
      }
      
      public function o455(param1:o9145) : void
      {
         this.o15894.o455(param1);
         this.o15894.save();
      }
      
      public function o8706(param1:o9145) : void
      {
         this.o15894.o8706(param1);
         this.o15894.save();
      }
      
      public function o20282(param1:o9145) : void
      {
         this.o15894.o20282(param1);
         this.o15894.save();
      }
      
      public function o1343() : int
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = data.o11400;
         for each(var _loc2_ in data.o11400)
         {
            if(_loc2_ != null && _loc2_.level > _loc1_)
            {
               _loc1_ = _loc2_.level;
            }
         }
         return _loc1_;
      }
      
      public function log(param1:String, param2:Boolean = true) : void
      {
      }
      
      public function o14216(param1:String, param2:Boolean = true) : void
      {
      }
      
      public function o2251(param1:String) : void
      {
         var _loc5_:String = "combotMessage." + param1 + ".";
         var _loc3_:String = this.o5099.o9009(_loc5_ + "message");
         var _loc6_:Number = this.o5099.o17521(_loc5_ + "duration");
         var _loc2_:String = this.o5099.o9009(_loc5_ + "icon");
         var _loc4_:int = o13030.o2809(_loc2_);
         if(_loc4_ < 0)
         {
            if(data.o7923.o2274 == 0)
            {
               _loc4_ = 8;
            }
            else if(data.o7923.o2274 == 1)
            {
               _loc4_ = 10;
            }
            else if(data.o7923.o2274 == 2)
            {
               _loc4_ = 9;
            }
         }
         o4519.o8116.o20488.o2251(_loc4_,_loc3_,null,null,_loc6_);
      }
      
      public function get o7923() : o9145
      {
         return data.o7923;
      }
      
      public function o115() : int
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc1_:int = 0;
         if(o4519.o17061)
         {
            return 14;
         }
         if(o15894.o4539 != null)
         {
            _loc2_ = o15894.o4539.profileData;
            _loc3_ = _loc2_["clan"];
            _loc1_ = o11282.o19049(_loc3_);
            return _loc1_;
         }
         return 0;
      }
   }
}
