
//{{BLOCK(gamescreen)

//======================================================================
//
//	gamescreen, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 128 + 2048 = 2688
//
//	Time-stamp: 2024-11-27, 23:15:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMESCREEN_H
#define GRIT_GAMESCREEN_H

#define gamescreenTilesLen 128
extern const unsigned short gamescreenTiles[64];

#define gamescreenMapLen 2048
extern const unsigned short gamescreenMap[1024];

#define gamescreenPalLen 512
extern const unsigned short gamescreenPal[256];

#endif // GRIT_GAMESCREEN_H

//}}BLOCK(gamescreen)
