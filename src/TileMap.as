package src
{
	import com.baseoneonline.flash.astar.IAStarSearchable;
	
	

	public class TileMap implements IAStarSearchable
	{
		
		private var width:int;
		private var height:int;
		
		private var map:Array;		
		
		/**
		 * 	CONSTRUCTOR
		 * 
		 */
		function TileMap(width:int, height:int) {
			this.width = width;
			this.height = height;
			initialize();
		}
		
		
		
		public function getWidth():int {
			return width;
		}
		
		public function getHeight():int {
			return height;
		}
		
		/**
		 * 	Size the map and fill with empty tiles
		 * 
		 */
		public function initialize():void
		{
			map = new Array(width);
			for (var x:int=0; x<width; x++) {
				map[x] = new Array(height);
				for (var y:int=0; y<height; y++) {
					map[x][y] = new Tile();
				}
			}
		}
		
		/**
		 * 	Return a Tile at this position
		 * 
		 */
		public function getTile(x:int, y:int):Tile {
			outOfBoundsCheck(x,y);
			return map[x][y];
		}

		/**
		 * 
		 */
		public function setWalkable(x:int, y:int, walkable:Boolean):void
		{
			outOfBoundsCheck(x,y);
			Tile(map[x][y]).walkable = walkable;
		}
			
		public function isWalkable(x:int, y:int):Boolean
		{
			outOfBoundsCheck(x,y);
			return Tile(map[x][y]).walkable;
		}

		
		
		private function outOfBoundsCheck(x:int, y:int):void
		{
			if (x<0||x>width-1||y<0||y>height-1) throw new Error("Position out of bounds ("+x+", "+y+")");
		}
	
		
	}
}