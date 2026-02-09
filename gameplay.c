#include "gameplay.h"
#include "sprites.h"
#include "spritesheet.h"
#include "gba.h"
#include "mode0.h"
#include "print.h"
#include "losingHorn.h"
#include "digitalSound.h"
#include "Gunshot.h"






void initializeSprites() {
    yPosition = 144;
    DMANow(3, spritesheetPal, SPRITE_PAL, spritesheetPalLen / 2);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    hideSprites();
    sheild = 0;
    bhTimer = 0;
    bhWait = 100;
    SPRITE_PAL[4] = RGB(31, 31, 31);
    aboveOrBelow = 0;
    drawBH = 0;
    gotBox = 0;
    powerup = 0;
    jetpack = 0;
    

}

void gameControls() {

    if (BUTTON_HELD(BUTTON_UP) && yPosition > 0) {
        yPosition = yPosition -3;
        jetpack = jetpack + 1;
        
    } else if (BUTTON_HELD(BUTTON_UP) && yPosition == 0) {
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


    if (gotBox == 1 && BUTTON_PRESSED(BUTTON_A)) {
        powerup = 1;
        poweupTimer = 500;
        gotBox = 0;
    }


    if (sheild) {
        if (powerup) {
            SPRITE_PAL[4] = RGB(20, 31, 20);
        } else if (gotBox) {
            SPRITE_PAL[4] = RGB(0, 0, 31);
        } else {
            SPRITE_PAL[4] = RGB(31, 31, 5);
        }
    } else if (powerup) {
        SPRITE_PAL[4] = RGB(31, 0, 0);
    } else if (gotBox) {
        SPRITE_PAL[4] = RGB(15, 15, 15);
    } else {
        SPRITE_PAL[4] = RGB(31, 31, 31);
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










   
}

void drawGame() {

    if (loseCondition == 1) {
        shadowOAM[0].attr0 = ATTR0_Y(160); 
        shadowOAM[1].attr0 = ATTR0_Y(160);
        for (int i = 0; i < 7; i++) {
            shadowOAM[2 + i].attr0 = ATTR0_Y(160);
        }
    } else {
        shadowOAM[0].attr0 = ATTR0_Y(yPosition) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[0].attr1 = ATTR1_X(5) | ATTR1_SMALL;
        //shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 2);
        if (jetpack <= 0) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 2);
        } else if (jetpack < 15) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(2, 2);
        } else {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4, 2);
        }
        
    }

    if (enemyArr[0].active) {

        shadowOAM[1].attr0 = ATTR0_Y(enemyArr[0].y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[1].attr1 = ATTR1_X(enemyArr[0].x) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);

    } else {
        shadowOAM[1].attr0 = ATTR0_Y(160);
    }

    for (int i = 0; i < 5; i++) {
        if (bullets[i].active) {
            shadowOAM[2 + i].attr0 = ATTR0_Y(bullets[i].y) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[2 + i].attr1 = ATTR1_X(bullets[i].x) | ATTR1_TINY; 
            shadowOAM[2 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 4);
        } else {
            shadowOAM[2 + i].attr0 = ATTR0_Y(160);
        }
    }

    if (ufo[0].active) {
        shadowOAM[8].attr0 = ATTR0_Y(ufo[0].y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[8].attr1 = ATTR1_X(ufo[0].x) | ATTR1_SMALL;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 0);
    } else {
        shadowOAM[8].attr0 = ATTR0_Y(160);
    }

    if (blackhole[0].active) {
        shadowOAM[9].attr0 = ATTR0_Y(blackhole[0].y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[9].attr1 = ATTR1_X(blackhole[0].x) | ATTR1_SMALL;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10, 0);
    } else {
        shadowOAM[9].attr0 = ATTR0_Y(160);
    }

    if (box[0].active) {
        shadowOAM[10].attr0 = ATTR0_Y(box[0].y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[10].attr1 = ATTR1_X(box[0].x) | ATTR1_SMALL;
        shadowOAM[10].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 2);
    } else {
        shadowOAM[10].attr0 = ATTR0_Y(160);
    }

     for (int i = 0; i < 5; i++) {
        if (pBullets[i].active && powerup) {
            shadowOAM[11 + i].attr0 = ATTR0_Y(pBullets[i].y) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[11 + i].attr1 = ATTR1_X(pBullets[i].x) | ATTR1_TINY; 
            shadowOAM[11 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 4);
        } else {
            shadowOAM[11 + i].attr0 = ATTR0_Y(160);
        }
    }














    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);


    

   

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
        if (!pBullets[i].active && powerup && BUTTON_PRESSED(BUTTON_B)) {  
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

