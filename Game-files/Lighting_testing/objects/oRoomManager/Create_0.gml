global.paused = false;

// Create Camera
var _w = global.res.width;
var _h = global.res.height;
camera = camera_create_view(0, 0, _w, _h, 0, oPlayer, -1, -1, _w / 2, _h / 2);

//Enable views and make view 0 visible
view_enabled = true;
view_visible[0] = true;

// Assign camera to view 0
view_set_camera(0, camera);

// Collision tilemap
colTilemap = layer_tilemap_get_id("TilesCollision");

// MP Grid
var _gridWidth = to_tile(room_width);
var _gridHeight = to_tile(room_height);
global.AIGrid = mp_grid_create(0, 0, _gridWidth, _gridHeight, TILESIZE, TILESIZE);

mp_grid_add_instances(global.AIGrid, oCollision, false);

for (var _x = 0; _x < _gridWidth; _x ++) {
	for (var _y = 0; _y < _gridHeight; _y ++) {
		var _col = tilemap_get(colTilemap, _x, _y);
		
		if (_col) mp_grid_add_cell(global.AIGrid, _x, _y);
	}
}
