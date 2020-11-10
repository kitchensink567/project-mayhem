package
{
   public class o10654
   {
       
      
      private var o789:o3461;
      
      private var o763:o15719;
      
      private var o1381:o17019;
      
      private var o19872:o13774;
      
      private var o8250:o20961;
      
      private var o16097:o15713;
      
      private var o9605:o16916;
      
      private var o17094:o3425;
      
      private var o17880:o6279;
      
      private var o2826:o8106;
      
      private var o6121:Boolean = false;
      
      private var o12693:Boolean = false;
      
      public function o10654(param1:o3461)
      {
         super();
         o789 = param1;
         o763 = new o15719(param1);
         o1381 = new o17019(param1);
         o19872 = new o13774(param1);
         o8250 = new o20961(param1);
         o16097 = new o15713(param1);
         o9605 = new o16916(param1);
         o17094 = new o3425(param1);
         o17880 = new o6279(param1);
      }
      
      public function get o20325() : o15719
      {
         return o763;
      }
      
      public function get o14142() : o17019
      {
         return o1381;
      }
      
      public function get o3540() : o13774
      {
         return o19872;
      }
      
      public function get o4404() : o20961
      {
         return o8250;
      }
      
      public function get o1162() : o15713
      {
         return o16097;
      }
      
      public function get ui() : o16916
      {
         return o9605;
      }
      
      public function get o2553() : o3425
      {
         return o17094;
      }
      
      public function get o10460() : o6279
      {
         return o17880;
      }
      
      public function o10697() : void
      {
         o2826.start();
      }
      
      public function o4789() : void
      {
         o2826.stop();
      }
      
      public function o3875() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [o763.preload(),o1381.preload(),o19872.preload(),o8250.preload(),o16097.preload(),o9605.preload(),o17094.preload(),o17880.preload()];
         o15714.o18684(o19165,function(param1:Object, param2:Object, param3:Object, param4:Object, param5:Object, param6:Object, param7:Object, param8:Object):void
         {
            o2826 = new o8106(o17094);
            promise.data = this;
         });
         return promise;
      }
      
      public function o11463() : o16124
      {
         var promise:o16124 = new o16124();
         if(o6121)
         {
            throw new Error("initGlobalSounds should only be called once");
         }
         o6121 = true;
         var o19165:Array = [o9605.preload()];
         o15714.o18684(o19165,function(param1:Object):void
         {
            o2826 = new o8106(o17094);
            promise.data = this;
         });
         return promise;
      }
      
      public function o15347() : o16124
      {
         var promise:o16124 = new o16124();
         if(o12693)
         {
            promise.data = this;
            return promise;
         }
         o12693 = true;
         var o19165:Array = [o763.preload(),o1381.preload(),o19872.preload(),o8250.preload(),o16097.preload(),o17094.preload(),o17880.preload()];
         o15714.o18684(o19165,function(param1:Object, param2:Object, param3:Object, param4:Object, param5:Object, param6:Object, param7:Object):void
         {
            o2826 = new o8106(o17094);
            promise.data = this;
         });
         return promise;
      }
   }
}
