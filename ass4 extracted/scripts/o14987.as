package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class o14987
   {
       
      
      private var o8491:Class;
      
      private var o9253:Class;
      
      private var o16522:Class;
      
      private var o17709:Class;
      
      private var o3258:Class;
      
      private var o17076:Class;
      
      private var o18536:Class;
      
      private var o16418:Class;
      
      private var o9752:Class;
      
      private var o11148:Class;
      
      private var o17864:Class;
      
      private var o4373:Class;
      
      private var o2682:Class;
      
      private var o13719:Class;
      
      private var o5430:Class;
      
      private var o12833:Class;
      
      private var o3539:Class;
      
      private var o9847:String;
      
      public function o14987()
      {
         o8491 = §01_bin$c6b860faf85dc2832e4af3712a63e2e01697488336§;
         o9253 = §02_bin$7bcda278ad4b5ad9114b5e7871c061821698690135§;
         o16522 = §03_bin$c97b5c90641b78f31fb07bf75def47421707732182§;
         o17709 = §04_bin$522ee4140504b8021316048ad04b4cde1708901205§;
         o3258 = §05_bin$086785cbe384114d8380940cbf2df3b31708473300§;
         o17076 = §06_bin$06881a42d3aa053e2221a2dc83f660601709642347§;
         o18536 = §07_bin$f49ea593ca4c2f8d32aa26446825cc821710295786§;
         o16418 = §08_bin$a3417cc117d574837d393523c951704b1703108969§;
         o9752 = §09_bin$5bbd35f9426daee25f0730a250e925561704810984§;
         o11148 = §10_bin$08657a6cb6e5d187b672a81f88400ad11799839474§;
         o17864 = §11_bin$4abdb51203f1a312d03c848f1b89317d1800451441§;
         o4373 = §12_bin$cb4cb5b34225f7386c55b0ea862182de1801629168§;
         o2682 = §13_bin$e8afb4c992fd930db07a1141a5da84e61803322487§;
         o13719 = §14_bin$f6d7228e03172019cced7655652757ab1796144374§;
         o5430 = §15_bin$b31080cb983fe5e3544cb302ebbd11181796789109§;
         o12833 = §16_bin$e78e772ad5ecc9b46e6198ccfcaac3441797966836§;
         o3539 = §17_bin$e09ddb89a8f2167cec776df18c781b941797530507§;
         o9847 = "vokU&@ljdlvL(@<hflgfpbLWQIWQHY";
         super();
      }
      
      private function o5038(param1:ByteArray) : ByteArray
      {
         var _loc6_:* = param1;
         _loc6_.inflate();
         var _loc7_:String = _loc6_.readUTFBytes(_loc6_.length);
         var _loc10_:int = 32;
         var _loc9_:String = _loc7_.substr(0,_loc10_);
         var _loc3_:String = _loc7_.substr(_loc10_);
         var _loc2_:ByteArray = o16112.o19437(_loc3_);
         var _loc8_:String = _loc2_.readUTFBytes(_loc2_.length);
         _loc2_.position = 0;
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeMultiByte(_loc3_,"iso-8859-1");
         _loc5_.writeMultiByte(o9847,"iso-8859-1");
         var _loc4_:String = o17876.o18484(_loc5_);
         if(_loc4_ != _loc9_)
         {
            o4519.o8116.profileData.o2719.o8337(o10509.o8099,"h",false);
            return null;
         }
         return _loc2_;
      }
      
      public function o17485(param1:int) : o16124
      {
         var _loc3_:o16124 = new o16124();
         var _loc2_:ByteArray = null;
         switch(int(param1) - 5)
         {
            case 0:
               _loc2_ = new o11148() as ByteArray;
               break;
            default:
               throw new Error("getData not setup");
            case 2:
               _loc2_ = new o17864() as ByteArray;
               break;
            case 3:
               _loc2_ = new o4373() as ByteArray;
               break;
            case 4:
            default:
            default:
            default:
               _loc2_ = new o2682() as ByteArray;
               break;
            case 8:
               _loc2_ = new o13719() as ByteArray;
               break;
            case 9:
               _loc2_ = new o5430() as ByteArray;
               break;
            case 10:
               _loc2_ = new o12833() as ByteArray;
               break;
            case 11:
               _loc2_ = new o3539() as ByteArray;
         }
         _loc3_.data = o5038(_loc2_);
         return _loc3_;
      }
      
      public function o7982(param1:int, param2:o17849) : o16124
      {
         var _loc4_:o16124 = new o16124();
         var _loc3_:ByteArray = null;
         switch(int(param1))
         {
            case 0:
               _loc3_ = new o8491() as ByteArray;
               break;
            case 1:
               _loc3_ = new o9253() as ByteArray;
               break;
            case 2:
               _loc3_ = new o16522() as ByteArray;
               break;
            case 3:
               _loc3_ = new o17709() as ByteArray;
         }
         _loc3_ = o5038(_loc3_);
         param2.o5466(param1 == 3,_loc3_);
         _loc4_.data = param2.o9620;
         return _loc4_;
      }
      
      public function o13634(param1:o9373) : o16124
      {
         var _loc3_:o16124 = new o16124();
         var _loc2_:ByteArray = new o3258() as ByteArray;
         _loc2_ = o5038(_loc2_);
         param1.o5466(_loc2_);
         _loc3_.data = param1.o9620;
         return _loc3_;
      }
      
      private function o615(param1:String) : String
      {
         param1 = param1.substr(param1.indexOf("\"") + 1);
         param1 = param1.substr(0,param1.lastIndexOf("\""));
         var _loc2_:String = "\\";
         var _loc3_:String = "\"";
         param1 = param1.split(_loc2_ + _loc3_).join(_loc3_);
         param1 = param1.split(_loc3_ + _loc3_).join(_loc3_);
         return param1;
      }
      
      public function o12798(param1:int) : o16124
      {
         var _loc9_:int = 0;
         var _loc12_:* = null;
         var _loc5_:* = null;
         var _loc10_:o16124 = new o16124();
         var _loc8_:ByteArray = null;
         _loc8_ = new o3258() as ByteArray;
         var _loc11_:o2693 = new o2693();
         switch(int(param1) - 6)
         {
            case 0:
               _loc8_ = new o17076() as ByteArray;
               break;
            default:
            default:
            default:
               throw new Error("Csv not setup");
            case 4:
               _loc8_ = new o18536() as ByteArray;
               break;
            case 5:
               _loc8_ = new o16418() as ByteArray;
               break;
            case 6:
               _loc8_ = new o9752() as ByteArray;
         }
         _loc8_ = o5038(_loc8_);
         var _loc4_:Dictionary = Mem.create(this,Dictionary) as Dictionary;
         var _loc7_:String = _loc8_.readUTFBytes(_loc8_.length);
         _loc7_ = _loc7_.split("\r").join("");
         var _loc3_:Array = _loc7_.split("\n");
         var _loc14_:int = 0;
         var _loc13_:* = _loc3_;
         for each(var _loc6_ in _loc3_)
         {
            _loc9_ = _loc6_.indexOf(",");
            _loc12_ = _loc6_.substr(0,_loc9_);
            _loc12_ = _loc12_.split("\"").join("");
            _loc5_ = _loc6_.substr(_loc9_ + 1);
            _loc4_[_loc12_] = o615(_loc5_);
         }
         var _loc2_:o2693 = Mem.create(this,o2693) as o2693;
         _loc2_.initialise(_loc4_);
         _loc10_.data = _loc2_;
         return _loc10_;
      }
      
      public function o6540(param1:ByteArray, param2:Dictionary, param3:Dictionary) : void
      {
         var _loc10_:* = null;
         var _loc6_:int = 0;
         var _loc11_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc9_:String = param1.readUTFBytes(param1.length);
         _loc9_ = _loc9_.split("\r").join("");
         var _loc7_:Array = _loc9_.split("\n");
         var _loc13_:int = 0;
         var _loc12_:* = _loc7_;
         for each(var _loc8_ in _loc7_)
         {
            if(_loc8_.length != 0)
            {
               _loc10_ = _loc8_.split(",");
               _loc6_ = parseInt(_loc10_[0]);
               _loc11_ = o615(_loc10_[1]);
               _loc5_ = _loc8_.indexOf(",");
               _loc5_ = _loc8_.indexOf(",",_loc5_ + 1);
               _loc4_ = _loc8_.substr(_loc5_ + 1);
               _loc4_ = o615(_loc4_);
               if(_loc6_ == 0)
               {
                  param3[_loc11_] = _loc4_;
               }
               else
               {
                  param2[_loc6_] = _loc4_;
               }
            }
         }
      }
   }
}
