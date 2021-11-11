/// @description grid

//var g = active_grids[4][0];

active_grids[4][0] = word_gen_grid(active_grids[4][1][0],active_grids[4][1][1]);//центральный грид
active_grid = active_grids[4][0];
active_surf=active_grids[4][2];
//g0 g1 g2
//g3 x4 g5
//g6 g7 g8
var mgp = [active_grids[4][1][0],active_grids[4][1][1]]//main grid pos
active_grids[0][1]=[mgp[0]-16*ceil_size,mgp[1]-16*ceil_size];//lt
active_grids[0][0] = word_gen_grid(active_grids[0][1][0],active_grids[0][1][1]);

active_grids[1][1]=[mgp[0],mgp[1]-16*ceil_size];//t
active_grids[1][0] = word_gen_grid(active_grids[1][1][0],active_grids[1][1][1]);

active_grids[2][1]=[mgp[0]+16*ceil_size,mgp[1]-16*ceil_size];//rt
active_grids[2][0] = word_gen_grid(active_grids[2][1][0],active_grids[2][1][1]);

active_grids[3][1]=[mgp[0]-16*ceil_size,mgp[1]];//l
active_grids[3][0] = word_gen_grid(active_grids[3][1][0],active_grids[3][1][1]);

active_grids[5][1]=[mgp[0]+16*ceil_size,mgp[1]];//r
active_grids[5][0] = word_gen_grid(active_grids[5][1][0],active_grids[5][1][1]);

active_grids[6][1]=[mgp[0]-16*ceil_size,mgp[1]+16*ceil_size];//lb
active_grids[6][0] = word_gen_grid(active_grids[6][1][0],active_grids[6][1][1]);

active_grids[7][1]=[mgp[0],mgp[1]+16*ceil_size];//b
active_grids[7][0] = word_gen_grid(active_grids[7][1][0],active_grids[7][1][1]);

active_grids[8][1]=[mgp[0]+16*ceil_size,mgp[1]+16*ceil_size];//rb
active_grids[8][0] = word_gen_grid(active_grids[8][1][0],active_grids[8][1][1]);

//sd(active_grids[0][0]);
//sd(active_grids[1][0]);
//sd(active_grids[2][0]);
//sd(active_grids[3][0]);
//sd(active_grids[4][0]);
//sd(active_grids[5][0]);
//sd(active_grids[6][0]);
//sd(active_grids[7][0]);
//sd(active_grids[8][0]);