package
{
   import flash.utils.Dictionary;
   
   public class o11232
   {
       
      
      private var o12426:int;
      
      private var o18248:int;
      
      public var o11087:Vector.<o5625>;
      
      public var o9938:Dictionary;
      
      public function o11232()
      {
         o11087 = new Vector.<o5625>();
         o9938 = new Dictionary();
         super();
      }
      
      private function o2452(param1:String, param2:int, param3:int, param4:int) : o5625
      {
         var _loc5_:o5625 = new o5625(param1,param2,param3,param4);
         o9938[param1] = _loc5_;
         return _loc5_;
      }
      
      private function o4581() : void
      {
      }
      
      public function o16507(param1:int) : o5625
      {
         if(param1 <= 0)
         {
            return null;
         }
         var _loc2_:int = param1 - 1;
         if(_loc2_ >= o11087.length)
         {
            _loc2_ = o12426 + (_loc2_ - o12426) % o18248;
         }
         return o11087[_loc2_];
      }
      
      public function init(param1:o2693) : void
      {
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         o12426 = param1.o3554("dailyRewards.loopToDay") - 1;
         var _loc4_:int = param1.o3554("dailyRewards.days");
         var _loc2_:* = 0;
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc7_ = param1.o9009("dailyRewards.days." + (_loc3_ + 1).toString());
            _loc6_ = o9938[_loc7_];
            if(_loc6_ == null)
            {
               _loc5_ = parseInt(_loc7_.substr(0,1));
               if(_loc5_ < 1 || _loc5_ > 3)
               {
                  throw new Error("Invalid reward qty");
               }
               if(_loc7_.indexOf("Boxes") >= 0)
               {
                  if(_loc7_.indexOf("Titanium") >= 0)
                  {
                     _loc2_ = int(o4189.o17868);
                  }
                  else if(_loc7_.indexOf("Molybdenum ") >= 0)
                  {
                     _loc2_ = int(o4189.o20918);
                  }
                  else if(_loc7_.indexOf("Iridium") >= 0)
                  {
                     _loc2_ = int(o4189.o6765);
                  }
                  else if(_loc7_.indexOf("Neodynium") >= 0)
                  {
                     _loc2_ = int(o4189.o16296);
                  }
                  else if(_loc7_.indexOf("Prometheum") >= 0)
                  {
                     _loc2_ = int(o4189.o11328);
                  }
                  else if(_loc7_.indexOf("Thulium") >= 0)
                  {
                     _loc2_ = int(o4189.o15243);
                  }
                  else
                  {
                     throw new Error("Unknown strongbox type");
                  }
                  _loc6_ = o2452(_loc7_,_loc5_,1,_loc2_);
               }
               else if(_loc7_.indexOf("Turrets") >= 0)
               {
                  if(_loc7_.indexOf("Cryo") >= 0)
                  {
                     _loc2_ = 5;
                  }
                  else if(_loc7_.indexOf("Heavyshot") >= 0)
                  {
                     _loc2_ = 6;
                  }
                  else if(_loc7_.indexOf("Rocket") >= 0)
                  {
                     _loc2_ = 7;
                  }
                  else if(_loc7_.indexOf("Flame") >= 0)
                  {
                     _loc2_ = 8;
                  }
                  else if(_loc7_.indexOf("Zeus") >= 0)
                  {
                     _loc2_ = 9;
                  }
                  else
                  {
                     throw new Error("Unknown turret type");
                  }
                  _loc6_ = o2452(_loc7_,_loc5_,2,_loc2_);
               }
               else if(_loc7_.indexOf("SAS Creds Packs") >= 0)
               {
                  _loc6_ = o2452(_loc7_,_loc5_,3,-1);
               }
               else
               {
                  throw new Error("Invalid daily reward");
               }
            }
            o11087.push(_loc6_);
            _loc3_++;
         }
         o18248 = o11087.length - o12426;
         _loc2_ = _loc2_;
      }
   }
}
