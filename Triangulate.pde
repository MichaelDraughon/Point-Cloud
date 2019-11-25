public Point[] points = new Point[100];

void setup() {
  size(1920,1080);
  for (int i=0; i<points.length; i++) {
    points[i] = new Point(random(0,width), random(0,height), random(1,3), random(0, TAU));
  }
}

void draw() {
  frameRate(60);
  background(0);
  strokeWeight(3);
  for (int i=0; i<points.length; i++) {
    stroke(255);
    points[i].show();
    points[i].update();
    if (points[i].x > width || points[i].x < 0 || points[i].y > height || points[i].y < 0) {
      points[i] = new Point(random(0,width), random(0,height), random(0,5), random(0, TAU));
    }
    strokeWeight(1);
    for (int j=0; j<points.length; j++) {
      if (sqrt(pow(points[i].x - points[j].x, 2) + pow(points[i].y - points[j].y, 2)) < 200) {
        stroke(i * 2.55, j * 2.55, 127);
        line(points[i].x, points[i].y, points[j].x, points[j].y);
        stroke(255);
      }
    }
    strokeWeight(3);
  }
}

Point[] bubble(Point[] p) {
  return p;
}