package
{
   public class o6278
   {
       
      
      private var o4139:o10411;
      
      private var o4510:o10411;
      
      private var o8766:o10411;
      
      private var o5644:o10411;
      
      private var o15209:o10411;
      
      private var o15183:o10411;
      
      private var o10737:o10411;
      
      private var o9191:o10411;
      
      public var o20739:String = null;
      
      public var o11294:String;
      
      public var o15892:Boolean = true;
      
      private var o14750:Boolean = true;
      
      public function o6278(param1:o14200)
      {
         o4139 = new o10411(false);
         o4510 = new o10411(false);
         o8766 = new o10411(false);
         o5644 = new o10411(true);
         o15209 = new o10411(true);
         o15183 = new o10411(true);
         o10737 = new o10411(true);
         o9191 = new o10411(true);
         o11294 = "";
         super();
      }
      
      public function get o19130() : Boolean
      {
         return o5644.value;
      }
      
      public function set o19130(param1:Boolean) : void
      {
         o5644.value = param1;
      }
      
      public function get o6458() : Boolean
      {
         return o10737.value;
      }
      
      public function set o6458(param1:Boolean) : void
      {
         o10737.value = param1;
         o4519.o8116.o6458 = param1;
      }
      
      public function get o9690() : Boolean
      {
         return o9191.value;
      }
      
      public function set o9690(param1:Boolean) : void
      {
         o9191.value = param1;
         o4519.o8116.o9690 = param1;
      }
      
      public function o5313() : void
      {
         if(o19130 && (o493.o18249 != 1 || o14750))
         {
            o14750 = false;
            o493.o18249 = 1;
            o493.o16444 = true;
            o4519.o8116.o4100.o11980(o493.o18249);
         }
         else if(o19130 == false && o493.o18249 != 0.5 || o14750)
         {
            o14750 = false;
            o493.o18249 = 0.5;
            o493.o16444 = false;
            o4519.o8116.o4100.o11980(o493.o18249);
         }
      }
      
      public function get o400() : Boolean
      {
         if(!o4139.value)
         {
            return true;
         }
         return false;
      }
      
      public function set o400(param1:Boolean) : void
      {
         if(param1)
         {
            o4139.value = false;
         }
         else
         {
            o4139.value = true;
         }
         o4519.o8116.o6169.o14427(o4139.value);
      }
      
      public function get o9758() : Boolean
      {
         return false;
      }
      
      public function set o9758(param1:Boolean) : void
      {
      }
      
      public function get o12773() : Boolean
      {
         return o15183.value;
      }
      
      public function set o12773(param1:Boolean) : void
      {
         o15183.value = param1;
      }
      
      public function get o9671() : Boolean
      {
         if(!o4510.value)
         {
            return true;
         }
         return false;
      }
      
      public function set o9671(param1:Boolean) : void
      {
         if(param1)
         {
            o4510.value = false;
         }
         else
         {
            o4510.value = true;
         }
         o4519.o8116.o6169.o1506(o4510.value);
      }
      
      public function get o3288() : Boolean
      {
         return o8766.value;
      }
      
      public function set o3288(param1:Boolean) : void
      {
         o8766.value = param1;
      }
      
      public function o1686(param1:Object) : void
      {
         if(param1[48] == null)
         {
            this.o400 = true;
            this.o9671 = true;
         }
         else
         {
            this.o400 = param1[48];
            this.o9671 = param1[49];
         }
         if(param1[50] == null)
         {
            this.o3288 = false;
         }
         else
         {
            this.o3288 = param1[50];
         }
         if(param1[51] == null)
         {
            this.o19130 = true;
         }
         else
         {
            this.o19130 = param1[51];
         }
         if(param1[52] == null)
         {
            this.o9758 = true;
         }
         else
         {
            this.o9758 = param1[52];
         }
         if(param1[53] == null)
         {
            this.o12773 = true;
         }
         else
         {
            this.o12773 = param1[53];
         }
         if(param1[410] == null)
         {
            if(param1[54] == null)
            {
               this.o6458 = true;
               this.o9690 = true;
            }
            else
            {
               this.o6458 = param1[54];
               this.o9690 = param1[54];
            }
         }
         else
         {
            this.o6458 = param1[410];
            this.o9690 = param1[411];
         }
         if(param1[186] == null)
         {
            this.o20739 = null;
         }
         else
         {
            this.o20739 = param1[186];
         }
         if(param1[206] == null)
         {
            this.o11294 = "";
         }
         else
         {
            this.o11294 = param1[206];
         }
      }
      
      public function o8169(param1:Object) : void
      {
         o1686(param1);
      }
      
      public function o19599() : Object
      {
         var _loc1_:Object = {};
         _loc1_[48] = this.o400;
         _loc1_[49] = this.o9671;
         _loc1_[50] = this.o3288;
         _loc1_[51] = this.o19130;
         _loc1_[52] = this.o9758;
         _loc1_[53] = this.o12773;
         _loc1_[410] = this.o6458;
         _loc1_[411] = this.o9690;
         _loc1_[186] = o9609.o6223().o17179.o12853;
         _loc1_[206] = this.o11294;
         return _loc1_;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
   }
}
