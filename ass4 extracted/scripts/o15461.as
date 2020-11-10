package
{
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.Texture;
   
   public class o15461
   {
       
      
      public var o13700:Vector.<Texture> = null;
      
      public var o1280:Vector.<VertexBuffer3D> = null;
      
      public var o6828:Vector.<o18509> = null;
      
      public function o15461()
      {
         super();
         o13700 = Mem.create(this,Vector.<Texture>);
         o1280 = Mem.create(this,Vector.<VertexBuffer3D>);
         o6828 = Mem.create(this,Vector.<o18509>);
      }
      
      public function add(param1:Texture, param2:VertexBuffer3D, param3:o18509) : void
      {
         o13700.push(param1);
         o6828.push(param3);
         o1280.push(param2);
      }
   }
}
