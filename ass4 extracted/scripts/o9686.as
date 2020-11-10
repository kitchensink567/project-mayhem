package
{
   import flash.events.Event;
   
   public class o9686 extends o8023
   {
      
      public static var o19410:int = 0;
      
      public static var o3398:int = 1;
      
      public static var o16584:int = 2;
       
      
      public var position:o18509;
      
      public var o7327:o18509;
      
      public var o16990:Number = 1;
      
      public var o2371:String = null;
      
      private var o10813:Number = 1;
      
      private var o2182:o4332;
      
      private var parent:o7848;
      
      private var o17309:Boolean = false;
      
      private var type:int;
      
      private var o6917:Number = 0;
      
      private var o2158:int = 0;
      
      private var o14016:int = 0;
      
      private var o3025:Number = 1.0;
      
      public function o9686()
      {
         position = new o18509();
         o7327 = new o18509();
         type = o19410;
         super();
      }
      
      public function init(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:o7848 = null, param7:o4332 = null, param8:Number = -1, param9:Number = -1, param10:int = 0, param11:int = 6, param12:Number = 1.0) : void
      {
         var _loc13_:int = 0;
         this.o2371 = param1;
         this.position.x = param2;
         this.position.y = param3;
         this.o16990 = param4;
         this.o2182 = param7;
         this.parent = param6;
         this.type = param10;
         this.o6917 = param9;
         this.o2158 = param11;
         this.o3025 = param12;
         if(param6)
         {
            param6.o16280(this,o14571.o19115,o12103);
         }
         if(param1 == "" || param1 == null)
         {
            o8339("WARNING NULL TEXTURE SET IN BASIC PARTICLE EMITTER INIT()");
            _loc13_ = 4;
         }
         o17309 = false;
         o14016 = o1051.o4767(this,param5,o795,param8 > 0?int(param8 / param5):2147483647,false,o1051.o4804);
         if(param8 > 0)
         {
            o1051.o9310(this,param8,o12103);
         }
      }
      
      public function o18141() : Boolean
      {
         return !o17309;
      }
      
      public function stop() : void
      {
         o17309 = true;
      }
      
      public function start() : void
      {
         o17309 = false;
      }
      
      private function o795() : void
      {
         var _loc1_:* = null;
         if(o17309)
         {
            return;
         }
         var _loc4_:Number = position.x;
         var _loc3_:Number = position.y;
         if(o2182 && o2182.position)
         {
            _loc1_ = o15460.o4078;
            _loc1_.x = position.x;
            _loc1_.y = position.y;
            _loc1_.rotate(o2182.rotation);
            _loc4_ = o2182.position.x + _loc1_.x;
            _loc3_ = o2182.position.y + _loc1_.y;
         }
         var _loc2_:o1850 = o4519.o8116.o13427.o11961(o1850,[o2371,_loc4_,_loc3_,o16990,o6917]) as o1850;
         _loc2_.o6691.o2158 = o2158;
         var _loc5_:* = o3025;
         _loc2_.o6691.scaleY = _loc5_;
         _loc2_.o6691.scaleX = _loc5_;
      }
      
      public function o12103(param1:Event = null) : void
      {
         o19115();
      }
      
      override public function o19115() : void
      {
         if(o8289())
         {
            return;
         }
         if(parent)
         {
            parent.o12657(o14571.o19115,o19115);
         }
         parent = null;
         stop();
         o1051.o19115(o14016);
         super.o19115();
      }
   }
}
