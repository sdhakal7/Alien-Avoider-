# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
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
# 4 "main.c" 2
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
# 5 "main.c" 2
# 1 "startS.h" 1
# 22 "startS.h"
extern const unsigned short startSTiles[96];


extern const unsigned short startSMap[1024];


extern const unsigned short startSPal[256];
# 6 "main.c" 2
# 1 "gamescreen.h" 1
# 22 "gamescreen.h"
extern const unsigned short gamescreenTiles[64];


extern const unsigned short gamescreenMap[1024];


extern const unsigned short gamescreenPal[256];
# 7 "main.c" 2
# 1 "instructionsscreen.h" 1
# 22 "instructionsscreen.h"
extern const unsigned short instructionsscreenTiles[11360];


extern const unsigned short instructionsscreenMap[1024];


extern const unsigned short instructionsscreenPal[256];
# 8 "main.c" 2
# 1 "pausescreen.h" 1
# 22 "pausescreen.h"
extern const unsigned short pausescreenTiles[64];


extern const unsigned short pausescreenMap[1024];


extern const unsigned short pausescreenPal[256];
# 9 "main.c" 2
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
# 10 "main.c" 2
# 1 "losescreen.h" 1
# 22 "losescreen.h"
extern const unsigned short losescreenTiles[64];


extern const unsigned short losescreenMap[1024];


extern const unsigned short losescreenPal[256];
# 11 "main.c" 2
# 1 "l_screen.h" 1
# 22 "l_screen.h"
extern const unsigned short l_screenTiles[1504];


extern const unsigned short l_screenMap[1024];


extern const unsigned short l_screenPal[256];
# 12 "main.c" 2
# 1 "colors.h" 1
# 22 "colors.h"
extern const unsigned short colorsTiles[96];


extern const unsigned short colorsMap[14];


extern const unsigned short colorsPal[256];
# 13 "main.c" 2
# 1 "rocketships.h" 1







extern const unsigned short rocketshipsMap[1024];
# 14 "main.c" 2
# 1 "planets.h" 1







extern const unsigned short planetsMap[1024];
# 15 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[4192];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 16 "main.c" 2
# 1 "rocket.h" 1







extern const unsigned short rocketMap[1024];
# 17 "main.c" 2
# 1 "anotherRocket.h" 1







extern const unsigned short anotherRocketMap[1024];
# 18 "main.c" 2
# 1 "planetsHope.h" 1







extern const unsigned short planetsHopeMap[1024];
# 19 "main.c" 2
# 1 "startAgain.h" 1
# 22 "startAgain.h"
extern const unsigned short startAgainTiles[3072];


extern const unsigned short startAgainMap[1024];


extern const unsigned short startAgainPal[256];
# 20 "main.c" 2
# 1 "spaceMusic.h" 1


extern const unsigned int spaceMusic_sampleRate;
extern const unsigned int spaceMusic_length;
extern const signed char spaceMusic_data[];
# 21 "main.c" 2
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
# 22 "main.c" 2
# 1 "spaceCadetClean.h" 1


extern const unsigned int spaceCadetClean_sampleRate;
extern const unsigned int spaceCadetClean_length;
extern const signed char spaceCadetClean_data[];
# 23 "main.c" 2
# 1 "losingHorn.h" 1


extern const unsigned int losingHorn_sampleRate;
extern const unsigned int losingHorn_length;
extern const signed char losingHorn_data[];
# 24 "main.c" 2

unsigned short oldButtons;
unsigned short buttons;
int loseFrame;
int fliparoo;

SPRITE enemy;
SPRITE bullet;

int vOffI;
int vOffS;
int hOffS;
int music;

void initialize();
void goToGame();
void goToStart();
void goToPause();
void goToLose();
void goToInstructions();
void lose();
void start();
void game();
void pause();
void instructions();

