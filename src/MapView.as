package src
{
	import flash.display.Shape;
	

	public class MapView extends Shape
	{
		
		private var map:TileMap;
		private var tileSize:Number;
		
		function MapView(map:TileMap, tileSize:Number)
		{
			this.map = map;
			this.tileSize = tileSize;
		}
		
		
		
		public function draw():void
		{
			graphics.clear();
			
			for (var x:int=0; x<map.getWidth(); x++) {
				for (var y:int=0; y<map.getHeight(); y++) {
					
					var col:uint = map.isWalkable(x,y) ? 0x888888 : 0x666666;
					
					graphics.beginFill(col);
					graphics.drawRect(x*tileSize+1, y*tileSize+1, tileSize-2, tileSize-2);
					graphics.endFill();
					
				}
			}
		}
		
	}
}