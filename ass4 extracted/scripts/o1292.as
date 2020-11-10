package
{
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Mouse;
   import flash.ui.MouseCursorData;
   
   public class o1292
   {
      
      public static var o7889:String = "ARCursor";
      
      public static var o7328:String = "LMGCursor";
      
      public static var o15566:String = "SMGCursor";
      
      public static var o13888:String = "LauncherCursor";
      
      public static var o12507:String = "PistolCursor";
      
      public static var o17395:String = "SniperCursor";
      
      public static var o16602:String = "ShotgunCursor";
      
      public static var o4691:String = "FlameCursor";
      
      public static var o12278:String = "Cursor";
       
      
      private var o5143:Array;
      
      public function o1292(param1:o7118)
      {
         var _loc3_:int = 0;
         o5143 = [["assets.cursors.Cursor",o12278],["assets.cursors.AimAR",o7889],["assets.cursors.AimLMG",o7328],["assets.cursors.AimSMG",o15566],["assets.cursors.AimLauncher",o13888],["assets.cursors.AimPistol",o12507],["assets.cursors.AimSniper",o17395],["assets.cursors.AimShotgun",o16602],["assets.cursors.AimFlame",o4691]];
         super();
         var _loc2_:o12600 = new o8023();
         param1.o16280(_loc2_,o11719.o5422,o13130);
         _loc3_ = 0;
         while(_loc3_ < o5143.length)
         {
            param1.o11358(o5143[_loc3_][0]);
            _loc3_++;
         }
      }
      
      public static function o8237(param1:String) : void
      {
         try
         {
            Mouse.cursor = param1;
            return;
         }
         catch(o19631:Error)
         {
            return;
         }
      }
      
      private function o1296(param1:String) : int
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o5143.length)
         {
            if(o5143[_loc2_][0] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function o13130(param1:o17437) : void
      {
         var _loc6_:int = o1296(param1.id);
         if(_loc6_ == -1)
         {
            return;
         }
         var _loc8_:MovieClip = new param1.asset();
         var _loc2_:Rectangle = _loc8_.getBounds(_loc8_);
         var _loc5_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height);
         _loc5_.fillRect(_loc5_.rect,0);
         var _loc3_:Matrix = o15460.o13247;
         _loc3_.identity();
         _loc3_.translate(-_loc2_.x,-_loc2_.y);
         _loc5_.draw(_loc8_,_loc3_);
         var _loc4_:Vector.<BitmapData> = new Vector.<BitmapData>();
         _loc4_[0] = _loc5_;
         var _loc7_:MouseCursorData = new MouseCursorData();
         _loc7_.hotSpot = new Point(-_loc2_.x,-_loc2_.y);
         _loc7_.data = _loc4_;
         Mouse.registerCursor(o5143[_loc6_][1],_loc7_);
         if(_loc6_ == 0)
         {
            o8237(o12278);
         }
      }
   }
}