enum
{
    START,
    INSTRUCTIONS,
    GAME,
    PAUSE,
    LOSE
};
int state;
int main() {
    music = 0;
    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                hideSprites();
                break;
            case LOSE:
                lose();
                hideSprites();
                loseFrameColor(&loseFrame);
                break;
            case INSTRUCTIONS:
                instructions();
                break;
        }

    }

}

void initialize() {

    vOffS = 0;
    hOffS = 0;
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (2 % 4))) | (1 << (8 + (3 % 4)))| (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = (1 << 7) | ((0) << 2) | ((31) << 8) | (0 << 14);
    (*(volatile unsigned short*) 0x400000A) = (0 << 7) | ((1) << 2) | ((30) << 8) | (0 << 14);
    (*(volatile unsigned short*) 0x400000C) = (1 << 7) | ((2) << 2) | ((29) << 8) | (0 << 14);
    (*(volatile unsigned short*) 0x400000E) = (0 << 7) | ((3) << 2) | ((28) << 8) | (0 << 14);
    if (!music) {
        setupSounds();
     setupSoundInterrupts();
        playSoundA(spaceMusic_data, spaceMusic_length, 1);
        music = 1;
    }





    int loseCondition = 0;
    int loseDraw = 0;
    loseFrame = 0;
    fliparoo = 0;
    vOffI = 0;
    vOffS = 0;
    hOffS = 0;


    for (int i = 0; i < 1; i++) {
        enemyArr[i].active = 0;
        enemyArr[0].x = 240 - 16;
        enemyArr[0].y = (rand() % (160 - 16));
        enemyArr[0].dx = 2;
    }
    for (int i = 0; i < 5; i++) {
        bullets[i].active = 0;
        bullets[i].x = enemyArr[0].x;
        bullets[i].y = enemyArr[0].y + 8;
        bullets[i].dx = 3;
    }
    for (int i = 0; i < 1; i++) {
        ufo[i].active = 0;
        ufo[i].x = 240 - 16;
        ufo[i].y = (rand() % (160 - 16));
        ufo[i].dx = 4;

    }

    for (int i = 0; i < 1; i++) {
        blackhole[i].active = 0;
        blackhole[0].x = 0;
        blackhole[0].y = 0;
        blackhole[0].dx = 10;
    }

    for (int i = 0; i < 1; i++) {
        box[i].active = 0;
        box[0].x = 0;
        box[0].y = 0;
        box[0].dx = 10;
    }

     for (int i = 0; i < 5; i++) {
        pBullets[i].active = 0;
        pBullets[i].x = 0;
        pBullets[i].y = 0;
        pBullets[i].dx = 3;
    }




    DMANow(3, startAgainTiles, &((CB*) 0x6000000)[0], 6144 / 2);
    DMANow(3, startAgainMap, &((SB*) 0x6000000)[31], 2048 / 2);

    DMANow(3, colorsTiles, &((CB*) 0x6000000)[1], 192 / 2);
    DMANow(3, anotherRocketMap, &((SB*) 0x6000000)[30], (2048) / 2);

    DMANow(3, colorsTiles, &((CB*) 0x6000000)[3], 192 / 2);
    DMANow(3, planetsHopeMap, &((SB*) 0x6000000)[28], (2048) / 2);

    DMANow(3, colorsPal, ((unsigned short *)0x5000000), 512 / 2);

    goToStart();
}

void goToGame() {
    state = GAME;
    initializeSprites();
    loseCondition = 0;

}

void goToLose() {
    state = LOSE;
}

void goToInstructions() {
    state = INSTRUCTIONS;
}

void goToPause() {
    state = PAUSE;
}

void goToStart() {
    state = START;
    waitForVBlank();
}

