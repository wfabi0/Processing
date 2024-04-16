float[] data;
int barWidth;
float[] targets;
float[] speeds;
color[] colors;

void setup() {
  size(800, 600);
  data = new float[7];
  targets = new float[data.length];
  speeds = new float[data.length];
  colors = new color[data.length];
  barWidth = width / data.length;
  for (int i = 0; i < data.length; i++) {
    data[i] = random(height); 
    targets[i] = random(height);
    speeds[i] = random(0.5, 2);
    colors[i] = color(random(0, 255), random(1, 255), random(1, 255));
  }
}

void draw() {
  background(0);

  for (int i = 0; i < data.length; i++) {
    if (data[i] <= 0 || data[i] >= height) {
      speeds[i] *= -1; 
      targets[i] = random(height); 
    }
    data[i] += speeds[i];
  }

  // 
  for (int i = 0; i < data.length; i++) {
    fill(colors[i]);
    float x = i * barWidth;
    float y = height - data[i]; 
    rect(x, y, barWidth, data[i]); 
  }
}
