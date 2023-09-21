//TS for tiles
#macro TS	16

//equals tiles of the room
roomW = ceil(room_width / TS);
roomH = ceil(room_height / TS);

//creates motion planning grid
global.mp_grid = mp_grid_create(0, 0, roomW, roomH, TS, TS);

//sets instances of Obj_Wall as solid objects on the grid. Our wall is currently just a square so the precision is set to false *since right now we don't need it*
mp_grid_add_instances(global.mp_grid, Obj_Wall, true);

global.game_width = 750;
global.game_length = 420;

global.guiHeight = display_get_gui_height();
global.guiWidth = display_get_gui_width();