package
{
   import flash.utils.ByteArray;
   
   public class o9609
   {
      
      private static var o6626:Class = §obfuscationVersion_txt$80c50ad2c5ec95aedc0619ec0b2120ff-162808892§;
      
      private static var o8817:int = -1;
      
      private static var o19505:o9609 = null;
       
      
      private var o15397:Class;
      
      public var o17419:Vector.<o4215>;
      
      public var o11087:o11232;
      
      public var o20861:String;
      
      public var o17179:o7897;
      
      public function o9609()
      {
         o15397 = EmbedConfig_txt$48b23bcd25ebfb3aad9600323658c55e340916846;
         o17419 = new Vector.<o4215>();
         super();
      }
      
      public static function get o12834() : int
      {
         var _loc2_:* = null;
         var _loc1_:* = null;
         if(o8817 < 0)
         {
            _loc2_ = new o6626() as ByteArray;
            _loc1_ = _loc2_.toString();
            o8817 = parseInt(_loc1_);
         }
         return o8817;
      }
      
      public static function get o16330() : String
      {
         if(true || "" == "staging")
         {
            return "ext-matchmaker.sas4-web-mp-production.scalr.ws";
         }
         return "ext-matchmaker.sas4-web-mp-staging.scalr.ws";
      }
      
      public static function o6223() : o9609
      {
         if(o19505 == null)
         {
            o19505 = new o9609();
            o19505.init();
         }
         return o19505;
      }
      
      public function o4641(param1:o2693) : void
      {
         o11087 = new o11232();
         o11087.init(param1);
      }
      
      public function init() : void
      {
         var _loc2_:ByteArray = null;
         _loc2_ = new o15397() as ByteArray;
         var _loc1_:String = _loc2_.toString();
         var _loc3_:Object = JSON.parse(_loc1_);
         o17179 = new o7897();
         o17179.init(_loc3_[o9115.o17179]);
         var _loc5_:Object = _loc3_[o9115.o17419];
         var _loc7_:int = 0;
         var _loc6_:* = _loc5_;
         for each(var _loc4_ in _loc5_)
         {
            o20861 = _loc4_[o9115.date];
         }
      }
   }
}
