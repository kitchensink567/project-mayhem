package
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class o7276 extends o8023
   {
       
      
      public var o4814:Vector.<o6212> = null;
      
      public var o20753:Dictionary = null;
      
      public var o8635:Dictionary = null;
      
      public var o18709:Vector.<int>;
      
      private var o1871:Dictionary;
      
      public function o7276(param1:Dictionary)
      {
         o18709 = Mem.create(this,Vector.<int>);
         o1871 = Mem.create(this,Dictionary);
         super();
         o4814 = Mem.create(this,Vector.<o6212>);
         this.o20753 = param1;
         o8635 = Mem.create(this,Dictionary);
         var _loc4_:int = 0;
         var _loc3_:* = param1;
         for(o8635[param1[_loc2_]] in param1)
         {
         }
      }
      
      public function o5373(param1:o6212) : void
      {
         if(param1.o5973 < 0)
         {
            return;
         }
         var _loc5_:int = 0;
         var _loc4_:* = o4814;
         for each(var _loc2_ in o4814)
         {
            if(_loc2_.o5973 == param1.o5973)
            {
               throw new Error("state ids are conflicting, please fix - " + _loc2_.name + ", ID: " + _loc2_.o5973 + " with " + param1.name + ", ID: " + param1.o5973);
            }
         }
         o4814.push(param1);
         var _loc3_:o18740 = new o18740(param1,this);
         param1.o19926(this,o14571.o19115,_loc3_.o5111);
         param1.o16280(this,o4384.o20630,o524);
         dispatchData(Mem.create(this,o1519,[param1]));
      }
      
      public function o7609(param1:o6212) : void
      {
         var _loc2_:int = o4814.indexOf(param1);
         if(_loc2_ != -1)
         {
            o4814.splice(o4814.indexOf(param1),1);
         }
      }
      
      public function o19409() : String
      {
         var o9336:Array = [];
         var o18445:Vector.<o6212> = o4814.sort(function(param1:o6212, param2:o6212):int
         {
            if(param1.o5973 < param2.o5973)
            {
               return -1;
            }
            if(param1.o5973 > param2.o5973)
            {
               return 1;
            }
            return 0;
         });
         var _loc3_:int = 0;
         var _loc2_:* = o18445;
         for each(o20488 in o18445)
         {
            o9336.push(o10348(o20488));
         }
         return o9336.join("\n");
      }
      
      public function o10348(param1:o6212) : String
      {
         return param1.o5973 + ", " + param1.o10887 + ", " + getQualifiedClassName(param1) + ", " + param1.name;
      }
      
      private function o524(param1:o2149) : void
      {
         dispatchData(Mem.create(this,o10641,[param1.o20488,param1.data,param1.o9112,param1.o15752,param1.o5856,param1.o5081]));
      }
      
      public function o2929(param1:int) : o6212
      {
         var _loc4_:int = 0;
         var _loc3_:* = o4814;
         for each(var _loc2_ in o4814)
         {
            if(_loc2_.o5973 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function o13078(param1:int, param2:Class) : ByteArray
      {
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:ByteArray = Mem.create(this,ByteArray);
         var _loc9_:int = 0;
         var _loc8_:* = o4814;
         for each(var _loc3_ in o4814)
         {
            if(!(_loc3_ is param2))
            {
               if(_loc3_.o10887 == param1)
               {
                  if(_loc3_.o5973 >= 0)
                  {
                     _loc4_.writeInt(_loc3_.o5973);
                     _loc6_ = o20753[Object(_loc3_).constructor as Class];
                     _loc4_.writeShort(_loc6_);
                     _loc5_ = _loc4_.position;
                     _loc4_.writeShort(0);
                     _loc3_.o18192(_loc4_);
                     _loc7_ = _loc4_.length - _loc5_ - 2;
                     _loc4_.position = _loc5_;
                     _loc4_.writeShort(_loc7_);
                     _loc4_.position = _loc4_.length;
                  }
               }
            }
         }
         _loc4_.position = 0;
         return _loc4_;
      }
      
      public function o17491(param1:ByteArray, param2:int = 0, param3:Boolean = true) : void
      {
         o3035(param1,param2);
      }
      
      public function o20733(param1:ByteArray, param2:int, param3:int) : void
      {
         var _loc4_:Vector.<int> = o3035(param1);
         var _loc7_:int = 0;
         var _loc6_:* = o4814.concat();
         for each(var _loc5_ in o4814.concat())
         {
            if(_loc5_.o5973 >= param2 && _loc5_.o5973 <= param3 && _loc4_.indexOf(_loc5_.o5973) == -1)
            {
               _loc5_.o19115();
            }
         }
      }
      
      public function o3035(param1:ByteArray, param2:int = 0) : Vector.<int>
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:Vector.<int> = Mem.create(this,Vector.<int>);
         loop0:
         while(param1.bytesAvailable)
         {
            _loc6_ = param1.readInt();
            _loc7_ = param1.readShort();
            _loc4_ = param1.readShort();
            _loc3_.push(_loc6_);
            var _loc9_:int = 0;
            var _loc8_:* = o4814;
            for each(var _loc5_ in o4814)
            {
               if(_loc5_.o5973 == _loc6_)
               {
                  _loc5_.o14232(param1,param2);
                  continue loop0;
               }
            }
            param1.position = param1.position + _loc4_;
         }
         return _loc3_;
      }
      
      public function o10069(param1:Class, param2:Function) : void
      {
         o1871[param1] = param2;
      }
      
      public function create(param1:Class, param2:int) : o6212
      {
         return o1871[param1](param2);
      }
   }
}

class o18740
{
    
   
   private var o20488:o6212;
   
   private var o14443:o7276;
   
   function o18740(param1:o6212, param2:o7276)
   {
      super();
      this.o20488 = param1;
      this.o14443 = param2;
   }
   
   public function o5111(param1:Object) : void
   {
      o14443.o7609(o20488);
      o20488 = null;
      o14443 = null;
   }
}
