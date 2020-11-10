package
{
   import flash.display.MovieClip;
   
   public class HostIconMovieClip extends MovieClip
   {
      
      public static const NK:int = 1;
      
      public static const KongIcon:int = 2;
      
      public static var gotoFrameIndex:int = HostIconMovieClip.NK;
       
      
      public function HostIconMovieClip()
      {
         super();
         this.gotoAndStop(gotoFrameIndex);
      }
   }
}
