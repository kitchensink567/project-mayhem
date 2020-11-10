package
{
   import flash.display.Sprite;
   
   public class o9383 extends Sprite
   {
       
      
      public function o9383()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o1158;
      }
   }
}

import flash.utils.ByteArray;

class o1158 extends o15755
{
   
   public static var o20272:Array = [];
   
   private static const o5960:int = 1;
    
   
   private var o13907:int;
   
   private var o2685:o2144;
   
   private var o14443:o7276;
   
   function o1158()
   {
      o13907 = int(Math.random() * 2147483647);
      o2685 = o4519.o13206.o2685;
      o14443 = o4519.o8116.o14443;
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o1051.o4767(this,4,o2890);
   }
   
   public function o2890() : void
   {
      var _loc1_:ByteArray = new ByteArray();
      _loc1_.writeByte(1);
      _loc1_.writeInt(o13907);
      _loc1_.writeShort(o2685.id);
      _loc1_.writeShort(o2685.o750);
      _loc1_.writeUTF(o4519.o32.o10615);
      _loc1_.writeShort(o4519.o32.o14819);
      _loc1_.writeUTF(o14443.o19409());
      dispatchData(new o2149(this,_loc1_,false,true));
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      time = param1;
      data = param2;
      var o17659:int = data.readByte();
      if(!(int(o17659) - 1))
      {
         var o5964:String = "";
         var o9188:Function = function(... rest):void
         {
            o5964 = o5964 + (rest.join(", ") + "\n");
         };
         var o13907:int = data.readInt();
         if(o13907 == this.o13907)
         {
            return;
         }
         var o20803:int = data.readShort();
         if(o2685.o10591[o20803] == null)
         {
            o9188("Unknown client",o20803);
         }
         var o4340:int = data.readShort();
         if(o2685.o750 != o4340)
         {
            o9188("Hosts not matching","Theirs: " + o4340,"Mine: " + o2685.o750);
         }
         var o10615:String = data.readUTF();
         var o14819:int = data.readShort();
         var o19409:String = data.readUTF();
         var o16220:Array = o19409.split("\n");
         var o3439:Vector.<int> = new Vector.<int>();
         var o7023:int = 0;
         while(o7023 < o16220.length)
         {
            var info:String = o16220[o7023];
            var o20272:Array = info.split(", ");
            var o5973:int = o20272[0];
            var o10887:int = o20272[1];
            o3439.push(o5973);
            if(o2685.o10591[o10887] == null)
            {
               o9188("Owner does not exist for: ","[" + o16220[o7023] + "]");
            }
            var o12629:o6212 = o14443.o2929(o5973);
            if(o12629 == null)
            {
               o9188("I dont have state for: [" + o16220[o7023] + "]");
            }
            else
            {
               var o12689:String = o14443.o10348(o12629);
               if(info != o12689)
               {
                  o9188("States differ","Theirs: [" + o16220[o7023] + "]","Mine: [" + o12689 + "]");
               }
            }
            o7023 = o7023 + 1;
         }
         var _loc5_:int = 0;
         var _loc4_:* = o14443.o4814;
         for each(o20488 in o14443.o4814)
         {
            if(o3439.indexOf(o20488.o5973) == -1)
            {
               o9188("They dont have state for: [" + o14443.o10348(o20488) + "]");
               if(o2685.o10591[o20488.o10887] == null)
               {
                  o9188("Owner does not exist for: ","[" + o14443.o10348(o20488) + "]");
               }
            }
         }
         if(o5964 != "")
         {
            o8339("=========");
            o8339("Issues found with client " + o20803 + " (" + o10615 + ")" + ", ping: " + o14819);
            o8339(o5964);
            o8339("=========");
         }
      }
   }
}
