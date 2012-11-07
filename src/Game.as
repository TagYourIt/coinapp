package 
{
	
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;

	//import starling.events.ResizeEvent;
	//import starling.events.TouchEvent;
	//import starling.events.TouchPhase;
	//import starling.utils.deg2rad;
	
	public class Game extends Sprite
	{
		
		
		public function Game()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			init();
		}
		
		private function init():void
		{
			//this is where the magic happens
			var textField:TextField = new TextField(400, 300, "Welcome to Starling!");
			addChild(textField);
			
		}
		
		
		public override function dispose():void	
		{
			//Add remove listeners
			super.dispose();			
		}
		
	}
}