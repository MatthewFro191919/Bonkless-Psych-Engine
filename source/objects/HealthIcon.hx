package objects;

import objects.Character;

class HealthIcon extends FlxSprite
{
	public var dad:Character = null;
        public var gf:Character = null;
	public var boyfriend:Character = null;

	public var sprTracker:FlxSprite;
	private var isPlayer:Bool = false;
	private var char:String = '';
	var kadecharacters:Array<String> = ['bf','baby','homer','freddy','scout','miku','pewdiepie','tinky','monstershit','running-goblin','evil-baby','gametoons','screamer','alien','bob','player-baby','bob-ron','ron','bobcreature','bobdead','bf-baby','bf-baby-goblin','happy-baby','kitty','myth','window-watcher','glassgoblin','glassbaby',];

	public function new(char:String = 'face', isPlayer:Bool = false, ?allowGPU:Bool = true)
	{
		super();
		this.isPlayer = isPlayer;
		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 12, sprTracker.y - 30);
	}

	private var iconOffsets:Array<Float> = [0, 0];
	public function changeIcon(char:String, ?allowGPU:Bool = true) {
		if(this.char != char) {
				loadGraphic(Paths.image('iconGrid'), true, 150, 150);

				antialiasing = true;
				animation.add('bf', [0, 1], 0, false, isPlayer);
				animation.add('sonicfun', [26, 27], 0, false, isPlayer);
				animation.play(char);
		}
	}

	public var autoAdjustOffset:Bool = true;
	override function updateHitbox()
	{
		super.updateHitbox();
		if(autoAdjustOffset)
		{
			offset.x = iconOffsets[0];
			offset.y = iconOffsets[1];
		}
	}

	public function getCharacter():String {
		return char;
	}
}
