
/*
 * MonsterEntity2
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity2 : SEEntity
{
	SESprite monster2;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);

		var w= get_scene_width(), h=get_scene_height();

		rsc.prepare_image("mymonster2","sprite4", w*0.1, h*0.1);
		monster2=add_sprite_for_image(SEImage.for_resource("mymonster2"));

		var wp=monster2.get_width(), wh=monster2.get_height();
		monster2.move(Math.random(0,w),Math.random(0,h));
	}

	public void tick(TimeVal now, double delta) {
		var mx=monster2.get_x();
		var my=monster2.get_y();
		var px=MainScene.px;
		var py=MainScene.py;

		monster2.move(mx+(px-mx)/Math.random(20,1500),my+(py-my)/Math.random(20,1500));
	}

	public void cleanup() {
		base.cleanup();
	}
}
