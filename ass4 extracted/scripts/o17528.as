package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   
   public class o17528 extends o8023
   {
      
      private static var o814:ByteArray = new ByteArray();
      
      private static var o13591:ByteArray = new ByteArray();
       
      
      private var o17588:MovieClip = null;
      
      private var o19298:Vector.<o45>;
      
      private var o12164:Vector.<o45>;
      
      private var o14169:Array;
      
      private var o10215:Vector.<o45>;
      
      public function o17528()
      {
         o19298 = new Vector.<o45>();
         o12164 = new Vector.<o45>();
         o14169 = [];
         o10215 = new Vector.<o45>();
         super();
      }
      
      public function initialise(param1:MovieClip, param2:MovieClip) : void
      {
         var _loc4_:* = null;
         var _loc8_:int = 0;
         var _loc3_:int = 0;
         var _loc7_:* = null;
      }
      
      override public function o19115() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
      }
      
      public function o471(param1:o4332) : void
      {
         if(!o4519.o9721.o13094)
         {
            o4519.o8116.o11954.o11867(param1);
            return;
         }
         var _loc4_:int = 0;
         var _loc3_:* = o4519.o9721.o16434;
         for each(var _loc2_ in o4519.o9721.o16434)
         {
            o4519.o8116.o11954.o6849(param1,_loc2_);
         }
         o4519.o8116.o11954.o11867(param1);
      }
      
      public function o10598() : void
      {
         if(o10215.length == 0)
         {
            return;
         }
         var o1331:Vector.<o4332> = new Vector.<o4332>();
         var o2470:Vector.<o45> = o10215;
         if(o2470.length < 100)
         {
            o2470 = o10215.filter(function(param1:o45, param2:int, param3:Vector.<o45>):Boolean
            {
               if(param1.o9663)
               {
                  return false;
               }
               return true;
            });
         }
         o2470 = o2470.sort(function(param1:o45, param2:o45):Number
         {
            if(param1.o16990 < param2.o16990)
            {
               return -1;
            }
            if(param1.o16990 > param2.o16990)
            {
               return 1;
            }
            return 0;
         });
         var _loc5_:int = 0;
         var _loc4_:* = o2470;
         for each(o9412 in o2470)
         {
            o814.writeFloat(o9412.position.x);
            o814.writeFloat(o9412.position.y);
            o814.writeFloat(o9412.rotation);
            o814.writeFloat(o9412.scaleX);
            o814.writeFloat(o9412.scaleY);
            o814.writeInt(o9412.o16396.frame);
            o814.writeUTF(o9412.o16396.assetID);
            var _loc3_:int = 0;
            var _loc2_:* = o19298;
            for each(o13460 in o19298)
            {
               var o2461:Number = 200;
               var o9902:Vector.<Number> = new Vector.<Number>();
               o9902.push(o9412.position.x,o9412.position.y);
               o9902.push(o9412.position.x + o2461,o9412.position.y);
               o9902.push(o9412.position.x - o2461,o9412.position.y);
               o9902.push(o9412.position.x,o9412.position.y + o2461);
               o9902.push(o9412.position.x,o9412.position.y - o2461);
               var o7023:int = 0;
               while(o7023 < o9902.length)
               {
                  var x:Number = o9902[o7023];
                  var y:Number = o9902[o7023 + 1];
                  if(o13460.o16396.x < x && o13460.o16396.x + o13460.o16396.width > x && o13460.o16396.y < y && o13460.o16396.y + o13460.o16396.height > y)
                  {
                     if(o1331.indexOf(o13460) == -1)
                     {
                        o1331.push(o13460);
                     }
                  }
                  o7023 = o7023 + 2;
               }
            }
            o1051.o9310(this,0.0333333333333333,function():Function
            {
               var o6691:o4332 = o9412;
               return function():void
               {
                  o4519.o8116.o11954.o11867(o6691);
                  o6691.position.o19115();
                  o6691.o19115();
               };
            }());
            o10215.splice(o10215.indexOf(o9412),1);
         }
         if(o1331.length > 0)
         {
            o814.shareable = true;
            var _loc7_:int = 0;
            var _loc6_:* = o1331;
            for each(o6958 in o1331)
            {
               o4519.o8116.o11954.o13691(o6958.o16396);
            }
         }
      }
      
      public function o6079() : void
      {
         o17588.o12721.visible = false;
         o2072();
      }
      
      public function o2072() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o19298;
         for each(var _loc1_ in o19298)
         {
            o4519.o8116.o11954.o13691(_loc1_.o16396);
         }
      }
      
      private function o11053(param1:DisplayObject, param2:ByteArray, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:String = getQualifiedClassName(param1).split("::").join(".");
         if(o4519.o8116.o5830.o12919(_loc7_))
         {
            param2.writeFloat(param3 + param1.x);
            param2.writeFloat(param4 + param1.y);
            param2.writeFloat(param1.rotation * (3.14159265358979 / 180));
            param2.writeFloat(param1.scaleX);
            param2.writeFloat(param1.scaleY);
            if(param1 is MovieClip)
            {
               param2.writeInt((param1 as MovieClip).currentFrame);
            }
            else
            {
               param2.writeInt(1);
            }
            param2.writeUTF(_loc7_);
         }
         else if(param1 is DisplayObjectContainer)
         {
            _loc5_ = param1 as DisplayObjectContainer;
            _loc6_ = 0;
            while(_loc6_ < _loc5_.numChildren)
            {
               o11053(_loc5_.getChildAt(_loc6_),param2,param3 + _loc5_.x,param4 + _loc5_.y);
               _loc6_++;
            }
         }
      }
   }
}
