void setup() {
    size(600, 400);
    noStroke();
}

void draw() {
    background(0);
    nyoro(15, width / 2, height / 2);
    nyoro(20, width, height / 4);
    nyoro(30, width + 100, 3 * height / 4);
}

void nyoro(int n, int x, int y) {
    for (int i = 0; i < n; i++) {
        fill(255, (n - i) * 255 / n);
        ellipse(
            x - n * i * width / 500, 
            y + 50 * cos(radians(n * i)), 
            (n - i) * 2, 
            (n - i) * 2
            );
    }
}
