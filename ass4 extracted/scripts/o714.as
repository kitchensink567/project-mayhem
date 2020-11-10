package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   
   public class o714 extends o6539
   {
       
      
      private var o16989:o13064;
      
      private var o19980:o20421;
      
      private var o7432:Array;
      
      private var o13504:Array;
      
      private var o7240:o15625;
      
      private var o6139:o15625;
      
      private var o8540:Dictionary;
      
      public function o714()
      {
         super();
      }
      
      public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.init(param1);
         var _loc7_:o20565 = new o20565(this);
         var _loc5_:MovieClip = (param1 as MovieClip).getChildByName("dialogContainer") as MovieClip;
         var _loc11_:Array = [];
         var _loc6_:Array = new Array("btnEditKeyPause","btnEditKeySkill1","btnEditKeySkill2","btnEditKeySkill3","btnEditKeyCycleWeaponsLeft","btnEditKeyCycleWeaponsRight","btnEditKeyMoveLeft","btnEditKeyMoveRight","btnEditKeyMoveUp","btnEditKeyMoveDown","btnEditKeyReload","btnEditKeyDeployTurrets","btnEditKeyFragGrenade","btnEditKeyCryoGrenade","btnEditKeyCycleTurretsLeft","btnEditKeyCycleTurretsRight");
         o7432 = new Array("Pause","Skill1","Skill2","Skill3","Cycle Weapons Left","Cycle Weapons Right","Move Left","Move Right","Move Up","Move Down","Reload","DeployTurrets","Frag Grenade","Cryo Grenade","Cycle Turrets Left","Cycle Turrets Right");
         o13504 = new Array(15,12,13,14,10,11,25,26,23,24,22,7,8,9,20,21);
         o8540 = new Dictionary();
         var _loc9_:Dictionary = o14200.o19505.data.o7209;
         var _loc13_:int = 0;
         var _loc12_:* = _loc9_;
         for(var _loc10_ in _loc9_)
         {
            o8540[_loc10_] = _loc9_[_loc10_];
         }
         var _loc8_:int = 0;
         var _loc15_:int = 0;
         var _loc14_:* = _loc6_;
         for each(var _loc4_ in _loc6_)
         {
            _loc8_++;
            _loc11_.push(_loc7_.o15961(_loc4_,o7432[_loc8_],_loc5_));
         }
         o19980 = _loc7_.o3538(_loc11_);
         o19980.addEventListener(o5595.o16737,o2089,false,0,true);
         o2089(null);
         o7240 = _loc7_.o17578("btnReset",_loc5_);
         o6139 = _loc7_.o17578("btnSave",_loc5_);
         o7240.addEventListener("click",o1333,false,0,true);
         o6139.addEventListener("click",o15235,false,0,true);
         _loc7_.o13640();
         o4519.o10093.stage.addEventListener("keyDown",o6204,false,0,true);
         this.o16989 = param2;
      }
      
      private function o1333(param1:Event) : void
      {
         var _loc2_:o14200 = o14200.o19505;
         _loc2_.data.o7209 = new Dictionary();
         var _loc4_:o12308 = o14200.o19505.o5292.o8675;
         var _loc6_:int = 0;
         var _loc5_:* = _loc4_.o7446;
         for each(var _loc3_ in _loc4_.o7446)
         {
            _loc2_.data.o7209[_loc3_.id] = _loc3_.o20374();
            o8540[_loc3_.id] = _loc2_.data.o7209[_loc3_.id];
         }
         o2089(null);
         o15235(null);
      }
      
      private function o15235(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc2_:o14200 = o14200.o19505;
         var _loc4_:o12308 = o14200.o19505.o5292.o8675;
         var _loc5_:Dictionary = o14200.o19505.data.o7209;
         var _loc8_:int = 0;
         var _loc7_:* = _loc5_;
         for(var _loc6_ in _loc5_)
         {
            _loc5_[_loc6_] = o8540[_loc6_];
            _loc3_ = _loc4_.o2483(_loc6_);
            if(_loc3_ == null)
            {
               _loc3_ = _loc3_;
            }
            _loc3_.o1718 = o8540[_loc6_];
         }
         if(o14200.o19505.o202.o9389 == false)
         {
            o14200.o19505.saveData();
         }
      }
      
      private function o6204(param1:KeyboardEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(o19980.o2120 >= 0)
         {
            _loc2_ = o14200.o19505.o5292.o8675;
            _loc3_ = _loc2_.o2483(o13504[o19980.o2120] as int);
            if(_loc3_ != null)
            {
               o8540[_loc3_.id] = param1.keyCode;
               if(param1.keyCode >= 97 && param1.keyCode <= 112)
               {
                  var _loc4_:* = _loc3_.id;
                  var _loc5_:* = o8540[_loc4_] - 32;
                  o8540[_loc4_] = _loc5_;
               }
               o19980.o2120 = -1;
            }
            o2089(null);
         }
      }
      
      protected function o2089(param1:o11507) : void
      {
         var _loc2_:int = 0;
         var _loc8_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc9_:int = param1 == null?-1:param1.o6457;
         var _loc7_:int = 0;
         var _loc4_:o12308 = o14200.o19505.o5292.o8675;
         var _loc12_:int = 0;
         var _loc11_:* = o19980.o19568;
         for each(var _loc3_ in o19980.o19568)
         {
            if(_loc9_ == _loc7_)
            {
               _loc3_.o13586 = o7432[_loc7_] + "<Press Key>";
            }
            else
            {
               _loc2_ = o13504[_loc7_] as int;
               _loc8_ = _loc4_.o2483(_loc2_);
               if(_loc8_ == null)
               {
                  _loc3_.o13586 = o7432[_loc7_] + " [ERROR]";
               }
               else
               {
                  _loc5_ = this.o8540[_loc2_];
                  if(_loc5_ < 0)
                  {
                     _loc3_.o13586 = o7432[_loc7_] + " [Not set]";
                  }
                  else
                  {
                     _loc6_ = String.fromCharCode(_loc5_);
                     var _loc10_:* = _loc5_;
                     switch(_loc10_)
                     {
                        case 13:
                           _loc6_ = "ENTER";
                           break;
                        case 37:
                           _loc6_ = "LEFT";
                           break;
                        case 39:
                           _loc6_ = "RIGHT";
                           break;
                        case 38:
                           _loc6_ = "UP";
                           break;
                        case 40:
                           _loc6_ = "DOWN";
                           break;
                        case 27:
                           _loc6_ = "ESCAPE";
                           break;
                        case 16:
                           _loc6_ = "SHIFT";
                           break;
                        case 9:
                           _loc6_ = "TAB";
                           break;
                        case 32:
                           _loc6_ = "SPACE";
                           break;
                        case 96:
                           _loc6_ = "NumPad 0";
                           break;
                        case 97:
                           _loc6_ = "NumPad 1";
                           break;
                        case 98:
                           _loc6_ = "NumPad 2";
                           break;
                        case 99:
                           _loc6_ = "NumPad 3";
                           break;
                        case 100:
                           _loc6_ = "NumPad 4";
                           break;
                        case 101:
                           _loc6_ = "NumPad 5";
                           break;
                        case 102:
                           _loc6_ = "NumPad 6";
                           break;
                        case 103:
                           _loc6_ = "NumPad 7";
                           break;
                        case 104:
                           _loc6_ = "NumPad 8";
                           break;
                        case 105:
                           _loc6_ = "NumPad 9";
                     }
                     _loc3_.o13586 = o7432[_loc7_] + " [" + _loc6_ + "]";
                  }
               }
            }
            _loc7_++;
         }
      }
      
      override public function o13640() : void
      {
         o4519.o10093.stage.removeEventListener("keyDown",o6204);
         o19980.removeEventListener(o5595.o16737,o2089);
         o7240.removeEventListener("click",o1333);
         o6139.removeEventListener("click",o15235);
         o16989 = null;
         o19980 = null;
         o7432 = null;
         o7240 = null;
         o6139 = null;
         o8540 = null;
         super.o13640();
      }
   }
}
