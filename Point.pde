class Point {
  public float x;
  public float y;
  public float r;
  public float t;
  public float time;
  public Point(float x_, float y_, float r_, float t_) {
    x = x_;
    y = y_;
    r = r_;
    t = t_;
    time = 0;
  }
  public void show() {
    point(x, y);
  }

  public void update() {
    x += r * cos(t);
    y += r * sin(t);
    time++;
  }

//sqrt(pow(x - p.x, 2) + pow(y - p.y, 2))
}