package
{
   import flash.utils.Dictionary;
   
   public class o8443
   {
       
      
      public var id:int = 0;
      
      public var o8774:int = 0;
      
      public var name:String = null;
      
      public var level:int = 0;
      
      public var o951:Number = 0;
      
      public var o4256:Vector.<o20401> = null;
      
      public var o2671:Dictionary = null;
      
      public var o6470:int = 0;
      
      public var o12159:int = 0;
      
      public var o20831:int = 0;
      
      public var o2988:int = 0;
      
      public var o115:int = -1;
      
      public var o7322:Boolean = false;
      
      private var o14044:o16123;
      
      private var o19250:o16123;
      
      public var o19778:String;
      
      public var o18448:int = -1;
      
      public var o11008:Vector.<int> = null;
      
      public var o17915:Vector.<int> = null;
      
      public var o433:o19626;
      
      public function o8443(param1:int, param2:int = 0, param3:String = null, param4:int = 0, param5:Vector.<o20401> = null, param6:Dictionary = null, param7:int = 0, param8:int = 0, param9:int = 0, param10:int = 0, param11:Vector.<int> = null, param12:int = 0, param13:Number = 0, param14:Vector.<int> = null, param15:o19626 = null)
      {
         o14044 = new o16123(-1);
         o19250 = new o16123(-1);
         o19778 = "Null";
         super();
         this.o433 = param15;
         this.id = param1;
         this.o8774 = param2;
         this.name = param3 == null?"":param3;
         this.level = param4;
         this.o4256 = param5;
         this.o2671 = param6;
         this.o6470 = param7;
         this.o12159 = param8;
         this.o20831 = param9;
         this.o2988 = param10;
         this.o951 = param13;
         this.o11008 = param11;
         this.o115 = param12;
         this.o17915 = param14;
      }
      
      public function set o19189(param1:int) : void
      {
         this.o14044.value = param1;
      }
      
      public function get o19189() : int
      {
         return this.o14044.value;
      }
      
      public function set o19113(param1:int) : void
      {
         this.o19250.value = param1;
      }
      
      public function get o19113() : int
      {
         return this.o19250.value;
      }
      
      public function o6443() : Boolean
      {
         return o115 == 14;
      }
      
      public function o2236() : void
      {
         if(o4519.o13206.o2685.id == id)
         {
            o4519.o13206.o2685.o7803(o19189,o19113,o19778);
         }
      }
      
      public function o11256() : void
      {
         if(o4519.o13206.o2685.id == id)
         {
            o4519.o13206.o2685.o2133(o18448);
         }
      }
      
      public function get o3397() : Boolean
      {
         return id == o4519.o13206.o2685.id;
      }
      
      public function o12081(param1:Vector.<int>) : void
      {
         this.o11008 = param1;
         if(o4519.o13206.o2685.id == id)
         {
            o4519.o13206.o2685.o12081(param1);
         }
      }
   }
}
