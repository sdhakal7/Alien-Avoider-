
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