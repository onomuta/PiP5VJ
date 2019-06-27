//====Scene1===========================================================
class Scene1 {
  int num = 20;
  float colW = width/num;
  float colH = height/num;
  float[] colY = new float[num];
  float[] colYSpeed = new float[num];
  float[] colColor = new float[num];
  void init() {
    noStroke();
    for(int i = 0 ; i < num ; i++) {
      colYSpeed[i] = random(10)+7;
      colY[i] = random(height);
    };
      println("1");
  };
  void run() {
    for(int i = 0; i < num; i++){
      if(colY[i] < 0 - colH -400){
        colYSpeed[i] = random(10)+7;
        colY[i] = height + colH;
      }
      colY[i] = colY[i] - colYSpeed[i];

      pushMatrix();
        translate(colW * i, colY[i]);
        fill(20, 60, 100);
        scale(0.8);
        translate(20,0);
        beginShape(QUADS);
          vertex(0,  random(400));
          vertex( colW,  random(400));
          vertex( colW, 0);
          vertex(0, 0);
        endShape();
      popMatrix();
    };
  };
}

//====Scene2===========================================================
class Scene2 {
  int num = 8;
  float colH = 20;
  float[] colY = new float[num];
  void init() {
    noStroke();
    fill(100);
  };
  void run() {
    fill(100);
    if(colY[0] < 0 - 20){
      colY[0] = height + 20;
    }
    colY[0] = colY[0] - 10;
    
    pushMatrix();
      translate(0, colY[0]);
      beginShape(QUADS);
        vertex(0,  20);
        vertex( width,  20);
        vertex( width, 0);
        vertex(0, 0);
      endShape();
    popMatrix();
    
  };
}

//====Scene3===========================================================
class Scene3 {
  int num = 8;
  float[] pX = new float[num];
  float[] pY = new float[num];

  void init() {
    fill(100);
    noStroke();
  };
  void run() {
    background(0);
    fill(100);

    for(int i = 0; i < num; i ++){
      pX[i] = noise(frameCount/30. + i * 1.321,i * 923)*width * 1.4 - width *0.15;
      pY[i] = noise(frameCount/30. + i * 3.123,i*12345) *height * 1.4- height *0.15;
    }

    beginShape();
    for(int i = 0; i < num; i ++){
      vertex(pX[i], pY[i]);
    }
    endShape();

        beginShape();
    for(int i = 0; i < num; i ++){
      vertex(width -pX[i], pY[i]);
    }
    endShape();

  };
}

//====Scene4===========================================================
class Scene4 {
  void init() {
  };
  int frame = 0;
  void run() {
    background(0);
    noStroke();
    fill(100);

    float pW = random(400);    
    float pH = random(400);    
    float pX = random(width);    
    float pY = random(height);

    pushMatrix();
      translate(pX, pY);
      beginShape(QUADS);
        vertex(-pW/2,  -pH/2);
        vertex( pW/2, -pH/2);
        vertex( pW/2, pH/2);
        vertex(-pW/2, pH/2);
      endShape();
    popMatrix();
     pushMatrix();
      translate(pX, pY);
      beginShape(QUADS);
        vertex(-pW/2,  -pH/2);
        vertex( pW/2, -pH/2);
        vertex( pW/2, pH/2);
        vertex(-pW/2, pH/2);
      endShape();
    popMatrix();

  };
}

//====Scene5===========================================================
class Scene5 {
  void init() {
  };

  int num = 10;
  void run() {
    background(0);
    noStroke();
    fill(100);

    // float pW = random(400);    
    // float pH = random(400);    
    float pX = random(width);    
    float pY = random(height);


    for(int i =0; i < num ; i++){
      for(int j =0; j < height/(width / num) +1 ; j++){
        float pW = random(60);
        float pH = random(20);
        fill((int)random(2) *100);
        pushMatrix();
          translate( i * width / num , j * width / num);

          translate(noise(frameCount/100.123,i*100 + j*3000)*100,noise(frameCount/78.63,i*200 + j*6000)*100);

          rotate((int)random(2) *PI/2);

          fill(0, (int)random(2) *  60,100);
          

          beginShape(QUADS);
            vertex(-pW, -pH);
            vertex( pW, -pH);
            vertex( pW, pH);
            vertex(-pW, pH);
          endShape();
        popMatrix();
      }
    }
  };
};


