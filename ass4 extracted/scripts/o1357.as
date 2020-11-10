package
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class o1357 extends o8023 implements o3135
   {
       
      
      private var o19165:Dictionary = null;
      
      private var o5037:Dictionary;
      
      private var o20085:Dictionary;
      
      private var o3086:int = 0;
      
      public function o1357()
      {
         o5037 = new Dictionary();
         o20085 = new Dictionary();
         super();
         o19165 = Mem.create(this,Dictionary) as Dictionary;
      }
      
      public function o17485(param1:String) : o16124
      {
         if(param1 == null)
         {
            param1 = param1;
         }
         if(param1.indexOf(".swf") < 0)
         {
            param1 = param1;
         }
         var _loc3_:o16124 = o19165[param1];
         if(_loc3_ != null)
         {
            if(_loc3_.data != null)
            {
               _loc3_.data.position = 0;
            }
            return _loc3_;
         }
         _loc3_ = Mem.create(this,o16124) as o16124;
         o19165[param1] = _loc3_;
         var _loc2_:o13908 = Mem.create(this,o13908) as o13908;
         _loc2_.initialise(param1);
         dispatchData(_loc2_);
         var _loc4_:URLLoader = Mem.create(this,URLLoader) as URLLoader;
         o5037[_loc4_] = param1;
         _loc4_.dataFormat = "binary";
         _loc4_.addEventListener("complete",o18528,false,0,true);
         _loc4_.addEventListener("progress",o16066,false,0,true);
         _loc4_.addEventListener("ioError",o8821,false,0,true);
         var _loc5_:URLRequest = Mem.create(this,URLRequest);
         _loc5_.url = param1;
         _loc4_.load(_loc5_);
         return _loc3_;
      }
      
      private function o18528(param1:Event) : void
      {
         var _loc4_:URLLoader = param1.target as URLLoader;
         var _loc3_:String = o5037[_loc4_];
         var _loc2_:o16124 = o19165[_loc3_];
         _loc4_.data.shareable = true;
         _loc4_.data.position = 0;
         _loc2_.data = _loc4_.data;
         o20085[_loc2_] = _loc4_;
         var _loc5_:o15735 = Mem.create(this,o15735) as o15735;
         _loc5_.initialise(_loc3_);
         dispatchData(_loc5_);
      }
      
      public function o7245(param1:String) : void
      {
      }
      
      private function o20720(param1:URLLoader) : void
      {
         var _loc2_:String = o5037[param1];
         param1.removeEventListener("complete",o18528);
         param1.removeEventListener("progress",o16066);
         param1.removeEventListener("ioError",o8821);
         param1.close();
         param1.data.clear();
         param1.data = null;
         param1 = null;
         delete o19165[_loc2_];
      }
      
      private function o16066(param1:ProgressEvent) : void
      {
         var _loc4_:URLLoader = param1.target as URLLoader;
         var _loc3_:String = o5037[_loc4_];
         var _loc2_:o5279 = Mem.create(this,o5279) as o5279;
         _loc2_.initialise(_loc3_,param1.bytesLoaded / param1.bytesTotal);
         dispatchData(_loc2_);
         if(param1.bytesLoaded == param1.bytesTotal)
         {
            o3086 = o3086 + param1.bytesTotal;
         }
      }
      
      private function o8821(param1:IOErrorEvent) : void
      {
         var _loc3_:URLLoader = param1.target as URLLoader;
         var _loc2_:String = o5037[_loc3_];
         o20720(_loc3_);
         o8339("Could not load",_loc2_);
      }
   }
}
