Scene1 scene1;
Scene2 scene2;
Scene3 scene3;
Scene4 scene4;
Scene5 scene5;
Scene6 scene6;
Scene7 scene7;
Scene8 scene8;
Scene9 scene9;
Scene10 scene10;
Scene11 scene11;

int sceneCount = 11;
float[] sceneBtn  = new float[sceneCount];
float[] currentSceneBtn  = new float[sceneCount];

float[] baseColor ={0.5, 1, 1};
int scene;

int btnCount = 0;

float colorR = 0;
float colorG = 0;
float colorB = 0;

void setup() {
  colorMode(HSB, 1);
  size(320, 180,P3D);
  frameRate(60);

  scene1 = new Scene1();
  scene2 = new Scene2();
  scene3 = new Scene3();
  scene4 = new Scene4();
  scene5 = new Scene5();
  scene6 = new Scene6();
  scene7 = new Scene7();
  scene8 = new Scene8();
  scene9 = new Scene9();
  scene10 = new Scene10();
  scene11 = new Scene11();
};

int count = 0;
int push = 0;

int piano = 1;
float pianoPos = 0;
int currentScene = 0;

void draw() {
  colorSelector();

  background(0);
  if (piano == 1) {
    fill(baseColor[0], baseColor[1], baseColor[2]);
    rect(pianoPos * width - 10, 0, 2, height);
  };
  if (scene == 1) {
    if (currentScene != scene) {
      scene1.init();
    };    
    scene1.run();
  } else if (scene==2) {
    if (currentScene != scene) {
      scene2.init();
    };
    scene2.run();
  } else if (scene==3) {
    if (currentScene != scene) {
      scene3.init();
    };
    scene3.run();
  } else if (scene==4) {
    if (currentScene != scene) {
      scene4.init();
    };
    scene4.run();
  } else if (scene==5) {
    if (currentScene != scene) {
      scene5.init();
    };
    scene5.run();
  } else if (scene==6) {
    if (currentScene != scene) {
      scene6.init();
    };
    scene6.run();
  } else if (scene==7) {
    if (currentScene != scene) {
      scene7.init();
    };
    scene7.run();
  } else if (scene==8) {
    if (currentScene != scene) {
      scene8.init();
    };
    scene8.run();
  } else if (scene==9) {
    if (currentScene != scene) {
      scene9.init();
    };
    scene9.run();
  } else if (scene==10) {
    if (currentScene != scene) {
      scene10.init();
    };
    scene10.run();
  } else if (scene==11) {
    if (currentScene != scene) {
      scene11.init();
    };
    scene11.run();
  };
  currentScene = scene;
  sceneSelect();
};

void sceneSelect() {
  for (int i = 0; i < sceneCount; i ++) {
    if (currentSceneBtn[i] != sceneBtn[i]) {
      currentSceneBtn[i] = sceneBtn[i];
      if (sceneBtn[i] > 0) {
        scene = i +1 ;
      };
    };
    btnCount += sceneBtn[i];
  };
  if (btnCount == 0) {
    //scene = 0;
    scene = md ;     //////////////////////////////////////////////////test Scene
  } else {
    btnCount = 0;
  }
  println("Scene : "+scene);
  println(baseColor[0]);
};

int md = 0;

void mouseClicked() {
  md ++;
  md = md % sceneCount;
}



void colorSelector() {
  if (colorR == 1 && colorG == 1 && colorB == 1) {
    baseColor[0] = random(1);
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 0 && colorG == 0 && colorB == 0) {
    baseColor[0] = 1;
    baseColor[1] = 0;
    baseColor[2] = 1;
  } else if (colorR == 1 && colorG == 0 && colorB == 0) {
    baseColor[0] = 0;
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 1 && colorG == 1 && colorB == 0) {
    baseColor[0] = 0.15;
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 0 && colorG == 1 && colorB == 0) {
    baseColor[0] = 0.3;
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 0 && colorG == 1 && colorB == 1) {
    baseColor[0] = 0.5;
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 0 && colorG == 0 && colorB == 1) {
    baseColor[0] = 0.65;
    baseColor[1] = 1;
    baseColor[2] = 1;
  } else if (colorR == 1 && colorG == 0 && colorB == 1) {
    baseColor[0] = 0.85;
    baseColor[1] = 1;
    baseColor[2] = 1;
  }
};


void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorR ++;
    colorR = colorR % 2;
  } else if (key == 'g' || key == 'G') {
    colorG ++;
    colorG = colorG % 2;
  } else if (key == 'b' || key == 'B') {
    colorB ++;
    colorB = colorB % 2;
  }
}