package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
		add(bg);
		var ver = "v" + Application.current.meta.get('version');
		var txt:FlxText = new FlxText(0, 0, FlxG.width,
			"And so the bully Flux got rekt, and Quentin got to sit with Duplex at lunch that day.\n"
            + "They talked. They had a good time. They'll probably do it again sometime.\n\n"
            + "Spike unfortunately didn't find any girls to sit with.\n"
            + "Some say Tek is still chasing Gog and Perplex around the lab to this day.\n\n"
            + "Press ESC to continue. Thanks for playing!",
			32);
		txt.setFormat("VCR OSD Mono", 32, FlxColor.WHITE, CENTER);
		txt.screenCenter();
		add(txt);
	}

	override function update(elapsed:Float)
	{
		if (controls.BACK || controls.ACCEPT)
		{
			FlxG.sound.playMusic(Paths.music('freakyMenu'));
			FlxG.switchState(new StoryMenuState());
		}
		super.update(elapsed);
	}
}
