# 1 "gameplay.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gameplay.c"
# 1 "gameplay.h" 1

void initializeSprites();
void gameControls();
void drawGame();
void moveEnemy();
void enemyShoot();
void updateBullets();
void moveUFO();
int yPosition;
int enemyY;
int enemyX;
int loseCondition;
int loseDraw;
int sheild;
int shieldTimer;
int bhTimer;
int bhYposition;
int aboveOrBelow;
int bhWait;
int drawBH;
int powerup;
int gotBox;
int boxWait;
int poweupTimer;
int jetpack;

typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} ENEMY;

typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} BULLETS;

typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} UFOS;

typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} BLACKHOLE;


typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} BOX;

typedef struct {
    int x;
    int y;
    int dx;
    int width;
    int height;
    int active;
} PBULLETS;

ENEMY enemyArr[1];
BULLETS bullets[5];
UFOS ufo[1];
BLACKHOLE blackhole[1];
BOX box[1];
PBULLETS pBullets[5];
# 2 "gameplay.c" 2
# 1 "sprites.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 44 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 63 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 97 "gba.h"
void DMANow(int channel, volatile void* src, volatile void* dest, unsigned int ctrl);
# 5 "sprites.h" 2





typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
    int x;
    int y;
    int xVel;
    int yVel;
    int width;
    int height;

    int timeUntilNextFrame;
    int direction;
    int isAnimating;
    int currentFrame;
    int numFrames;

    int hide;
    u8 oamIndex;
} SPRITE;
# 3 "gameplay.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "gameplay.c" 2

# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 6 "gameplay.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 7 "gameplay.c" 2
# 1 "losingHorn.h" 1


extern const unsigned int losingHorn_sampleRate;
extern const unsigned int losingHorn_length;
extern const signed char losingHorn_data[];
# 8 "gameplay.c" 2
# 1 "digitalSound.h" 1



void setupSounds();
void setupSoundInterrupts();
void interruptHandler();

