package
{
   import flash.geom.Point;
   
   public class o16518
   {
       
      
      private var o17018:Point;
      
      private var o1299:o7559;
      
      private var o18065:Vector.<o4332>;
      
      private var o17070:Vector.<o7331>;
      
      private var o17685:String = null;
      
      private var o16002:Vector.<int>;
      
      private var o2913:Point;
      
      private var width:int = 0;
      
      public var o10673:int = 0;
      
      public function o16518(param1:o7559, param2:Point)
      {
         o17018 = new Point();
         o16002 = new Vector.<int>();
         super();
         if(param2 == null)
         {
            this.o2913 = new Point();
         }
         else
         {
            this.o2913 = param2;
         }
         this.o1299 = param1;
         o18065 = new Vector.<o4332>();
         o17070 = new Vector.<o7331>();
      }
      
      public function get text() : String
      {
         return o17685;
      }
      
      public function set o2440(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         if(o10673 == 0)
         {
            _loc3_ = -width / 2;
         }
         else if(o10673 == 1)
         {
            _loc3_ = -width;
         }
         var _loc6_:int = 0;
         var _loc5_:* = o18065;
         for each(var _loc2_ in o18065)
         {
            _loc2_.position.x = _loc3_ + param1 + o16002[_loc4_] + o2913.x;
            _loc4_++;
         }
         o17018.x = param1;
      }
      
      public function set o20177(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = o18065;
         for each(var _loc2_ in o18065)
         {
            _loc2_.position.y = param1 + o2913.y;
            _loc3_++;
         }
         o17018.y = param1;
      }
      
      public function get position() : Point
      {
         return o17018;
      }
      
      public function set text(param1:String) : void
      {
         var _loc9_:* = null;
         var _loc3_:* = null;
         var _loc8_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc10_:int = 0;
         if(param1 == o17685 || o4519.o8116.o11954 == null)
         {
            return;
         }
         if(param1 == null)
         {
            param1 = "";
         }
         o17685 = param1;
         var _loc7_:int = param1.length;
         var _loc6_:int = o18065.length - _loc7_;
         if(_loc6_ > 0)
         {
            _loc8_ = 0;
            while(_loc8_ < _loc6_)
            {
               o4519.o8116.o11954.o11867(o18065[0]);
               _loc8_++;
            }
            o18065.splice(0,_loc6_);
            o17070.splice(0,_loc6_);
         }
         while(o18065.length < _loc7_)
         {
            _loc9_ = o4519.o8116.o11954.o10869();
            _loc9_.position = new o2415();
            _loc9_.o16396 = o17541.o13617(o1299.o16350);
            o4519.o8116.o11954.o9226(_loc9_);
            o18065.push(_loc9_);
            _loc3_ = o4519.o8116.o11676.o6798(o1299.o16350);
            _loc3_.o11525(_loc9_);
            o17070.push(_loc3_);
         }
         o16002 = new Vector.<int>();
         var _loc5_:int = 0;
         width = 0;
         _loc4_ = 0;
         while(_loc4_ < text.length)
         {
            width = width + (o1299.o17172[_loc10_] - 2);
            _loc4_++;
         }
         _loc2_ = 0;
         while(_loc2_ < text.length)
         {
            _loc10_ = text.charCodeAt(_loc2_) - 1;
            _loc9_ = o18065[_loc2_];
            _loc3_ = o17070[_loc2_];
            o16002.push(_loc5_);
            _loc5_ = _loc5_ + (o1299.o17172[_loc10_] - 2);
            _loc9_.o16990 = o11381.ui;
            _loc3_.gotoAndStop(_loc10_);
            _loc2_++;
         }
      }
      
      public function o19115() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o18065;
         for each(var _loc1_ in o18065)
         {
            o4519.o8116.o11954.o11867(_loc1_);
         }
         o17070 = null;
         o16002 = null;
         o17018 = null;
         o1299 = null;
         o18065 = null;
         o17685 = null;
      }
   }
}
