package
{
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class o14754 extends o8023
   {
      
      private static var o13261:Class;
       
      
      public var o17388:Array;
      
      public var stage:Stage = null;
      
      public var o2996:o1600 = null;
      
      public var o13427:o1578 = null;
      
      public var o14443:o7276 = null;
      
      public var o19417:Scene = null;
      
      public var o11954:o5448 = null;
      
      public var o4100:o14727 = null;
      
      public var o18929:o1885;
      
      public var loader:o3135 = null;
      
      public var o1234:o7118 = null;
      
      public var o11676:o16864 = null;
      
      public var o9869:o255 = null;
      
      public var o20600:o11838 = null;
      
      public var o2535:o20139 = null;
      
      public var o20828:o11951 = null;
      
      public var random:o9607;
      
      public var o5830:o17849;
      
      public var o7689:o17849;
      
      public var o16619:o17849;
      
      public var o11461:o17849;
      
      public var o13413:o2784 = null;
      
      public var o9122:Dictionary;
      
      public var o17130:Vector.<String>;
      
      private var o14885:Dictionary;
      
      private var o16102:Vector.<Class>;
      
      private var o3154:Dictionary;
      
      public var debugView:Sprite;
      
      public var o6895:o6051 = null;
      
      public var o1184:o19322 = null;
      
      public var o9511:o7944 = null;
      
      public var o9986:o3986 = null;
      
      public var o15916:o6883 = null;
      
      public var o6169:o3461 = null;
      
      public var o4812:o10654 = null;
      
      public var o8756:o7304 = null;
      
      public var o4235:o3088 = null;
      
      public var o20488:o10873;
      
      public var o5518:o159;
      
      public var o16098:o12329;
      
      public var profileData:o14200;
      
      public var o9589:o18976;
      
      public var o6913:int = 60;
      
      private var o5394:Dictionary;
      
      public var o20291:Dictionary;
      
      public var o4958:o9373;
      
      public var o8361:o13309;
      
      public var o970:o14987;
      
      public var o7484:String = null;
      
      public var o252:String;
      
      public var o9745:Boolean = false;
      
      public var o16905:String = null;
      
      public var o19838:Dictionary;
      
      public var o5893:Dictionary;
      
      public var o15599:o8909 = null;
      
      public var o476:o16062 = null;
      
      private var o4313:Date = null;
      
      private var o1475:Timer;
      
      private var o1970:Boolean = true;
      
      private var o15017:Boolean = true;
      
      public function o14754()
      {
         o17388 = ["assets.effects.explosion1"];
         o18929 = new o1885();
         random = new o9607();
         o5830 = new o17849();
         o7689 = new o17849();
         o16619 = new o17849();
         o11461 = new o17849();
         o9122 = new Dictionary();
         o14885 = new Dictionary();
         debugView = new Sprite();
         o20488 = new o10873();
         o5518 = new o159();
         o16098 = new o12329();
         o5394 = new Dictionary();
         o20291 = new Dictionary();
         o4958 = new o9373();
         o8361 = new o13309();
         o970 = new o14987();
         o252 = "D:/Work/sas4/trunk/source/project/flash-builder-4-7/sas4-scripts/bin-debug/";
         o19838 = new Dictionary();
         o5893 = new Dictionary();
         super();
      }
      
      public function get o15020() : Date
      {
         return o4313;
      }
      
      public function set o15020(param1:Date) : void
      {
         var _loc2_:Boolean = o4313 == null && param1 != null;
         o4313 = param1;
         if(_loc2_)
         {
            o14200.o19505.o5292.o6666.o982(o4313.time);
         }
      }
      
      private function o8598(param1:TimerEvent) : void
      {
         if(o4313 != null)
         {
            o4313.time = o4313.time + 1000;
         }
      }
      
      public function get o6458() : Boolean
      {
         return o1970;
      }
      
      public function set o6458(param1:Boolean) : void
      {
         if(o1970 != param1)
         {
            o1970 = param1;
            o18442.o13273 = param1;
            o15777(o14795.o6422);
         }
      }
      
      public function get o9690() : Boolean
      {
         return o15017;
      }
      
      public function set o9690(param1:Boolean) : void
      {
         if(o15017 != param1)
         {
            o15017 = param1;
            o18442.o9644 = param1;
            o15777(o14795.o6422);
         }
      }
      
      public function get o6055() : o14094
      {
         return profileData.o5292.o6055;
      }
      
      public function get o12094() : o6701
      {
         return profileData.o12094;
      }
      
      public function initialise(param1:Stage, param2:Scene) : void
      {
         stage = param1;
         o19417 = param2;
         o1475 = new Timer(1000);
         o1475.addEventListener("timer",o8598);
         o1475.start();
         var o10803:o6708 = new o6708();
         o4400.initialise(stage);
         this.o19417 = o19417;
         this.stage = stage;
         o18929.width = stage.stageWidth;
         o18929.width = stage.stageHeight;
         o19417.o14352(o18929);
         o19417.o16280(this,o9363.o12455,o5986);
         loader = Mem.create(this,o1357);
         var o12864:Sprite = new Sprite();
         o12864.x = 5;
         o12864.y = 5;
         stage.addChild(o12864);
         var o13778:o16124 = null;
         o13778 = new o16124();
         o13778.data = new ByteArray();
         var o19076:String = o4519.stage.loaderInfo.url;
         o13778.defer(function(param1:ByteArray):void
         {
            data = param1;
            o7484 = data.readUTFBytes(data.length) + "/";
            if(o4519.o17061)
            {
               o7484 = o2555.o17203("assets.nkstatic.com/Games/gameswfs/sas4/download/");
            }
            else
            {
               o7484 = o2555.o17203("assets.nkstatic.com/Games/gameswfs/sas4/download/");
            }
            o13413 = new o2784(loader,o7484 + "val/");
            o252 = o7484 + "scripts/";
            var o13608:o16124 = null;
            var o9074:o16124 = null;
            var o4024:o16124 = null;
            var o308:o16124 = null;
            var o18969:o16124 = null;
            var o3731:o16124 = null;
            if(o16905 != null)
            {
               o3731 = loader.o17485(o7484 + "localization/" + o16905 + ".csv?" + int(Math.random() * 10000));
            }
            else
            {
               o3731 = new o16124();
               o3731.data = new ByteArray();
            }
            o13608 = o970.o7982(0,o16619);
            o9074 = o970.o7982(1,o5830);
            o4024 = o970.o7982(2,o7689);
            o308 = o970.o7982(3,o11461);
            o18969 = o970.o17485(5);
            var o270:o16124 = o4392();
            var o8802:o16124 = o5773.getServerTime();
            o14885 = new Dictionary();
            o15714.o18684([o13608,o9074,o4024,o308,o18969,o3731,o270,o8802],function(param1:Dictionary, param2:Dictionary, param3:Dictionary, param4:Dictionary, param5:ByteArray, param6:ByteArray, param7:o16062, param8:Date):void
            {
               var _loc12_:int = 0;
               var _loc15_:int = 0;
               o476 = param7;
               o19838 = new Dictionary();
               o5893 = new Dictionary();
               o970.o6540(param6,o19838,o5893);
               o20455(o19838,o16619.o9620,"");
               this.o9122 = new Dictionary();
               while(param5.bytesAvailable > 0)
               {
                  _loc12_ = param5.readShort();
                  _loc15_ = param5.readShort();
                  o9122[_loc15_] = _loc12_;
               }
               var _loc17_:int = 0;
               var _loc16_:* = param2;
               for(var _loc11_ in param2)
               {
                  o14885[param2[_loc11_]] = o7484 + "libs/" + param3[o9122[_loc11_]];
               }
               o4100 = o20202.o15355();
               o4100.o18219(loader,o14885);
               o20828 = new o11951(o19417,o4100);
               o11954 = o11617.o80(o19417,o20828,stage);
               o2535 = new o5165();
               o20600 = new o11838(o2535);
               o9869 = Mem.create(this,o255,[o2535]);
               o1234 = Mem.create(this,o20211,[loader,o14885]);
               o11676 = new o16864(o1234,o20828);
               o6169 = new o3461(o1234);
               o4812 = new o10654(o6169);
               o8756 = new o7304(o6169);
               o4235 = new o3088();
               o16102 = Vector.<Class>([]);
               o17130 = new Vector.<String>();
               var _loc19_:int = 0;
               var _loc18_:* = param4;
               for each(var _loc13_ in param4)
               {
                  if(!(_loc13_ == "scripts.ScriptParamaterOptionality" || _loc13_ == "scripts.ScriptParamaterTypes" || _loc13_ == "com.ninjakiwi.sas4.scripts.ScriptParamaterOptionality" || _loc13_ == "com.ninjakiwi.sas4.scripts.ScriptParamaterTypes" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.EnemySpawn" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.AvatarSpawn" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.PhysicsGraph" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.AIPathGraph" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.Treasure" || _loc13_ == "com.ninjakiwi.sas4.scripts.editor.Door"))
                  {
                     o17130.push(_loc13_);
                  }
               }
               var _loc10_:Array = [];
               o3154 = new Dictionary();
               var _loc21_:int = 0;
               var _loc20_:* = param4;
               for(o3154[param4[_loc14_]] in param4)
               {
               }
               o1184 = new o19322();
               o9511 = new o7944();
               o9986 = new o3986();
               o15916 = new o6883();
               o2996 = new o1600(o11954,o9869,o11676,o16102);
               o13427 = new o1578();
               var _loc9_:o1292 = new o1292(o1234);
               o15777(o14795.o9745);
               o9745 = true;
            });
         });
         o15711.initialise();
         var _loc5_:int = 0;
         var _loc4_:* = o15711.o2108;
         for(o12072 in o15711.o2108)
         {
            if(o20291[o12072] == null)
            {
               var o9412:Class = o15711.o2108[o12072];
               if(o9412 != null)
               {
                  o20291[o12072] = o15711.o2108[o12072].o13465();
               }
            }
         }
         stage.addEventListener("keyDown",function(param1:KeyboardEvent):void
         {
         });
      }
      
      public function o8560(param1:Object) : o16062
      {
         var _loc4_:* = null;
         var _loc3_:Object = param1["settings"]["Settings"];
         var _loc2_:o16062 = new o16062();
         if(_loc3_["MobilePromo"] != null)
         {
            _loc4_ = _loc3_["MobilePromo"];
            _loc2_.o15026 = new o16373();
            _loc2_.o15026.enabled = _loc4_["enabled"];
            _loc2_.o15026.o16144 = _loc4_["imgUrl"];
            _loc2_.o15026.o6209 = _loc4_["linkUrl"];
            _loc2_.o15026.o606 = o2555.o17203("assets.nkstatic.com/Games/gameswfs/sas4/download/banners/SAS4-LightBox-Ad-InGame.jpg");
            _loc2_.o15026.o20905 = "https://www.apple.com/nz/itunes/";
            _loc2_.o15026.o14350 = "http://www.android.com/";
            _loc2_.o15026.o606 = _loc4_["largeImgUrl"];
            _loc2_.o15026.o20905 = _loc4_["appleUrl"];
            _loc2_.o15026.o14350 = _loc4_["andriodUrl"];
            if(_loc2_.o15026.enabled && (_loc2_.o15026.o16144 == null || _loc2_.o15026.o606 == null))
            {
               throw new Error("Promo error");
            }
         }
         if(_loc3_["Contracts"] != null)
         {
            _loc2_.o15128 = new o5307();
            _loc2_.o15128.o18048(_loc3_["Contracts"]);
         }
         if(_loc3_ != null)
         {
            _loc2_.o9392 = new o1611();
            _loc2_.o9392.o18048(_loc3_);
         }
         if(_loc3_["BaseImgUrl"] != null)
         {
            _loc2_.o5215 = new o5263();
            _loc2_.o5215.o18048(_loc3_["BaseImgUrl"]);
         }
         if(param1["settings"]["events"] != null)
         {
            _loc2_.o13988 = new Vector.<o11614>();
            o15599 = new o8909(_loc2_);
            o15599.o7910(_loc2_.o13988,param1["settings"]["Event Settings"]["[Rewards]"]);
            o15599.o17203(param1["settings"]["events"],param1["settings"]["Event Settings"]["[Dynamic Events]"]);
         }
         if(_loc3_["DailyMissionBonus"] != null)
         {
            _loc2_.o9095 = new o4233();
            _loc2_.o9095.o18048(_loc3_["DailyMissionBonus"]);
         }
         if(_loc3_["ShardSettings"] != null)
         {
            _loc2_.o15115 = new o2524();
            _loc2_.o15115.o18048(_loc3_["ShardSettings"]);
         }
         return _loc2_;
      }
      
      public function o4392() : o16124
      {
         var o9336:o16124 = new o16124();
         var o17327:URLLoader = new URLLoader();
         var o12051:Function = function(param1:Event):void
         {
            var _loc5_:ByteArray = o17327.data;
            var _loc2_:String = o14634.o6318(_loc5_);
            var _loc4_:Object = JSON.parse(_loc2_);
            var _loc3_:Object = JSON.parse(_loc4_["data"]);
            o9336.data = o8560(_loc3_);
         };
         o17327.dataFormat = "binary";
         o17327.addEventListener("complete",o12051);
         var o15386:URLRequest = null;
         if(true || "" == "production")
         {
            o15386 = new URLRequest(o2555.o17203("static-api.ninjakiwi.com/nkapi/skusettings/9a0a8254da299947492b4e1eb15291f1.json"));
         }
         else
         {
            o15386 = new URLRequest(o2555.o17203("static-api-staging.ninjakiwi.com/nkapi/skusettings/032751109890dd014836faed471950d3.json?v=") + new Date().toString());
         }
         o17327.load(o15386);
         return o9336;
      }
      
      public function clear() : void
      {
         o2996.clear();
         o13427.clear();
         o9869.clear();
         o11954.clear();
         o20828.clear();
         o4100.o14068();
         (o19417 as o8537).clear();
         o2535.clear();
         o20600.clear();
         o1051.o10301();
      }
      
      public function o4550(param1:Number) : Number
      {
         return param1 * 50;
      }
      
      public function o19711(param1:Number) : Number
      {
         return param1 * 0.02;
      }
      
      private function o9371(param1:Dictionary, param2:Vector.<Class>, param3:String, param4:int) : o16124
      {
         o14885 = param1;
         o16102 = param2;
         o5983 = param3;
         o1961 = param4;
         var promise:o16124 = new o16124();
         var o14285:Class = o15711.o9268(o5983);
         o20291[o5983] = o14285.o13465();
         o16102.push(o20291[o5983]);
         o5394[o20291[o5983]] = o1961;
         promise.data = o14285;
         if(o14285.hasOwnProperty("getGlobalCacheAssets"))
         {
            o17388 = o17388.concat(o14285.getGlobalCacheAssets());
         }
         return promise;
      }
      
      public function o19921(param1:String) : o16124
      {
         return o9371(this.o14885,this.o16102,param1,this.o3154[param1]);
      }
      
      private function o5986(param1:o13144) : void
      {
      }
      
      public function o20455(param1:Dictionary, param2:Dictionary, param3:String) : void
      {
         var _loc4_:* = null;
         if(param3.length != 0)
         {
            param3 = param3 + ".";
         }
         var _loc7_:int = 0;
         var _loc6_:* = param2;
         for(var _loc5_ in param2)
         {
            _loc4_ = param1[param3 + _loc5_];
            if(_loc4_ != null)
            {
               param2[_loc5_] = _loc4_;
            }
         }
      }
      
      public function o17066() : void
      {
         profileData.gateway.getServerTime().then(o6476,o12732);
      }
      
      private function o6476(param1:Number) : void
      {
         o4519.o8116.o15020 = new Date(param1 * 1000);
      }
      
      private function o12732(param1:Object) : void
      {
      }
   }
}

import flash.display.DisplayObjectContainer;
import flash.display.Sprite;
import flash.events.Event;

class o18283 extends Sprite
{
    
   
   private var o20522:Number = 0;
   
   function o18283(param1:String)
   {
      url = param1;
      super();
      var o19505:o18283 = this;
      o4519.o8116.loader.o19926(null,o718.o5422,function(param1:o15735):void
      {
         var _loc2_:* = null;
         if(param1.url == url)
         {
            removeEventListener("enterFrame",draw);
            if(parent != null)
            {
               _loc2_ = parent;
               parent.removeChild(o19505);
               o3901(_loc2_);
            }
         }
      });
      var o2154:o12600 = new o8023();
      o4519.o8116.loader.o16280(o2154,o718.o20522,function(param1:o5279):void
      {
         var _loc2_:* = null;
         if(param1.url == url)
         {
            o20522 = param1.o20522;
            if(o20522 >= 1 && parent != null)
            {
               _loc2_ = parent;
               parent.removeChild(o19505);
               o3901(_loc2_);
            }
         }
      });
      addEventListener("enterFrame",draw);
   }
   
   public function o3901(param1:DisplayObjectContainer) : void
   {
      var _loc2_:int = 0;
      _loc2_ = 0;
      while(_loc2_ < param1.numChildren)
      {
         param1.getChildAt(_loc2_).y = _loc2_ * 33;
         _loc2_++;
      }
   }
   
   public function draw(param1:Event) : void
   {
      graphics.clear();
      graphics.beginFill(16777215,1);
      graphics.drawRect(0,0,200,30);
      graphics.endFill();
      graphics.beginFill(0,1);
      graphics.drawRect(3,3,194 * o20522,24);
      graphics.endFill();
   }
}