void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void pauseSounds();
void unpauseSounds();
void stopSounds();
# 52 "digitalSound.h"
typedef struct{
    const signed char* data;
    int dataLength;
    int isPlaying;
    int looping;
    int durationInVBlanks;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 9 "gameplay.c" 2
# 1 "Gunshot.h" 1


extern const unsigned int Gunshot_sampleRate;
extern const unsigned int Gunshot_length;
extern const signed char Gunshot_data[];
# 10 "gameplay.c" 2






void initializeSprites() {
    yPosition = 144;
    DMANow(3, spritesheetPal, ((u16 *)0x5000200), 512 / 2);
    DMANow(3, spritesheetTiles, &((CB*) 0x6000000)[4], 32768 / 2);
    hideSprites();
    sheild = 0;
    bhTimer = 0;
    bhWait = 100;
    ((u16 *)0x5000200)[4] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
    aboveOrBelow = 0;
    drawBH = 0;
    gotBox = 0;
    powerup = 0;
    jetpack = 0;


}

void gameControls() {

    if ((~(buttons) & ((1<<6))) && yPosition > 0) {
        yPosition = yPosition -3;
        jetpack = jetpack + 1;

    } else if ((~(buttons) & ((1<<6))) && yPosition == 0) {
        yPosition == yPosition;
        jetpack = jetpack + 1;
    } else if (yPosition < 144) {
        yPosition = yPosition + 3;
        jetpack = jetpack = 0;
    }



    if(enemyArr[0].active == 0) {
        enemyArr[0].x = 240 - 16;
        enemyArr[0].y = (rand() % (160 - 16));
        enemyArr[0].dx = 1;
        enemyArr[0].active = 1;
    }

    if (ufo[0].active == 0) {
        ufo[0].x = 240 - 16;
        ufo[0].y = (rand() % (160 - 16));
        ufo[0].dx = 1;
        ufo[0].active = 1;
    }

    if (blackhole[0].active == 0 && bhWait <= 0) {
        blackhole[0].x = 120 - 16;
        blackhole[0].y = (rand() % (160 - 16));
        blackhole[0].dx = 1;
        blackhole[0].active = 1;
        bhTimer = 100;
        bhWait = 100;
        drawBH = 1;
    }


    if (box[0].active == 0 && boxWait <= 0) {
        box[0].x = 240 - 16;
        box[0].y = (rand() % (160 - 16));
        box[0].dx = 3;
        box[0].active = 1;
        boxWait = 100;
    }







    if (collision(5, yPosition, 16, 16, enemyArr[0].x, enemyArr[0].y, 16, 16) && sheild == 0) {
        if (enemyArr[0].active) {
            loseCondition = 1;
        }
    }

    if (collision(5, yPosition, 16, 16, ufo[0].x, ufo[0].y, 16, 16) && sheild == 0) {
        if (ufo[0].active && yPosition <= ufo[0].y) {
            shieldTimer = 300;
            sheild = 1;
        } else if (ufo[0].active && yPosition > ufo[0].y) {
            loseCondition = 1;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (collision(5, yPosition, 16, 16, bullets[i].x, bullets[i].y, 16, 16) && sheild == 0) {
            if (bullets[i].active) {
                loseCondition = 1;
            }
        }


    }

    if (collision(5, yPosition, 16, 16, blackhole[0].x, blackhole[0].y, 16, 16) && sheild == 0) {
        if (blackhole[0].active) {
            loseCondition = 1;
        }
    }

    if (collision(5, yPosition, 16, 16, box[0].x, box[0].y, 16, 16) && powerup == 0) {
        if (box[0].active) {
            gotBox = 1;
            box[0].active = 0;
        }
    }

    for (int i = 0; i < 5; i++) {
        if (collision(pBullets[i].x, pBullets[i].y, 16, 16, blackhole[0].x, blackhole[0].y, 16, 16)) {
            blackhole[0].active = 0;
        }
        if (collision(pBullets[i].x, pBullets[i].y, 16, 16, enemyArr[0].x, enemyArr[0].y, 16, 16)) {
            enemyArr[0].active = 0;
        }
        if (collision(pBullets[i].x, pBullets[i].y, 16, 16, ufo[0].x, ufo[0].y, 16, 16)) {
            ufo[0].active = 0;
        }

    }


    if (gotBox == 1 && (!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        powerup = 1;
        poweupTimer = 500;
        gotBox = 0;
    }


    if (sheild) {
        if (powerup) {
            ((u16 *)0x5000200)[4] = (((20) & 31) | ((31) & 31) << 5 | ((20) & 31) << 10);
        } else if (gotBox) {
            ((u16 *)0x5000200)[4] = (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10);
        } else {
            ((u16 *)0x5000200)[4] = (((31) & 31) | ((31) & 31) << 5 | ((5) & 31) << 10);
        }
    } else if (powerup) {
        ((u16 *)0x5000200)[4] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
    } else if (gotBox) {
        ((u16 *)0x5000200)[4] = (((15) & 31) | ((15) & 31) << 5 | ((15) & 31) << 10);
    } else {
        ((u16 *)0x5000200)[4] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
    }

    if (shieldTimer > 0) {
        shieldTimer = shieldTimer - 1;
    }

    if (shieldTimer <= 0) {
        sheild = 0;
    }

    if (bhTimer > 0) {
        bhTimer = bhTimer - 1;

    } else {
        blackhole[0].active = 0;
    }

    if (bhWait > 0 && bhTimer <= 0) {
        bhWait = bhWait - 1;
    }

    if (boxWait > 0) {
        boxWait = boxWait - 1;
    }

    if (poweupTimer > 0) {
        poweupTimer = poweupTimer - 1;
    }

    if (poweupTimer <= 0) {
        powerup = 0;
    }
# 205 "gameplay.c"
}

void drawGame() {

    if (loseCondition == 1) {
        shadowOAM[0].attr0 = ((160) & 0xFF);
        shadowOAM[1].attr0 = ((160) & 0xFF);
        for (int i = 0; i < 7; i++) {
            shadowOAM[2 + i].attr0 = ((160) & 0xFF);
        }
    } else {
        shadowOAM[0].attr0 = ((yPosition) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[0].attr1 = ((5) & 0x1FF) | (1<<14);

        if (jetpack <= 0) {
            shadowOAM[0].attr2 = (((0) & 0xF) <<12) | ((((2) * (32) + (0))) & 0x3FF);
        } else if (jetpack < 15) {
            shadowOAM[0].attr2 = (((0) & 0xF) <<12) | ((((2) * (32) + (2))) & 0x3FF);
        } else {
            shadowOAM[0].attr2 = (((0) & 0xF) <<12) | ((((2) * (32) + (4))) & 0x3FF);
        }

    }

    if (enemyArr[0].active) {

        shadowOAM[1].attr0 = ((enemyArr[0].y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[1].attr1 = ((enemyArr[0].x) & 0x1FF) | (1<<14);
        shadowOAM[1].attr2 = (((0) & 0xF) <<12) | ((((4) * (32) + (0))) & 0x3FF);

    } else {
        shadowOAM[1].attr0 = ((160) & 0xFF);
    }

    for (int i = 0; i < 5; i++) {
        if (bullets[i].active) {
            shadowOAM[2 + i].attr0 = ((bullets[i].y) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[2 + i].attr1 = ((bullets[i].x) & 0x1FF) | (0<<14);
            shadowOAM[2 + i].attr2 = (((0) & 0xF) <<12) | ((((4) * (32) + (10))) & 0x3FF);
        } else {
            shadowOAM[2 + i].attr0 = ((160) & 0xFF);
        }
    }

    if (ufo[0].active) {
        shadowOAM[8].attr0 = ((ufo[0].y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[8].attr1 = ((ufo[0].x) & 0x1FF) | (1<<14);
        shadowOAM[8].attr2 = (((0) & 0xF) <<12) | ((((0) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[8].attr0 = ((160) & 0xFF);
    }

    if (blackhole[0].active) {
        shadowOAM[9].attr0 = ((blackhole[0].y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[9].attr1 = ((blackhole[0].x) & 0x1FF) | (1<<14);
        shadowOAM[9].attr2 = (((0) & 0xF) <<12) | ((((0) * (32) + (10))) & 0x3FF);
    } else {
        shadowOAM[9].attr0 = ((160) & 0xFF);
    }

    if (box[0].active) {
        shadowOAM[10].attr0 = ((box[0].y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[10].attr1 = ((box[0].x) & 0x1FF) | (1<<14);
        shadowOAM[10].attr2 = (((0) & 0xF) <<12) | ((((2) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[10].attr0 = ((160) & 0xFF);
    }

     for (int i = 0; i < 5; i++) {
        if (pBullets[i].active && powerup) {
            shadowOAM[11 + i].attr0 = ((pBullets[i].y) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[11 + i].attr1 = ((pBullets[i].x) & 0x1FF) | (0<<14);
            shadowOAM[11 + i].attr2 = (((0) & 0xF) <<12) | ((((4) * (32) + (8))) & 0x3FF);
        } else {
            shadowOAM[11 + i].attr0 = ((160) & 0xFF);
        }
    }
# 296 "gameplay.c"
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);






}

void moveEnemy() {
    if (enemyArr[0].active) {
        enemyArr[0].x = enemyArr[0].x - enemyArr[0].dx;
        if (enemyArr[0].x <= 5) {
            enemyArr[0].active = 0;
        }
    }
}

void enemyShoot() {
    for (int i = 0; i < 5; i++) {
        if (!bullets[i].active && enemyArr[0].active) {
            bullets[i].x = enemyArr[0].x;
            bullets[i].y = enemyArr[0].y + 8;
            bullets[i].dx = 3;
            bullets[i].active = 1;
            break;
        }
    }
}

void updateBullets() {
    for (int i = 0; i < 5; i++) {
        if (bullets[i].active) {
            bullets[i].x = bullets[i].x - bullets[i].dx;
            if (bullets[i].x <= 0) {
                bullets[i].active = 0;
            }
        }
    }
}

void moveUFO() {
    if (ufo[0].active) {
        ufo[0].x = ufo[0].x - ufo[0].dx;
        if (ufo[0].x <= 5) {
            ufo[0].active = 0;
        }
    }

}

void moveBH() {
    if (blackhole[0].active) {
        blackhole[0].x = blackhole[0].x - blackhole[0].dx;
        if (blackhole[0].x <= 5) {
            blackhole[0].active = 0;
        }
    }
}


void moveBox() {
    if (box[0].active) {
        box[0].x = box[0].x - box[0].dx;
        if (box[0].x <= 5) {
            box[0].active = 0;
        }
    }
}

void playerShoot() {
    for (int i = 0; i < 5; i++) {
        if (!pBullets[i].active && powerup && (!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
            pBullets[i].x = 5;
            pBullets[i].y = yPosition;
            pBullets[i].dx = 3;
            pBullets[i].active = 1;
            playSoundB(Gunshot_data, Gunshot_length, 0);
            break;
        }
    }
}

void updatePlayerBullets() {
    for (int i = 0; i < 5; i++) {
        if (pBullets[i].active) {
            pBullets[i].x = pBullets[i].x + pBullets[i].dx;
            if (pBullets[i].x >= (240 - 16)) {
                pBullets[i].active = 0;
            }
        }
    }
}