//====Scene6===========================================================
class Scene6 {
  int num = 8;
  float YS[] = new float[num];
  float colW = width/8;
  float colH = 10;
  float colY[] = new float[num];
  float[] colHue = new float[num];
  
  void init() {
    fill(1);
    for(int i = 0; i < num; i++){
      YS[i] = random(16)+8;
    };
  };

  void run() {
    background(0);
    
    for(int i = 0; i < num; i++){
      if(colY[i] < 0 - colH){
        YS[i] = (random(16)+8);
      }
      if(colY[i] > height - colH){
        YS[i] = -(random(16)+8);
      }
      colY[i] = colY[i] + YS[i];

      if(random(1) < 0.1){
        colY[i] = random(height);
      }
      fill(100);      
      pushMatrix();
      translate( width/num * i + (width/num/2), colY[i]);
      beginShape(QUADS);
        vertex(-70, -colH + random(80));
        vertex( 70, -colH + random(80));
        vertex( 70, colH + random(80));
        vertex(-70, colH + random(80));
      endShape();
      popMatrix();
    };
  };
}


//====Scene7===========================================================
class Scene7 {
  void init() {
    fill(100);
  };
  void run() {
    fill(100);

    
    translate(width/2, height/2);
    // translate(0, height/2);
    
    rotate(radians(frameCount *4));
    rect(-width,-3,2*width,6);
    rotate(radians(60));
    rect(-width,-3,2*width,6);
    rotate(radians(60));
    rect(-width,-3,2*width,6);
    
  };
}


//====Scene8===========================================================
class Scene8 {
  void init() {
    fill(100);
    noStroke();
  };
  
  int count = 0;
  
  void run() {
    
    if(count/4 %2 == 0){
      fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
    }else{
      fill(0);
    }
    
    rect(0,0,width, height);
    count ++;
  };
}

//====Scene9===========================================================
class Scene9 {
  void init() {
    fill(100);
    noStroke();
  };
  
  int num = 5;
  float[] life = new float[num];
  float[] s = new float[num];
  float[] r = new float[num];
  float[] c = new float[num];
  
  void run() {
    translate(width/2, height/2);
    translate(0, height/2);
    for(int i = 0; i < num; i++){
      fill(c[i],1,1);
      
      rotate(radians(r[i]));
      rect(life[i] - width * 0.8,-5,40,10);
      rotate(-radians(r[i]));
      life[i] -= s[i];
      
      if(life[i] <= 0){
        life[i] = width * 1.6;
        //r[i] = random(360);
        r[i] = (random(80)-40) + ( 180 * round(random(1)));
        s[i] = random(8) +6;
        c[i] = random(1);
      }
    }
  };
}
//====Scene10===========================================================
class Scene10 {
  void init() {
    noStroke();
  };
  
  float time = 0;
  float y = 0;
  
  float cellW = width/8;
  float cellH = height/8;
  
  void run() {
    fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
    background(0);    
    for(int i = 0; i< 8; i ++){
      fill((baseColor[0]+ random(0.15)) % 1,baseColor[1],baseColor[2]);
      y = (sin(time + i/2.)+1) * (height - cellH) /2;
      rect(i*cellW, y, cellW, cellH);
    }    
    time = time + 0.1;
  };
}

//====Scene11===========================================================
class Scene11 {
  int num = 8;
  float colH = 20;
  float[] colY = new float[num];
  void init() {
    noStroke();
    fill(100);
  };
  void run() {
     if(colY[0] < 0 - 20){
      colY[0] = height + 20;
    }
    colY[0] = colY[0] - 10;
    rect(0, colY[0], width, 20);
  };
}