void game() {


    if (state == LOSE) {
        return;
    }

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4)))| (1 << 12);
    DMANow(3, gamescreenTiles, &((CB*) 0x6000000)[0], 128/2);
    DMANow(3, gamescreenMap, &((SB*) 0x6000000)[31], 2048/2);
    DMANow(3, gamescreenPal, ((unsigned short *)0x5000000), 256);

    if ((!(~(oldButtons) & ((1<<8))) && (~(buttons) & ((1<<8))))) {
        state = PAUSE;
    }

    drawGame();
    gameControls();
    moveEnemy();
    enemyShoot();
    updateBullets();
    moveUFO();
    moveBH();
    moveBox();
    playerShoot();
    updatePlayerBullets();

    if (collision(5, yPosition, 16, 16, enemyArr[0].x, enemyArr[0].y, 16, 16) && sheild == 0) {
        mgba_printf("collide with enemy");
        state = LOSE;
    }

    for (int i = 0; i < 5; i++) {
        if (collision(5, yPosition, 16, 16, bullets[i].x, bullets[i].y, 16, 16) && sheild == 0) {
            mgba_printf("collide with bullet");
            state = LOSE;
        }
    }

    if (collision(5, yPosition, 16, 16, ufo[0].x, ufo[0].y, 16, 16) && sheild == 0) {
        if (yPosition > ufo[0].y) {
            mgba_printf("collide with ufo");
            state = LOSE;
        }
    }

    if (collision(5, yPosition, 16, 16, blackhole[0].x, blackhole[0].y, 16, 16) && sheild == 0 && blackhole[0].active == 1) {
        mgba_printf("collide with enemy");
        state = LOSE;
    }

}

void start() {
    DMANow(3, colorsPal, ((unsigned short *)0x5000000), 512 / 2);

    waitForVBlank();
    int oddEven = 1;

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << (8 + (1 % 4))) | (1 << (8 + (3 % 4))) | (1 << 12);
    static int startStart = 0;

    if (!startStart) {




        DMANow(3, startAgainTiles, &((CB*) 0x6000000)[0], 6144 / 2);
        DMANow(3, startAgainMap, &((SB*) 0x6000000)[31], 2048 / 2);

        DMANow(3, colorsTiles, &((CB*) 0x6000000)[1], 192 / 2);
        DMANow(3, anotherRocketMap, &((SB*) 0x6000000)[30], (2048) / 2);

        DMANow(3, colorsTiles, &((CB*) 0x6000000)[3], 192 / 2);
        DMANow(3, planetsHopeMap, &((SB*) 0x6000000)[28], (2048) / 2);

        startStart = 1;

    }



    if ((!(~(oldButtons) & ((1<<4))) && (~(buttons) & ((1<<4))))) {
        vOffS = 0;
        hOffS = 0;
        (*(volatile unsigned short*) 0x04000014) = vOffS;
        (*(volatile unsigned short*) 0x04000016) = 0;
        (*(volatile unsigned short*) 0x04000012) = hOffS;
        (*(volatile unsigned short*) 0x04000010) = hOffS;
        goToGame();
    }
    else if ((!(~(oldButtons) & ((1<<5))) && (~(buttons) & ((1<<5))))) {
        vOffS = 0;
        hOffS = 0;
        (*(volatile unsigned short*) 0x04000014) = vOffS;
        (*(volatile unsigned short*) 0x04000012) = hOffS;
        (*(volatile unsigned short*) 0x04000014) = vOffS;
        (*(volatile unsigned short*) 0x04000016) = 0;
        (*(volatile unsigned short*) 0x04000012) = hOffS;
        (*(volatile unsigned short*) 0x04000010) = hOffS;
        waitForVBlank();
        state = INSTRUCTIONS;
    }
    moveBackground();

    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {

        ((SB*) 0x6000000)[28].tilemap[((13) * (32) + (12))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((11) * (32) + (18))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((18) * (32) + (15))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((19) * (32) + (21))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((12) * (32) + (2))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((13) * (32) + (0))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((16) * (32) + (1))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((19) * (32) + (1))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((23) * (32) + (4))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((18) * (32) + (11))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((28) * (32) + (15))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((14) * (32) + (7))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((10) * (32) + (7))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((11) * (32) + (18))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((10) * (32) + (27))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((18) * (32) + (25))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((17) * (32) + (30))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((13) * (32) + (30))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((15) * (32) + (24))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((14) * (32) + (17))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((14) * (32) + (20))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((17) * (32) + (20))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((12) * (32) + (26))] = (2 & 1023) | ((1 & 15) << 12);
        ((SB*) 0x6000000)[28].tilemap[((17) * (32) + (5))] = (2 & 1023) | ((1 & 15) << 12);
# 344 "main.c"
    }



}

