PImage img;
int p = 30;

void setup() {
    img = loadImage("sfc.jpg");
    size(720, 450);
    rectMode(CENTER);
    noStroke();
}

void draw() {
    background(0);
    image(img, 0, 0, width, height);
    for (int y = 0; y < img.height; y+=p) {
        for (int x = 0; x < img.width; x+=p) {
            color c = img.get(x, y);
            fill(c);
            float d = dist(mouseX, mouseY, x / 2 + p / 4, y / 2 + p / 4);
            if (d > 100)
                rect(x / 2 + p / 4, y / 2 + p / 4, p / 2, p / 2);
        }
    }
}
