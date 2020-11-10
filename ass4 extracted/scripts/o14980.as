package
{
   public class o14980
   {
      
      public static const o7464:String = "2.1alpha";
      
      public static const o3976:int = 65535;
      
      public static const o14248:Number = 3.141592653589793;
      
      public static const o2517:int = 2;
      
      public static const o11198:Number = 0.1;
      
      public static const o7902:Number = 2.0;
      
      public static const o19489:Number = 0.01;
      
      public static const o11220:Number = 0.005;
      
      public static const o4846:Number = 0.03490658503988659;
      
      public static const o18506:Number = 0.04;
      
      public static const o18832:int = 32;
      
      public static const o7954:int = 32;
      
      public static const o13419:Number = 1.0;
      
      public static const o19867:Number = 0.2;
      
      public static const o2501:Number = 0.13962634015954636;
      
      public static const o15431:Number = 2.0;
      
      public static const o11833:Number = 4.0;
      
      public static const o8844:Number = 1.5707963267948966;
      
      public static const o4371:Number = 2.4674011002723395;
      
      public static const o15581:Number = 0.2;
      
      public static const o13975:Number = 0.5;
      
      public static const o930:Number = 0.01;
      
      public static const o13328:Number = 0.03490658503988659;
       
      
      public function o14980()
      {
         super();
      }
      
      public static function o14184(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param2);
      }
      
      public static function o4112(param1:Number, param2:Number) : Number
      {
         return param1 > param2?param1:param2;
      }
      
      public static function o12199(param1:Boolean) : void
      {
         if(!param1)
         {
            throw new Error("Assertion Failed");
         }
      }
   }
}
