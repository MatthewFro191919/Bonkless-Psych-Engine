package states.stages;

import states.stages.objects.*;

class SonicFunStage extends BaseStage
{
	// If you're moving your stage from PlayState to a stage file,
	// you might have to rename some variables if they're missing, for example: camZooming -> game.camZooming

	override function create()
	{
						var funsky:FlxSprite = new FlxSprite(-600, -200).loadGraphic(Paths.image('FunInfiniteStage/sonicFUNsky'));
						funsky.setGraphicSize(Std.int(funsky.width * 0.9));
						funsky.antialiasing = true;
						funsky.scrollFactor.set(0.3, 0.3);
						funsky.active = false;
						add(funsky);

						var funbush:FlxSprite = new FlxSprite(-42, 171).loadGraphic(Paths.image('FunInfiniteStage/Bush2'));
						funbush.antialiasing = true;
						funbush.scrollFactor.set(0.3, 0.3);
						funbush.active = false;
						add(funbush);

						funpillarts2ANIM = new FlxSprite(182, -100); // Zekuta why...
						funpillarts2ANIM.frames = Paths.getSparrowAtlas('FunInfiniteStage/Majin Boppers Back', 'exe');
						funpillarts2ANIM.animation.addByPrefix('bumpypillar', 'MajinBop2 instance 1', 24);
						// funpillarts2ANIM.setGraphicSize(Std.int(funpillarts2ANIM.width * 0.7));
						funpillarts2ANIM.antialiasing = true;
						funpillarts2ANIM.scrollFactor.set(0.6, 0.6);
						add(funpillarts2ANIM);

						var funbush2:FlxSprite = new FlxSprite(132, 354).loadGraphic(Paths.image('FunInfiniteStage/Bush 1'));
						funbush2.antialiasing = true;
						funbush2.scrollFactor.set(0.3, 0.3);
						funbush2.active = false;
						add(funbush2);

						funpillarts1ANIM = new FlxSprite(-169, -167);
						funpillarts1ANIM.frames = Paths.getSparrowAtlas('FunInfiniteStage/Majin Boppers Front', 'exe');
						funpillarts1ANIM.animation.addByPrefix('bumpypillar', 'MajinBop1 instance 1', 24);
						// funpillarts1ANIM.setGraphicSize(Std.int(funpillarts1ANIM.width * 0.7));
						funpillarts1ANIM.antialiasing = true;
						funpillarts1ANIM.scrollFactor.set(0.6, 0.6);
						add(funpillarts1ANIM);

						var funfloor:FlxSprite = new FlxSprite(-340, 660).loadGraphic(Paths.image('FunInfiniteStage/floor BG'));
						funfloor.antialiasing = true;
						funfloor.scrollFactor.set(0.5, 0.5);
						funfloor.active = false;
						add(funfloor);

						funboppers1ANIM = new FlxSprite(1126, 903);
						funboppers1ANIM.frames = Paths.getSparrowAtlas('FunInfiniteStage/majin FG1', 'exe');
						funboppers1ANIM.animation.addByPrefix('bumpypillar', 'majin front bopper1', 24);
						funboppers1ANIM.antialiasing = true;
						funboppers1ANIM.scrollFactor.set(0.8, 0.8);
				   	add(funboppers1ANIM);

						funboppers2ANIM = new FlxSprite(-293, 871);
						funboppers2ANIM.frames = Paths.getSparrowAtlas('FunInfiniteStage/majin FG2', 'exe');
						funboppers2ANIM.animation.addByPrefix('bumpypillar', 'majin front bopper2', 24);
						funboppers2ANIM.antialiasing = true;
						funboppers2ANIM.scrollFactor.set(0.8, 0.8);
			   		add(funboppers2ANIM);
	}
	
	override function createPost()
	{
		// Use this function to layer things above characters!
	}

	override function update(elapsed:Float)
	{
		// Code here
	}

	override function destroy()
	{
		// Code here
	}

	override function stepHit()
	{
		if (dad.curCharacter == 'sonicfun' && SONG.song.toLowerCase() == 'endless')
		{
			switch (curStep)
			{
				case 10:
					FlxG.sound.play(Paths.sound('laugh1', 'shared'), 0.7);
			}
			if (spinArray.contains(curStep))
			{
				strumLineNotes.forEach(function(tospin:FlxSprite)
				{
					FlxTween.angle(tospin, 0, 360, 0.2, {ease: FlxEase.quintOut});
				});
			}
		}
	}
}
