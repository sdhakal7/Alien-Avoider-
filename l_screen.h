
//{{BLOCK(l_screen)

//======================================================================
//
//	l_screen, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 47 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 3008 + 2048 = 5568
//
//	Time-stamp: 2024-12-06, 05:46:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_L_SCREEN_H
#define GRIT_L_SCREEN_H

#define l_screenTilesLen 3008
extern const unsigned short l_screenTiles[1504];

#define l_screenMapLen 2048
extern const unsigned short l_screenMap[1024];

#define l_screenPalLen 512
extern const unsigned short l_screenPal[256];

#endif // GRIT_L_SCREEN_H

//}}BLOCK(l_screen)
