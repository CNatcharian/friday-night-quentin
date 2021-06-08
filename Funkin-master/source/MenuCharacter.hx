package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter extends FlxSprite
{
	public var character:String;
    public var quentin_characters:Array<String> = ['quentin', 'quentinConfirm', 'duplex', 'qbadguys'];

	public function new(x:Float, character:String = 'bf')
	{
		super(x);

		this.character = character;
        
        if (quentin_characters.contains(character)) {
            // Extra characters added by Chairian
            var tex = Paths.getSparrowAtlas('campaign_menu_quentin_characters');
		    frames = tex;

            animation.addByPrefix('quentin', "quentin", 24);
		    animation.addByPrefix('quentinConfirm', 'qconfirm', 24, false);
            animation.addByPrefix('duplex', "duplex", 24);
		    animation.addByPrefix('qbadguys', 'bad guys', 24);
        }
        else {
            var tex = Paths.getSparrowAtlas('campaign_menu_UI_characters');
		    frames = tex;

		    animation.addByPrefix('bf', "BF idle dance white", 24);
		    animation.addByPrefix('bfConfirm', 'BF HEY!!', 24, false);
		    animation.addByPrefix('gf', "GF Dancing Beat WHITE", 24);
		    animation.addByPrefix('dad', "Dad idle dance BLACK LINE", 24);
		    animation.addByPrefix('spooky', "spooky dance idle BLACK LINES", 24);
		    animation.addByPrefix('pico', "Pico Idle Dance", 24);
		    animation.addByPrefix('mom', "Mom Idle BLACK LINES", 24);
		    animation.addByPrefix('parents-christmas', "Parent Christmas Idle", 24);
		    animation.addByPrefix('senpai', "SENPAI idle Black Lines", 24);
        }

		animation.play(character);
		updateHitbox();
	}
}
