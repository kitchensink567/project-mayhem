package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o11112 extends o16681
   {
       
      
      private var o16993:String;
      
      private var o9167:String;
      
      private var o4854:String;
      
      private var o18719:String;
      
      private var htmlText:String;
      
      protected var o8627:o3701;
      
      public var o3075:Boolean = true;
      
      public function o11112()
      {
         o16993 = "";
         o9167 = "";
         o4854 = "";
         o18719 = "";
         htmlText = "";
         super();
      }
      
      public function o16384(param1:MovieClip, param2:int) : void
      {
         super.init(param1);
         o8627 = new o3701();
         o8627.o16384(param1.getChildByName("statsRollover") as MovieClip,param1);
         this.o5452(o8627);
         o8627.visible = false;
         if(true && o8627 == null)
         {
            throw new Error("statsRolloverControl can\'t be null");
         }
      }
      
      public function clear() : void
      {
         o16993 = "";
         o9167 = "";
         o4854 = "";
         o18719 = "";
         htmlText = "";
         o8627.clear();
         o7002();
      }
      
      private function o7002() : void
      {
         var _loc4_:TextField = asset.getChildByName("lblStatNames") as TextField;
         if(_loc4_ == null)
         {
            return;
         }
         var _loc2_:TextField = asset.getChildByName("lblStatValues") as TextField;
         var _loc3_:TextField = asset.getChildByName("lblStatBonus0") as TextField;
         var _loc1_:TextField = asset.getChildByName("lblStatBonus1") as TextField;
         _loc4_.text = o16993;
         _loc2_.htmlText = htmlText;
         _loc3_.text = "";
         _loc2_.mouseEnabled = false;
         _loc3_.mouseEnabled = false;
      }
      
      public function o1943(param1:String, param2:String, param3:String, param4:String) : void
      {
         o8627.o1943(param1,param2);
         var _loc5_:String = "\n";
         o16993 = o16993 + (param1 + _loc5_);
         htmlText = htmlText + ("<font color=\'#FFFFFF\'>" + param2 + "</font><font color=\'#FF9900\'> " + param3 + "</font><br>");
         asset.stop();
         this.o7002();
      }
      
      override public function o13640() : void
      {
         o16993 = null;
         o9167 = null;
         o4854 = null;
         o18719 = null;
         htmlText = null;
         o8627 = null;
         super.o13640();
      }
      
      private function o16013(param1:o125, param2:o9213, param3:String) : void
      {
         if(o3075 == false)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         if(param1.o4585(param2.o17193))
         {
            return;
         }
         o8627.o18565(param1.o18239(param2.o17193),param3);
      }
      
      private function o3251(param1:o125, param2:o14200, param3:o14018, param4:o14096, param5:o4117, param6:String = null) : void
      {
         var _loc15_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc14_:* = null;
         var _loc12_:* = null;
         var _loc8_:Number = NaN;
         var _loc13_:int = 0;
         var _loc16_:* = null;
         if(param3.o18172 == 1)
         {
            param3 = param3;
         }
         var _loc7_:* = param6;
         if(param6 == null)
         {
            param6 = param3.name;
            _loc7_ = param3.o3279;
         }
         if(param3.o18172 == 7)
         {
            param3 = param3;
         }
         var _loc19_:* = Boolean(param3.o18172 == 10 || param3.o18172 == 22);
         if(param3.o18172 == 10)
         {
            _loc19_ = _loc19_;
         }
         var _loc17_:* = Number(param1.o5250());
         var _loc11_:Boolean = false;
         if(param3.o18172 == 9)
         {
            _loc15_ = param1.o8872;
            _loc18_ = -_loc15_ * (1 - 0.2);
            if(_loc17_ < _loc18_)
            {
               _loc17_ = _loc18_;
               _loc11_ = true;
            }
         }
         if(param3.o18172 == 1)
         {
            _loc17_ = _loc17_;
         }
         var _loc10_:String = !!param1.o4585(_loc17_)?"":param1.o18239(_loc17_);
         if(_loc11_)
         {
            _loc10_ = _loc10_ + " (cap)";
         }
         if(o3075 == false)
         {
            _loc10_ = "";
         }
         var _loc9_:int = 0;
         if(param1.o7246 == 7)
         {
            _loc9_ = 0;
            while(_loc9_ < param1.o4572.length)
            {
               if(param1.o4585(param1.o4572[_loc9_]) == false)
               {
                  _loc14_ = param1.o19932[_loc9_];
                  _loc12_ = param1.o18239(param1.o4572[_loc9_]);
                  if(!(param1.o7246 == 7 && _loc14_ == "Flame Thrower Mastery"))
                  {
                     if(param1.o7246 == 7 && _loc14_ == "Flame Thrower Mastery")
                     {
                        _loc8_ = param1.o4572[_loc9_];
                        _loc17_ = Number(_loc17_ - _loc8_);
                        _loc10_ = !!param1.o4585(_loc17_)?"":param1.o18239(_loc17_);
                        break;
                     }
                  }
               }
               _loc9_++;
            }
         }
         this.o1943(_loc7_ + param3.o7619(),param1.o18406(),_loc10_,"IGNORE");
         if(o3075 == false)
         {
            return;
         }
         if(param1.o4585(param1.o5502) == false)
         {
            o8627.o17747(param1.o18239(param1.o5502));
         }
         if(param1.o4585(param1.o3353) == false)
         {
            o8627.o9800(param1.o18239(param1.o3353),param6,param3.o19994(param4));
         }
         _loc13_ = 0;
         while(_loc13_ < param1.o7607.length)
         {
            if(param1.o4585(param1.o7607[_loc13_]) == false)
            {
               o8627.o19806(param1.o18239(param1.o7607[_loc13_]),param1.o20004[_loc13_]);
            }
            _loc13_++;
         }
         _loc9_ = 0;
         while(_loc9_ < param1.o4572.length)
         {
            if(param1.o4585(param1.o4572[_loc9_]) == false)
            {
               _loc14_ = param1.o19932[_loc9_];
               _loc12_ = param1.o18239(param1.o4572[_loc9_]);
               if(param3.o18172 == 7 && _loc14_ == "Flame Thrower Mastery")
               {
                  _loc12_ = _loc12_.replace("hp/sec","seconds");
               }
               o8627.o11757(_loc12_,_loc14_);
            }
            _loc9_++;
         }
         o16013(param1,param1.o7158[0],"Helmet");
         o16013(param1,param1.o7158[1],"Vest");
         o16013(param1,param1.o7158[3],"Gloves");
         o16013(param1,param1.o7158[2],"Pants");
         o16013(param1,param1.o7158[4],"Boots");
      }
      
      public function o13257(param1:o18880, param2:o14096, param3:o4117) : void
      {
         var _loc21_:o14200 = o14200.o19505;
         var _loc4_:o6679 = _loc21_.o7923.o17638.o8567(param2);
         var _loc6_:int = param2 == null?1:param2.o457.o3;
         var _loc20_:String = _loc4_.o3440.name;
         var _loc19_:o14018 = _loc21_.o5292.o5812(1);
         var _loc17_:o14018 = _loc21_.o5292.o5812(8);
         var _loc11_:o14018 = _loc21_.o5292.o5812(10);
         var _loc22_:o14018 = _loc21_.o5292.o5812(22);
         var _loc5_:Number = _loc11_.o10358(param2);
         var _loc7_:o6421 = new o6421();
         var _loc16_:Number = _loc7_.o14472(param3,param2);
         var _loc15_:o125 = _loc7_.o12125(param3,1,param2);
         var _loc12_:o6421 = new o6421();
         var _loc23_:o125 = _loc7_.o12125(param3,8,param2);
         var _loc10_:o125 = _loc7_.o12125(param3,6,param2);
         var _loc18_:o125 = _loc7_.o12125(param3,10,param2);
         var _loc8_:String = _loc11_.o9277(param2,-_loc18_.o1938(),false,true,true);
         var _loc9_:String = _loc11_.o9277(param2,-_loc18_.o5250(),true,true,false);
         var _loc13_:Vector.<o1253> = _loc21_.o7923.o420;
         var _loc14_:String = param2.o3227() + " " + o14096.o10863(param2.o2752.o6365);
         param1.o17796(_loc15_.o18406(),_loc15_.o18239(_loc15_.o5250()),_loc10_.o18406(),_loc10_.o18239(_loc10_.o5250()),_loc8_,_loc9_,_loc23_.o18406(),_loc23_.o18239(_loc23_.o5250()),_loc6_,param2.o3227(),o14096.o10863(param2.o2752.o6365),_loc14_);
      }
      
      public function o5127(param1:o14096, param2:o4117) : void
      {
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc4_:* = null;
         var _loc11_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc13_:* = null;
         var _loc9_:o14200 = o4519.o8116.profileData;
         var _loc12_:o6421 = new o6421();
         this.clear();
         var _loc15_:int = 0;
         var _loc14_:* = _loc9_.o5292.o15148;
         for each(var _loc8_ in _loc9_.o5292.o15148)
         {
            _loc6_ = _loc12_.o12125(param2,_loc8_.o18172,param1);
            _loc7_ = _loc6_.o8872;
            _loc10_ = _loc6_.o5250();
            if(_loc8_.o18172 == 10)
            {
               _loc4_ = _loc12_.o12125(param2,22,param1);
               _loc11_ = _loc4_.o8872;
               _loc3_ = _loc4_.o5250();
               if(_loc4_.o4585(_loc11_) == false || _loc4_.o4585(_loc3_) == false)
               {
                  _loc13_ = _loc9_.o5292.o5812(22);
               }
               if(_loc6_.o4585(_loc7_) == false || _loc6_.o4585(_loc10_) == false)
               {
                  o3251(_loc6_,_loc9_,_loc8_,param1,param2,"Movement penalty");
               }
            }
            else if(!(_loc6_.o4585(_loc7_) && _loc6_.o4585(_loc10_) && (_loc8_.o18172 == 7 || _loc8_.o18172 == 4 || _loc8_.o18172 == 3 || _loc8_.o18172 == 11)))
            {
               o3251(_loc6_,_loc9_,_loc8_,param1,param2);
            }
         }
         var _loc5_:Boolean = _loc9_.o5292.o20827.o2820(5,param2.o16992,param1.o2752.o6365);
         if(_loc5_)
         {
            this.o1943("Automatic","Full Auto","","");
         }
         else
         {
            this.o1943("Automatic",param1.o3227(),"","");
         }
         this.o1943("Category",o14096.o10863(param1.o2752.o6365),"","");
         this.o1943("Damage Type",o14096.o3195(param1.o457.o3),"","");
      }
      
      public function o19246(param1:o11651, param2:o1253, param3:o4117) : void
      {
         var _loc8_:o6747 = new o6747();
         var _loc12_:o9213 = _loc8_.o20552(param2.o10239.o20559,param3,13,param2);
         var _loc4_:o9213 = _loc8_.o20552(param2.o10239.o20559,param3,14,param2);
         var _loc6_:o9213 = _loc8_.o20552(param2.o10239.o20559,param3,15,param2);
         var _loc9_:o9213 = _loc8_.o20552(param2.o10239.o20559,param3,22,param2);
         var _loc11_:o9213 = _loc8_.o20552(param2.o10239.o20559,param3,10,param2);
         var _loc13_:Number = _loc9_.o8872;
         var _loc7_:Number = _loc11_.o1938();
         var _loc10_:Number = _loc9_.o5250();
         var _loc5_:Number = _loc11_.o5250();
         param1.o611(_loc12_.o18406(),_loc12_.o18698(),_loc4_.o18406(),_loc4_.o18698(),_loc6_.o18406(),_loc6_.o18698(),_loc9_.o11353(_loc13_ - _loc7_,true),_loc9_.o18239(_loc10_ - _loc5_),o14719.o160(param2.o10239.o20559));
      }
      
      private function o696(param1:o9213, param2:o14200, param3:o14018, param4:o1253, param5:o4117, param6:String = null) : void
      {
         var _loc12_:int = 0;
         var _loc13_:* = null;
         var _loc9_:int = 0;
         var _loc7_:* = param6;
         if(param6 == null)
         {
            param6 = param3.name;
            _loc7_ = param3.o3279;
         }
         var _loc8_:Number = param1.o8872;
         var _loc11_:* = Number(param1.o5250());
         if(param3.o18172 != 22)
         {
            if(param3.o18172 == 10)
            {
            }
         }
         var _loc14_:String = param1.o11353(_loc8_) + param1.o9342();
         if(_loc11_ == 0.1)
         {
            _loc11_ = _loc11_;
         }
         var _loc10_:String = param1.o18239(_loc11_);
         if(param1.o4585(param1.o5250()))
         {
            _loc10_ = "";
         }
         if(o3075 == false)
         {
            _loc10_ = "";
         }
         this.o1943(_loc7_ + param3.o735(),_loc14_,_loc10_,_loc14_);
         if(o3075 == false)
         {
            return;
         }
         if(param1.o4585(param1.o5502) == false)
         {
            o8627.o17747(param1.o18239(param1.o5502));
         }
         if(param1.o4585(param1.o3353) == false)
         {
            o8627.o9800(param1.o18239(param1.o3353),param6,param3.o4186(param4));
         }
         _loc12_ = 0;
         while(_loc12_ < param1.o7607.length)
         {
            if(param1.o4585(param1.o7607[_loc12_]) == false)
            {
               o8627.o19806(param1.o18239(param1.o7607[_loc12_]),param1.o20004[_loc12_]);
            }
            _loc12_++;
         }
         _loc9_ = 0;
         while(_loc9_ < param1.o4572.length)
         {
            if(param1.o4585(param1.o4572[_loc9_]) == false)
            {
               o8627.o11757(param1.o18239(param1.o4572[_loc9_]),param1.o19932[_loc9_]);
            }
            _loc9_++;
         }
      }
      
      public function o19641(param1:o1253, param2:o4117) : void
      {
         var _loc7_:* = null;
         var _loc5_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc9_:Boolean = false;
         var _loc4_:* = null;
         var _loc12_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc13_:* = null;
         var _loc11_:o14200 = o4519.o8116.profileData;
         this.clear();
         var _loc6_:o6747 = new o6747();
         var _loc15_:int = 0;
         var _loc14_:* = _loc11_.o5292.o5052;
         for each(var _loc8_ in _loc11_.o5292.o5052)
         {
            _loc7_ = _loc6_.o20552(param1.o10239.o20559,param2,_loc8_.o18172,param1);
            _loc5_ = _loc7_.o8872;
            _loc10_ = _loc7_.o5250();
            _loc9_ = Math.abs(_loc5_) > 0.01 || Math.abs(_loc10_) > 0.01;
            if(param1.o10239.o20559 == 3 && _loc8_.o18172 == 25)
            {
               param1 = param1;
            }
            if(_loc9_ == false)
            {
               _loc9_ = _loc8_.o18172 == 13 || _loc8_.o18172 == 14 || _loc8_.o18172 == 15 || _loc8_.o18172 == 22;
            }
            if(_loc9_)
            {
               if(_loc8_.o18172 == 22)
               {
                  _loc4_ = _loc6_.o20552(param1.o10239.o20559,param2,10,param1);
                  _loc12_ = _loc4_.o8872;
                  _loc3_ = _loc4_.o5250();
                  if(param1.o10239.o20559 == 3)
                  {
                     param1 = param1;
                  }
                  if(_loc4_.o4585(_loc12_) == false || _loc4_.o4585(_loc3_) == false)
                  {
                     _loc13_ = _loc11_.o5292.o5812(22);
                     o696(_loc4_,_loc11_,_loc13_,param1,param2,"Movement penalty");
                  }
                  if(_loc7_.o4585(_loc5_) == false || _loc7_.o4585(_loc10_) == false)
                  {
                     o696(_loc7_,_loc11_,_loc8_,param1,param2,"Movement bonus");
                  }
               }
               else
               {
                  o696(_loc7_,_loc11_,_loc8_,param1,param2);
               }
            }
         }
      }
   }
}
