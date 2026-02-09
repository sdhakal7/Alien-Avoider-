#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "startS.h"
#include "gamescreen.h"
#include "instructionsscreen.h"
#include "pausescreen.h"
#include "gameplay.h"
#include "losescreen.h"
#include "l_screen.h"
#include "colors.h"
#include "rocketships.h"
#include "planets.h"
#include "startScreen.h"
#include "rocket.h"
#include "anotherRocket.h"
#include "planetsHope.h"
#include "startAgain.h"
#include "spaceMusic.h"
#include "digitalSound.h"
#include "spaceCadetClean.h"
#include "losingHorn.h"

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
        buttons = REG_BUTTONS;

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
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(2) | BG_ENABLE(3)| SPRITE_ENABLE;
    REG_BG0CNT = BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG1CNT = BG_4BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_8BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL;
    REG_BG3CNT = BG_4BPP | BG_CHARBLOCK(3) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
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

    
    

    DMANow(3, startAgainTiles, &CHARBLOCK[0], startAgainTilesLen / 2);
    DMANow(3, startAgainMap, &SCREENBLOCK[31], startAgainMapLen / 2);

    DMANow(3, colorsTiles, &CHARBLOCK[1], colorsTilesLen / 2);
    DMANow(3, anotherRocketMap, &SCREENBLOCK[30], anotherRocketLen / 2);

    DMANow(3, colorsTiles, &CHARBLOCK[3], colorsTilesLen / 2);
    DMANow(3, planetsHopeMap, &SCREENBLOCK[28], planetsHopeLen / 2);

    DMANow(3, colorsPal, BG_PALETTE, colorsPalLen / 2);

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

    REG_DISPCTL = MODE(0) | BG_ENABLE(0)| SPRITE_ENABLE;
    DMANow(3, gamescreenTiles, &CHARBLOCK[0], gamescreenTilesLen/2); 
    DMANow(3, gamescreenMap, &SCREENBLOCK[31], gamescreenMapLen/2);
    DMANow(3, gamescreenPal, BG_PALETTE, 256); 

    if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
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
    DMANow(3, colorsPal, BG_PALETTE, colorsPalLen / 2);
   
    waitForVBlank();
    int oddEven = 1;

    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1) | BG_ENABLE(3) | SPRITE_ENABLE;
    static int startStart = 0;
    
    if (!startStart) {

        
    

        DMANow(3, startAgainTiles, &CHARBLOCK[0], startAgainTilesLen / 2);
        DMANow(3, startAgainMap, &SCREENBLOCK[31], startAgainMapLen / 2);

        DMANow(3, colorsTiles, &CHARBLOCK[1], colorsTilesLen / 2);
        DMANow(3, anotherRocketMap, &SCREENBLOCK[30], anotherRocketLen / 2);

        DMANow(3, colorsTiles, &CHARBLOCK[3], colorsTilesLen / 2);
        DMANow(3, planetsHopeMap, &SCREENBLOCK[28], planetsHopeLen / 2);

        startStart = 1;

    }
 

    
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        vOffS = 0;
        hOffS = 0;
        REG_BG1HOFF = vOffS;
        REG_BG1VOFF = 0;
        REG_BG0VOFF = hOffS;
        REG_BG0HOFF = hOffS;
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_LEFT)) {
        vOffS = 0;
        hOffS = 0;
        REG_BG1HOFF = vOffS;
        REG_BG0VOFF = hOffS;
        REG_BG1HOFF = vOffS;
        REG_BG1VOFF = 0;
        REG_BG0VOFF = hOffS;
        REG_BG0HOFF = hOffS;
        waitForVBlank();
        state = INSTRUCTIONS;
    }
    moveBackground();

    if (BUTTON_PRESSED(BUTTON_A)) {

        SCREENBLOCK[28].tilemap[OFFSET(12, 13, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(18, 11, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(15, 18, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(21, 19, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(2, 12, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(0, 13, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(1, 16, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(1, 19, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(4, 23, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(11, 18, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(15, 28, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(7, 14, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(7, 10, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(18, 11, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(27, 10, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(25, 18, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(30, 17, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(30, 13, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(24, 15, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(17, 14, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(20, 14, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(20, 17, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(26, 12, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        SCREENBLOCK[28].tilemap[OFFSET(5, 17, 32)] = TILEMAP_ENTRY_TILEID(2) | TILEMAP_ENTRY_PALROW(1);
        
        

        
        
        

        



    }
    
    

}

void lose() {
    
    for (int i = 0; i < 7; i++) {
        shadowOAM[i].attr0 = ATTR0_Y(160);
    }
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    DMANow(3,  l_screenTiles, &CHARBLOCK[0], l_screenTilesLen/2); 
    DMANow(3, l_screenMap, &SCREENBLOCK[31], l_screenMapLen/2);

    DMANow(3, l_screenPal, BG_PALETTE, l_screenPalLen / 2);

    if (BUTTON_PRESSED(BUTTON_B)) {
        loseCondition = 0;
        waitForVBlank();
        goToStart();
        initialize();
    }
    

}

void instructions() {

    REG_DISPCTL = MODE(0) | BG_ENABLE(2);


    waitForVBlank();

    DMANow(3, instructionsscreenTiles, &CHARBLOCK[2], instructionsscreenTilesLen/2); 
    DMANow(3, instructionsscreenMap, &SCREENBLOCK[29], instructionsscreenMapLen/2);
    DMANow(3, instructionsscreenPal, BG_PALETTE, 256); 

    
    if (BUTTON_PRESSED(BUTTON_A)) {
        vOffI = 0;
        REG_BG2VOFF = vOffI;
        REG_BG2HOFF = vOffI;
        state = start;
        waitForVBlank();
        initialize();
        
    }

    if (BUTTON_HELD(BUTTON_UP)) {
        vOffI = vOffI - 1;
    }   
    
    if (BUTTON_HELD(BUTTON_DOWN)) {
        vOffI = vOffI + 1;   
    }

   
    
    REG_BG2VOFF = vOffI;

}

void pause() {
    hideSprites();
    DMANow(3, pausescreenTiles, &CHARBLOCK[0], pausescreenTilesLen/2); 
    DMANow(3, pausescreenMap, &SCREENBLOCK[31], pausescreenMapLen/2);
    DMANow(3, pausescreenPal, BG_PALETTE, 256); 
    BG_PALETTE[1] = RGB(31, 0, 28);

    if (BUTTON_PRESSED(BUTTON_RSHOULDER)) {
        state = GAME;
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        for (int i = 0; i < 7; i++) {
            shadowOAM[i].attr0 = ATTR0_Y(160);
        }
        waitForVBlank();
        DMANow(3, shadowOAM, OAM, 128 * 4);


        
        initialize();

    }
    


}

void loseFrameColor(int *loseFrame) {

    if (*loseFrame % 25 == 0) {
        fliparoo = fliparoo + 1;
    }
    
    
    if (fliparoo % 2 == 0) {
        BG_PALETTE[1] = RGB(31, 0, 0);
        BG_PALETTE[2] = RGB(31, 31, 31);
        *loseFrame = *loseFrame + 1;
    } else {
        BG_PALETTE[2] = RGB(31, 0, 0);
        BG_PALETTE[1] = RGB(31, 31, 31);
        *loseFrame = *loseFrame + 1;
    }

}

void moveBackground() {
    static int timePassed = 0;

    
    if (timePassed % 25 == 0) {
        vOffS = vOffS + 3; 
        REG_BG1VOFF = vOffS;
        REG_BG1HOFF = 0;
    }

    if (timePassed % 15 == 0) {
        hOffS = hOffS + 1;  
        REG_BG3HOFF = hOffS;
        REG_BG3VOFF = 0;
    }

    timePassed = timePassed + 1;
}

