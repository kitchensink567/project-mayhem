package
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.external.ExternalInterface;
   import flash.net.Socket;
   
   public class o4356 extends o8023
   {
      
      public static const o13270:int = 0;
      
      public static const o20881:int = 1;
      
      public static const o17525:int = 2;
       
      
      private var o14361:Socket = null;
      
      public var o16114:int = 0;
      
      private var size:int = -1;
      
      private var o4326:int = -1;
      
      private var o18098:Vector.<int>;
      
      private var o14388:Boolean = false;
      
      public function o4356()
      {
         super();
      }
      
      public function o16955(param1:String, param2:int, param3:Vector.<int>, param4:* = 0, param5:int = 1, param6:Boolean = false, param7:Boolean = false) : void
      {
         this.o18098 = param3;
         if(param4 is String)
         {
            if(param6 || o4519.o8116.profileData.o20616)
            {
               param4 = o3571("D" + (param4 as String)) + 101010;
            }
            else
            {
               param4 = o3571(param4 as String);
               if(param7)
               {
                  param4 = param4 + 1;
               }
            }
         }
         else if(param6 || o4519.o8116.profileData.o20616)
         {
            param4 = param4 + 101010;
         }
         else
         {
            param4 = param4;
         }
         o14388 = param6;
         if(param4 == 1)
         {
            param4 = 2;
         }
         this.o4326 = param5;
         this.o16114 = param4;
         o14361 = new Socket();
         o14361.addEventListener("socketData",o17067);
         o14361.addEventListener("connect",connect);
         o14361.addEventListener("ioError",o3517);
         try
         {
            o14361.connect(param1,param2);
            return;
         }
         catch(o7367:SecurityError)
         {
            o3517();
            return;
         }
      }
      
      private function o3571(param1:String) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(o1739(param1))
         {
            return parseInt(param1);
         }
         var _loc4_:int = 5381;
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = param1.charCodeAt(_loc3_);
            _loc4_ = (_loc4_ << 5) + _loc4_ + _loc2_;
            _loc3_++;
         }
         return Math.abs(_loc4_);
      }
      
      private function o1739(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(isNaN(parseInt(param1.charAt(_loc2_))))
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function connect(param1:Event) : void
      {
         var _loc3_:int = 202;
         o14361.writeShort(_loc3_);
         if(o16114)
         {
            o14361.writeInt(o16114);
         }
         else
         {
            o14361.writeInt(o4519.o8116.profileData.o20616 || o14388?1:0);
         }
         o14361.writeShort(o4519.o8116.profileData.o7923.level);
         o14361.writeShort(o4326);
         o14361.writeInt(o18098.length);
         var _loc5_:int = 0;
         var _loc4_:* = o18098;
         for each(var _loc2_ in o18098)
         {
            o14361.writeShort(_loc2_);
         }
      }
      
      public function o3517(param1:Event = null) : void
      {
         ExternalInterface.call("alert","fail match server");
      }
      
      private function o17067(param1:ProgressEvent) : void
      {
         var _loc5_:* = null;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         if(size == -1 && o14361.bytesAvailable >= 2)
         {
            size = o14361.readShort() + 8;
         }
         if(size != -1 && o14361.bytesAvailable == size)
         {
            _loc5_ = o14361.readUTFBytes(size - 8);
            _loc4_ = o14361.readShort();
            _loc3_ = o14361.readShort();
            _loc2_ = o14361.readInt();
            dispatchData(new o1601(_loc5_,_loc4_,_loc3_,_loc2_));
            o14361.close();
            o14361.removeEventListener("socketData",o17067);
            o14361.removeEventListener("connect",connect);
            o14361.removeEventListener("ioError",o3517);
         }
      }
   }
}
