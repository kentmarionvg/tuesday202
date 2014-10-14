
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
	
		var w= get_scene_width(), h=get_scene_height();

		rsc.prepare_image("mymonster","sprite", w*0.3, h*0.3);
		monster=add_sprite_for_image(SEImage.for_resource("mymonster"));

		var wp=monster.get_width(), wh=monster.get_height();
		monster.move(Math.random(0,w),Math.random(0,h));
	}

	public void tick(TimeVal now, double delta) {
		
	var mx=monster.get_x();
	var my=monster.get_y();
	var px=MainScene.px;
	var py=MainScene.py;
	
	monster.move(mx+(px-mx)/Math.random(20,1500),my+(py-my)/Math.random(20,1500));
		
	}

	public void cleanup() {
		base.cleanup();
	}
}
