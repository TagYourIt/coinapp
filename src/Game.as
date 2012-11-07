package 
{
	
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.text.TextField;
	import starling.utils.deg2rad;

	//import starling.events.ResizeEvent;
	//import starling.events.TouchEvent;
	//import starling.events.TouchPhase;
	//import starling.utils.deg2rad;
	
	public class Game extends Sprite
	{
		//Variables here, make sure to use private, protected, or public
		private var mDinoImage:Image;
		
		
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
			textField.x = Constants.CenterX;
			addChild(textField);
			
			mDinoImage = new Image(Assets.getTextureAtlas().getTexture("dino"));
			mDinoImage.pivotX = mDinoImage.width/2;//center pivot
			mDinoImage.pivotY = mDinoImage.height/2;
			mDinoImage.x = Constants.CenterX;
			mDinoImage.y = Constants.CenterY;
			mDinoImage.rotation = deg2rad(30);
			addChild(mDinoImage);
			
		}
		
		
		public override function dispose():void	
		{
			//Add remove listeners
			super.dispose();			
		}
		
	}
}