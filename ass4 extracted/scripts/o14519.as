package
{
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.Socket;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class o14519 extends o8023
   {
      
      public static const o7899:int = 202;
      
      public static const o13069:int = 2;
      
      public static const o18661:int = 1;
      
      public static const o19804:int = 2;
      
      public static const o12946:int = 3;
      
      public static const o13720:int = 4;
      
      public static const o12889:int = 5;
      
      public static const o13053:int = 6;
      
      public static const o18697:int = 7;
      
      public static const o12274:int = 8;
      
      protected static const o9972:int = -1;
      
      protected static const o12085:int = -2;
      
      protected static const o17422:int = -3;
      
      protected static const o1638:int = -4;
      
      protected static const o14020:int = -5;
      
      protected static const o6980:int = -6;
      
      protected static const o981:int = -7;
      
      protected static const o10219:int = -8;
      
      protected static const o20928:int = -9;
      
      protected static const o17500:int = -10;
      
      protected static const o8364:int = -11;
      
      protected static const o7873:int = -12;
      
      protected static const o19767:int = -13;
      
      protected static const o6271:int = -14;
      
      protected static const o18265:int = -15;
      
      protected static const o12275:int = -16;
      
      protected static const o12310:int = -17;
      
      protected static const o5249:int = -2;
      
      protected static const o24:int = -3;
      
      protected static const o2600:int = -4;
       
      
      private var o19392:int = 0;
      
      private var o14361:Socket = null;
      
      private var o15846:int = -1;
      
      private var o13998:ByteArray = null;
      
      private var bytesNeeded:int = -1;
      
      public var id:int = -1;
      
      private var o6033:Boolean = false;
      
      protected var o15020:int = 0;
      
      protected var o8378:int = 0;
      
      public var o7300:Vector.<int>;
      
      protected var o4050:Dictionary = null;
      
      public var o10591:Dictionary;
      
      protected var o4353:String = null;
      
      protected var o11025:int = 0;
      
      protected var o2010:Boolean = false;
      
      public var o4326:int = 1;
      
      public var o16114:int = 0;
      
      protected var level:int = 1;
      
      public var o750:int = 0;
      
      public var o7146:int = 0;
      
      public var o13549:Vector.<int>;
      
      public var o18632:int = -1;
      
      public var o8851:Vector.<int>;
      
      protected var o4003:o8443 = null;
      
      private var o15955:int = 0;
      
      public var o18098:Vector.<int>;
      
      private var o8411:uint = 0;
      
      public function o14519()
      {
         o7300 = new Vector.<int>();
         o10591 = new Dictionary();
         o13549 = new Vector.<int>();
         o8851 = new Vector.<int>();
         super();
      }
      
      public function get o6370() : Boolean
      {
         return o750 == id;
      }
      
      public function get o18081() : Boolean
      {
         return this.o16114 > 2;
      }
      
      public function o16955(param1:String, param2:int, param3:int, param4:int, param5:Vector.<int>, param6:int = 1) : void
      {
         this.o4353 = param1;
         this.o11025 = param2;
         this.o4326 = param3;
         this.o16114 = param4;
         this.o18098 = param5;
         o13998 = Mem.create(this,ByteArray);
         o4050 = Mem.create(this,Dictionary);
         o12042(-2,[5],o4587);
         o12042(-3,[2],o6110);
         o12042(-4,[1,1,2,6,6,6,2],o18811);
         o12042(-6,[1],o7943);
         o12042(-7,[1,1],o16556);
         o12042(-8,[],o4570);
         o12042(-11,[2],start);
         o12042(-16,[],o3861);
         o12042(-12,[6],o10792);
         o12042(-13,[2],o13497);
         o12042(-14,[6,6],o13098);
         o14361 = new Socket();
         o14361.addEventListener("socketData",o17067,false,0,true);
         o14361.addEventListener("connect",connect,false,0,true);
         o14361.addEventListener("close",o3517,false,0,true);
         o14361.addEventListener("ioError",o3517,false,0,true);
         if(param1 != null)
         {
            try
            {
               o14361.connect(param1,param2);
            }
            catch(o7367:SecurityError)
            {
               trace("Disconnect detected: Server>Initialise");
               o3517();
            }
         }
         else
         {
            o15777(o18621.o8741);
            connect(null);
            o18811(0,0,0,0,this.o4326,0,0);
            o6110(0);
         }
         o4519.o8116.stage.addEventListener("enterFrame",o2727);
      }
      
      public function connect(param1:Event) : void
      {
         if(o2010)
         {
            o14361.close();
            return;
         }
         if(!o14361.connected)
         {
            return;
         }
         var _loc3_:int = 202;
         writeShort(_loc3_);
         writeShort(o4326);
         writeInt(o16114);
         writeShort(level);
         writeInt(o18098.length);
         var _loc5_:int = 0;
         var _loc4_:* = o18098;
         for each(var _loc2_ in o18098)
         {
            writeShort(_loc2_);
         }
         o15777(o18621.o8741);
      }
      
      public function o3517(param1:Event = null) : void
      {
         if(o4519.o13206.o9745)
         {
            o4519.o13206.o4231 = true;
         }
         o15777(o18621.o17654);
      }
      
      public function o7723() : void
      {
         if(o2010)
         {
            return;
         }
         if(o14361.connected)
         {
            o14361.close();
         }
         o2010 = true;
         o19115();
         o14361.removeEventListener("socketData",o17067);
         o14361.removeEventListener("connect",connect);
         o14361.removeEventListener("close",o3517);
         o14361.removeEventListener("ioError",o3517);
         o4519.o8116.stage.removeEventListener("enterFrame",o2727);
      }
      
      public function o6379() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < o13549.length)
         {
            _loc2_ = _loc2_ + o13549[_loc1_];
            _loc1_++;
         }
         return Math.round(_loc2_ / o13549.length);
      }
      
      public function o653() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < o8851.length)
         {
            _loc2_ = _loc2_ + o8851[_loc1_];
            _loc1_++;
         }
         return Math.round(_loc2_ / o8851.length);
      }
      
      public function get time() : int
      {
         return o15020 + (getTimer() - o8378);
      }
      
      public function get o11787() : int
      {
         return time + 1000;
      }
      
      private function o14819() : void
      {
         o19392 = getTimer();
         send([[1,-3]]);
      }
      
      protected function o4587(param1:ByteArray) : void
      {
         var _loc8_:int = 0;
         var _loc12_:* = null;
         var _loc14_:int = 0;
         var _loc2_:int = 0;
         var _loc11_:* = undefined;
         var _loc20_:int = 0;
         var _loc19_:int = 0;
         var _loc18_:* = null;
         var _loc21_:int = 0;
         var _loc16_:int = 0;
         var _loc6_:* = null;
         var _loc17_:int = 0;
         var _loc23_:int = 0;
         var _loc4_:int = 0;
         var _loc25_:int = 0;
         var _loc7_:int = 0;
         var _loc15_:* = undefined;
         var _loc3_:int = 0;
         var _loc22_:int = 0;
         var _loc10_:int = 0;
         var _loc5_:int = 0;
         var _loc26_:* = undefined;
         var _loc13_:int = 0;
         var _loc9_:* = null;
         var _loc24_:int = param1.readByte();
         if(!(int(_loc24_) + 1))
         {
            _loc8_ = param1.readByte();
            _loc12_ = param1.readUTF();
            _loc14_ = param1.readByte();
            _loc2_ = param1.readShort();
            _loc11_ = new Vector.<o20401>();
            _loc20_ = param1.readByte();
            _loc19_ = 0;
            while(_loc19_ < _loc20_)
            {
               _loc18_ = new o20401();
               _loc18_.type = param1.readByte();
               _loc18_.o11876 = param1.readShort();
               _loc18_.grade = param1.readByte();
               _loc18_.o15192 = param1.readFloat();
               _loc18_.o263 = param1.readInt();
               _loc21_ = param1.readByte();
               _loc16_ = 0;
               while(_loc16_ < _loc21_)
               {
                  _loc18_.o14893(param1.readShort());
                  _loc16_++;
               }
               _loc18_.o4752 = param1.readInt();
               _loc18_.o1419 = param1.readBoolean();
               _loc11_.push(_loc18_);
               _loc19_++;
            }
            _loc6_ = new Dictionary();
            _loc17_ = param1.readByte();
            _loc19_ = 0;
            while(_loc19_ < _loc17_)
            {
               _loc6_[param1.readByte()] = param1.readByte();
               _loc19_++;
            }
            _loc23_ = param1.readInt();
            _loc4_ = param1.readInt();
            _loc25_ = param1.readInt();
            _loc7_ = param1.readInt();
            _loc15_ = new Vector.<int>();
            _loc3_ = param1.readByte();
            _loc22_ = 0;
            while(_loc22_ < _loc3_)
            {
               _loc15_.push(param1.readByte());
               _loc22_++;
            }
            _loc10_ = param1.readByte();
            _loc5_ = param1.readByte();
            _loc26_ = new Vector.<int>();
            _loc13_ = 0;
            while(_loc13_ < _loc5_)
            {
               _loc26_.push(param1.readByte());
               _loc13_++;
            }
            _loc9_ = new o19626();
            _loc9_.o11672(param1);
            o12434(new o8443(_loc8_,_loc14_,_loc12_,_loc2_,_loc11_,_loc6_,_loc23_,_loc4_,_loc25_,_loc7_,_loc15_,_loc10_,param1.readByte() / 100,_loc26_,_loc9_));
         }
      }
      
      protected function o6110(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = getTimer();
         o7146 = _loc4_ - o19392 - o15955 / 2;
         this.o15020 = param1 + o7146 / 2;
         o8378 = _loc4_;
         o13549.push(o7146);
         if(o13549.length > 15)
         {
            o13549.shift();
         }
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o13549.length)
         {
            if(o13549[_loc2_] >= 3000)
            {
               _loc3_++;
            }
            if(o13549[_loc2_] >= 800)
            {
               _loc5_++;
            }
            _loc2_++;
         }
         if(_loc3_ >= 10)
         {
            o15777(o18621.o5999);
         }
         else if(_loc5_ >= 7)
         {
            o15777(o18621.o5629);
         }
         else
         {
            o15777(o18621.o7919);
         }
      }
      
      protected function o2727(param1:Event) : void
      {
         if(o18632 == -1)
         {
            o18632 = getTimer();
            return;
         }
         var _loc3_:int = getTimer();
         var _loc2_:int = _loc3_ - o18632;
         o15955 = _loc2_;
         o8851.push(_loc2_);
         if(o8851.length > 60)
         {
            o8851.shift();
         }
         o18632 = _loc3_;
      }
      
      protected function o2649(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         o18811(param1,param2,param3,param4,1,param5,param6);
      }
      
      protected function o18811(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int) : void
      {
         this.o750 = param1;
         this.id = param2;
         this.o15020 = param3;
         this.o8378 = getTimer();
         this.o10591 = new Dictionary();
         o10591[param2] = o4003;
         o10591[param2].id = param2;
         delete o10591[-1];
         o14819();
      }
      
      protected function o10792(param1:int) : void
      {
      }
      
      protected function o13497(param1:int) : void
      {
      }
      
      public function o18352() : void
      {
      }
      
      public function o8113(param1:int, param2:int) : void
      {
      }
      
      protected function o13098(param1:int, param2:int) : void
      {
      }
      
      protected function o9330() : void
      {
         send([[1,-9],[6,o6379()],[6,o653()]]);
      }
      
      protected function o12434(param1:o8443) : void
      {
         o10591[param1.id] = param1;
      }
      
      protected function o7943(param1:int) : void
      {
         delete o10591[param1];
         o7300.push(param1);
      }
      
      public function start(param1:int) : void
      {
      }
      
      public function o3861() : void
      {
      }
      
      public function o7629() : int
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o10591;
         for(var _loc1_ in o10591)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      protected function o16556(param1:int, param2:int) : void
      {
         o750 = param2;
      }
      
      protected function o4570() : void
      {
      }
      
      public function o12042(param1:int, param2:Array, param3:Function) : void
      {
         o4050[param1] = Mem.create(this,o18475,[param2,param3]);
      }
      
      public function send(param1:Array) : void
      {
         if(!o14361.connected)
         {
            return;
         }
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            var _loc3_:* = _loc2_[0];
            switch(_loc3_)
            {
               case 1:
                  writeByte(_loc2_[1]);
                  continue;
               case 4:
                  writeBoolean(_loc2_[1]);
                  continue;
               case 2:
                  writeInt(_loc2_[1]);
                  continue;
               case 3:
                  writeFloat(_loc2_[1]);
                  continue;
               case 5:
                  writeBytes(_loc2_[1]);
                  continue;
               case 8:
                  writeInt(_loc2_[1].length);
                  writeBytes(_loc2_[1]);
                  continue;
               case 6:
                  writeShort(_loc2_[1]);
                  continue;
               case 7:
                  o14361.writeUTF(_loc2_[1]);
                  continue;
               default:
                  continue;
            }
         }
         flush();
      }
      
      public function o19894(param1:Array, param2:int = -2, param3:Boolean = true) : void
      {
         if(param3)
         {
            param1.push([2,0],[2,0]);
         }
         var _loc5_:int = 1;
         var _loc8_:int = 0;
         var _loc7_:* = param1;
         for each(var _loc4_ in param1)
         {
            var _loc6_:* = _loc4_[0];
            switch(_loc6_)
            {
               case 1:
                  _loc5_ = _loc5_ + 1;
                  continue;
               case 4:
                  _loc5_ = _loc5_ + 1;
                  continue;
               case 2:
                  _loc5_ = _loc5_ + 4;
                  continue;
               case 3:
                  _loc5_ = _loc5_ + 4;
                  continue;
               case 5:
                  _loc5_ = _loc5_ + _loc4_[1].length;
                  continue;
               case 6:
                  _loc5_ = _loc5_ + 2;
                  continue;
               case 7:
                  _loc5_ = _loc5_ + (_loc4_[1].length + 2);
                  continue;
               default:
                  continue;
            }
         }
         send([[1,-2],[2,_loc5_],[1,param2]].concat(param1));
      }
      
      public function writeBoolean(param1:Boolean) : void
      {
         o14361.writeBoolean(param1);
      }
      
      public function writeByte(param1:int) : void
      {
         o14361.writeByte(param1);
      }
      
      public function writeBytes(param1:ByteArray) : void
      {
         o14361.writeBytes(param1);
      }
      
      public function writeShort(param1:int) : void
      {
         o14361.writeShort(param1);
      }
      
      public function writeInt(param1:int) : void
      {
         o14361.writeInt(param1);
      }
      
      public function writeFloat(param1:Number) : void
      {
         o14361.writeFloat(param1);
      }
      
      public function flush() : void
      {
         if(o8411 == 0)
         {
            o8411 = setTimeout(o801,10);
         }
      }
      
      public function o801() : void
      {
         if(o14361.connected)
         {
            o14361.flush();
         }
         o8411 = 0;
      }
      
      private function o17067(param1:ProgressEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         if(o14361.bytesAvailable <= 0)
         {
            return;
         }
         if(o15846 == -1)
         {
            o15846 = o14361.readByte();
            o13998.clear();
         }
         var _loc3_:o18475 = o4050[o15846];
         if(bytesNeeded == -1)
         {
            if(_loc3_.bytesNeeded == -1)
            {
               if(o14361.bytesAvailable < 4)
               {
                  return;
               }
               bytesNeeded = o14361.readInt();
            }
            else
            {
               bytesNeeded = _loc3_.bytesNeeded;
            }
         }
         if(o14361.bytesAvailable > 0)
         {
            _loc4_ = Math.min(bytesNeeded - o13998.length,o14361.bytesAvailable);
            _loc2_ = 0;
            while(_loc2_ < _loc4_)
            {
               o13998.writeByte(o14361.readByte());
               _loc2_++;
            }
         }
         if(bytesNeeded == o13998.length)
         {
            o15846 = -1;
            bytesNeeded = -1;
            o13998.position = 0;
            _loc3_.call(o13998);
         }
         if(!o14361.connected)
         {
            return;
         }
         if(o14361.bytesAvailable > 0)
         {
            o17067(param1);
         }
      }
   }
}
