package
{
   public class o3273
   {
       
      
      private var o17871:Vector.<o7716>;
      
      private var o13008:o16123;
      
      public function o3273()
      {
         o13008 = new o16123(0);
         super();
         o17871 = new Vector.<o7716>();
      }
      
      public function get o7030() : int
      {
         return this.o13008.value;
      }
      
      public function set o7030(param1:int) : void
      {
         this.o13008.value = param1;
      }
      
      public function init(param1:o2693, param2:String) : void
      {
         var _loc8_:int = 0;
         var _loc5_:* = null;
         var _loc7_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = param1.o3554(param2);
         _loc8_ = 0;
         while(_loc8_ < _loc4_)
         {
            _loc5_ = new o7716();
            _loc7_ = param1.o3554(param2 + "." + _loc8_ + ".weaponIDs");
            _loc3_ = 0;
            while(_loc3_ < _loc7_)
            {
               _loc5_.o9174.push(param1.o3554(param2 + "." + _loc8_ + ".weaponIDs." + _loc3_));
               _loc3_++;
            }
            _loc6_ = param1.o3554(param2 + "." + _loc8_ + ".themes");
            _loc3_ = 0;
            while(_loc3_ < _loc6_)
            {
               _loc5_.o18002(param1.o9009(param2 + "." + _loc8_ + ".themes." + _loc3_ + ".themeType"),param1.o9009(param2 + "." + _loc8_ + ".themes." + _loc3_ + ".Name"),param1.o9009(param2 + "." + _loc8_ + ".themes." + _loc3_ + ".Description"),param1.o9009(param2 + "." + _loc8_ + ".themes." + _loc3_ + ".colour"),param1.o9009(param2 + "." + _loc8_ + ".themes." + _loc3_ + ".hat"));
               _loc3_++;
            }
            o17871.push(_loc5_);
            _loc8_++;
         }
         o7030 = o12696.o20082();
      }
      
      public function o2100(param1:int) : o19720
      {
         if(o7030 != 0)
         {
            var _loc4_:int = 0;
            var _loc3_:* = o17871;
            for each(var _loc2_ in o17871)
            {
               if(_loc2_.o1769(param1))
               {
                  return _loc2_.o11545(o7030);
               }
            }
         }
         return new o19720(0,"","","#FFFFFF","");
      }
      
      public function o3236(param1:int, param2:int) : o19720
      {
         var _loc5_:int = 0;
         var _loc4_:* = o17871;
         for each(var _loc3_ in o17871)
         {
            if(_loc3_.o1769(param1))
            {
               return _loc3_.o10588(param2);
            }
         }
         return new o19720(0,"","","#FFFFFF","");
      }
   }
}