void lose() {

    for (int i = 0; i < 7; i++) {
        shadowOAM[i].attr0 = ((160) & 0xFF);
    }
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);
    DMANow(3, l_screenTiles, &((CB*) 0x6000000)[0], 3008/2);
    DMANow(3, l_screenMap, &((SB*) 0x6000000)[31], 2048/2);

    DMANow(3, l_screenPal, ((unsigned short *)0x5000000), 512 / 2);

    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1))))) {
        loseCondition = 0;
        waitForVBlank();
        goToStart();
        initialize();
    }


}

void instructions() {

    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (2 % 4)));


    waitForVBlank();

    DMANow(3, instructionsscreenTiles, &((CB*) 0x6000000)[2], 22720/2);
    DMANow(3, instructionsscreenMap, &((SB*) 0x6000000)[29], 2048/2);
    DMANow(3, instructionsscreenPal, ((unsigned short *)0x5000000), 256);


    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        vOffI = 0;
        (*(volatile unsigned short*) 0x0400001A) = vOffI;
        (*(volatile unsigned short*) 0x04000018) = vOffI;
        state = start;
        waitForVBlank();
        initialize();

    }

    if ((~(buttons) & ((1<<6)))) {
        vOffI = vOffI - 1;
    }

    if ((~(buttons) & ((1<<7)))) {
        vOffI = vOffI + 1;
    }



    (*(volatile unsigned short*) 0x0400001A) = vOffI;

}

void pause() {
    hideSprites();
    DMANow(3, pausescreenTiles, &((CB*) 0x6000000)[0], 128/2);
    DMANow(3, pausescreenMap, &((SB*) 0x6000000)[31], 2048/2);
    DMANow(3, pausescreenPal, ((unsigned short *)0x5000000), 256);
    ((unsigned short *)0x5000000)[1] = (((31) & 31) | ((0) & 31) << 5 | ((28) & 31) << 10);

    if ((!(~(oldButtons) & ((1<<8))) && (~(buttons) & ((1<<8))))) {
        state = GAME;
    }
    if ((!(~(oldButtons) & ((1<<5))) && (~(buttons) & ((1<<5))))) {
        for (int i = 0; i < 7; i++) {
            shadowOAM[i].attr0 = ((160) & 0xFF);
        }
        waitForVBlank();
        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128 * 4);



        initialize();

    }



}

void loseFrameColor(int *loseFrame) {

    if (*loseFrame % 25 == 0) {
        fliparoo = fliparoo + 1;
    }


    if (fliparoo % 2 == 0) {
        ((unsigned short *)0x5000000)[1] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        ((unsigned short *)0x5000000)[2] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
        *loseFrame = *loseFrame + 1;
    } else {
        ((unsigned short *)0x5000000)[2] = (((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10);
        ((unsigned short *)0x5000000)[1] = (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10);
        *loseFrame = *loseFrame + 1;
    }

}

void moveBackground() {
    static int timePassed = 0;


    if (timePassed % 25 == 0) {
        vOffS = vOffS + 3;
        (*(volatile unsigned short*) 0x04000016) = vOffS;
        (*(volatile unsigned short*) 0x04000014) = 0;
    }

    if (timePassed % 15 == 0) {
        hOffS = hOffS + 1;
        (*(volatile unsigned short*) 0x0400001C) = hOffS;
        (*(volatile unsigned short*) 0x0400001E) = 0;
    }

    timePassed = timePassed + 1;
}
