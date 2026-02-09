
//{{BLOCK(colors)

//======================================================================
//
//	colors, 56x16@4, 
//	+ palette 256 entries, not compressed
//	+ 6 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 7x2 
//	Total size: 512 + 192 + 28 = 732
//
//	Time-stamp: 2024-12-05, 16:49:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COLORS_H
#define GRIT_COLORS_H

#define colorsTilesLen 192
extern const unsigned short colorsTiles[96];

#define colorsMapLen 28
extern const unsigned short colorsMap[14];

#define colorsPalLen 512
extern const unsigned short colorsPal[256];

#endif // GRIT_COLORS_H

//}}BLOCK(colors)
