package
{
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class o4693 extends o3358
   {
      
      public static var o9976:Boolean = false;
       
      
      public var o18447:o7848 = null;
      
      private var o11675:Vector.<uint>;
      
      public var enabled:Boolean = true;
      
      private var o19645:o12030;
      
      private var o3887:o12030;
      
      private var o11550:o12030;
      
      private var o2331:o12030;
      
      private var o4156:o12030;
      
      private var o16711:Boolean = false;
      
      public function o4693(param1:DisplayObject, param2:o1885)
      {
         stage = param1;
         o18929 = param2;
         o762 = function():void
         {
            stage.addEventListener("keyDown",o20303);
            stage.addEventListener("keyUp",o14938);
            stage.addEventListener("enterFrame",o5381);
            o4519.o19389.addEventListener("mouseDown",o10893);
            stage.addEventListener("mouseUp",o19201);
         };
         o11675 = new Vector.<uint>();
         super(stage,o18929);
         var o13667:o12308 = o14200.o19505.o5292.o8675;
         o19645 = o13667.o2483(22);
         o3887 = o13667.o2483(25);
         o11550 = o13667.o2483(26);
         o2331 = o13667.o2483(23);
         o4156 = o13667.o2483(24);
         if(o4519.o13206.o9745)
         {
            o762();
         }
         else
         {
            o4519.o13206.o19926(this,o16450.o9745,function():void
            {
            });
         }
      }
      
      override public function o19115() : void
      {
         o19645 = null;
         o3887 = null;
         o11550 = null;
         o2331 = null;
         o4156 = null;
         super.o19115();
         stage.removeEventListener("keyDown",o20303);
         stage.removeEventListener("keyUp",o14938);
         stage.removeEventListener("enterFrame",o5381);
         o4519.o19389.removeEventListener("mouseDown",o10893);
         stage.removeEventListener("mouseUp",o19201);
      }
      
      public function o13356() : void
      {
         o11675 = new Vector.<uint>();
         o6127();
      }
      
      public function o6127() : void
      {
         var _loc1_:o18509 = o15460.o4078;
         _loc1_.x = 0;
         _loc1_.y = 0;
         var _loc3_:* = 1;
         var _loc6_:int = 0;
         var _loc5_:* = o11675;
         for each(var _loc2_ in o11675)
         {
            var _loc4_:* = _loc2_;
            switch(_loc4_)
            {
               case o2331.o1718:
                  _loc1_.y = -_loc3_;
                  continue;
               case o3887.o1718:
                  _loc1_.x = -_loc3_;
                  continue;
               case o4156.o1718:
                  _loc1_.y = _loc3_;
                  continue;
               case o11550.o1718:
                  _loc1_.x = _loc3_;
                  continue;
               default:
                  continue;
            }
         }
         if(o4519.o13206.o2034 == false || enabled == false)
         {
            if(o11675.length > 0)
            {
               o11675 = new Vector.<uint>();
            }
            _loc1_.x = 0;
            _loc1_.y = 0;
         }
         if(_loc1_.x != 0 || _loc1_.y != 0)
         {
            _loc1_.o14528();
         }
         if(o10720.x != _loc1_.x || o10720.y != _loc1_.y)
         {
            o10720.x = _loc1_.x;
            o10720.y = _loc1_.y;
            dispatchData(new o282(o10720));
         }
      }
      
      public function o5381(param1:Event = null) : void
      {
         if(enabled == false)
         {
            return;
         }
         o1523.x = o18929.x + stage.mouseX * (o18929.width / (stage as Stage).stageWidth);
         o1523.y = o18929.y + stage.mouseY * (o18929.height / (stage as Stage).stageHeight);
         dispatchData(new o5040(o2179));
         if(o18447 != null && o18447.o6691 != null)
         {
            o2179.x = o1523.x - o18447.o6691.position.x;
            o2179.y = o1523.y - o18447.o6691.position.y;
            dispatchData(new o7208(o2179));
         }
      }
      
      public function o10893(param1:MouseEvent) : void
      {
         if(enabled == false)
         {
            return;
         }
         if(!o9976)
         {
            o15777(o2511.o7816);
         }
      }
      
      public function o19201(param1:MouseEvent) : void
      {
         if(enabled == false)
         {
            return;
         }
         if(!o9976)
         {
            o15777(o2511.o6315);
         }
      }
      
      public function o20303(param1:KeyboardEvent) : void
      {
         var _loc2_:int = o11675.indexOf(param1.keyCode);
         if(_loc2_ == -1)
         {
            o11675.push(param1.keyCode);
         }
         o6127();
      }
      
      public function o14938(param1:KeyboardEvent) : void
      {
         var _loc2_:int = o11675.indexOf(param1.keyCode);
         if(_loc2_ != -1)
         {
            o11675.splice(_loc2_,1);
         }
         if(enabled == false)
         {
            return;
         }
         o6127();
         var _loc3_:* = param1.keyCode;
         switch(_loc3_)
         {
            case 49:
               o15777(o2511.o6912);
               break;
            case 50:
               o15777(o2511.o17470);
               break;
            case 51:
               o15777(o2511.o17895);
               break;
            case o19645.o1718:
               o15777(o2511.o20957);
         }
      }
   }
}
