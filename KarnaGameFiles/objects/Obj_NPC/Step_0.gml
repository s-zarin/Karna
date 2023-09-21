///to make textbox appear
if(place_meeting(x, y, Obj_Player)){
	if(myTBox == noone){
		myTBox = instance_create_layer(x, y, "Text_Instances", Obj_textbox);
	}
} else {
	instance_destroy(myTBox);
}
		


































 /* if(place_meeting(x, y, Obj_Player)) {
	if(myTBox == noone) {
		if keyboard_check(ord("Z")) == true {
		myTBox = instance_create_layer(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), "Text_Instances", Obj_Textbox1);
			if convoCheck >= 1 
			{
			myBuddy = 2;
			myProf[0] = 1;
			myProf[1] = 1;
			myProf[2] = 0;
			
			myBuddy[0] = "Oh now you wanna talk!!!??";
			myBuddy[1] = "Well, in that case!....";
			myBuddy[2] = "How's it goin' pal?";
			//myBuddy[3] = noone;
			}
		myTBox.buddy = myBuddy;
		myTBox.creator = myName;
		myTBox.profNum = myProf;
		convoCheck += 1;
		}
	}
	//instance_create_layer(x, y, "Text_Instances", Obj_Textbox1)
	
	
	//xspd = 0;
	//yspd = 0;
}
	else {
		if(myTBox != noone) {
		//	if keyboard_check(ord("Z")) == true {
			instance_destroy(myTBox);
			myTBox = noone;
		//	}
		}
	}
*/