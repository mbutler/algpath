package algpath

{
	import flash.display.*;
	import flash.events.*;
	import flash.geom.Point;
	import com.baseoneonline.flash.astar.AStar;
	import com.baseoneonline.flash.astar.AStarNode;
	import com.baseoneonline.flash.geom.IntPoint;
	import src.TileMap;
	
	public class Grid
	{
		private var loc:Locations = new Locations();
		private var item1:String = loc.getItem1();
		private var item2:String = loc.getItem2();
		private var player:String = loc.getPlayer1();
		private var player2:String = loc.getPlayer2();
		private var map:TileMap = new TileMap(10,10); //Grid dimensions 
		private var tileSize:Number = 25; //square size
		public var solve:Array = new Array();//the public variable 
		public var portals:Array = new Array();
		
		
		public function Grid(begin:String,end:String,moves:int)
		{
							
				//set the Obstacle squares
				placeObstacle(map);
								
				//convert begin:String algebra to screen coordinates
				var screen:Array = CoordConvert.AlgebraToScreen(begin);		
				
				//convert screen coordinates to a Point() 
				var point:Point = new Point(screen[0],screen[1]);
				
				//convert Point() to IntPoint()
				var start = screenToGrid(point);
				
				//convert end:String algebra to screen coordinates
				var screen2:Array = CoordConvert.AlgebraToScreen(end);		
				
				//convert screen coordinates to a Point()
				var point2:Point = new Point(screen2[0],screen2[1]);
				
				//convert Point() to IntPoint()
				var goal = screenToGrid(point2);
				
				//make a new solver and store results in an Array
				var a:AStar = new AStar(map, start, goal);
				var solution:Array = a.solve();
				
				//rearrange results to suit the parameters
				solution.pop(); //takes a duplicate off the end
				//solution.push(start); //toggles between adding starting square to the path
				solution.reverse(); //after working backwards it flips the array to appear like it's starting
				
				//only returns the amount requested
				var sender:Array = solution.slice(0,moves);
				
				//public variable
				solve = sender;
								
		}
		
	
		private function screenToGrid(p:Point):IntPoint
		{
			return new IntPoint( Math.floor(p.x/tileSize), Math.floor(p.y/tileSize) );
		}
		
		private function GridToScreen(p:IntPoint):Point
		{
			return new Point( (p.x*tileSize)+(tileSize/2), (p.y*tileSize)+(tileSize/2) );
		}
		
		
		
		//OBSTACLES
		private function placeObstacle(map:TileMap):void
		{
			
			//add as many non-walkable (or walkable) squares as necessary.  Use LevelEditor.
			//map.setWalkable(2,2,false);
			//map.setWalkable(3,6,false);
						
		}
		
	}
}