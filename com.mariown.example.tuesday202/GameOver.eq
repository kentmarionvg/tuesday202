
/*
 * GameOver
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOver : SEScene
{
	SESprite index;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		rsc.prepare_image("mysprite","index",get_scene_width());
		index= add_sprite_for_image(SEImage.for_resource("mysprite"));
		index.move(0,0);
	}

	public void cleanup() {
		base.cleanup();
	}
}
