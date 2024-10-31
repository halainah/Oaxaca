void setup() {
  size(600, 800);
}

void draw() {
  background(170, 199, 234); // Set the background colour


  // Draw concrete road
  fill(150); // Grey colour for concrete
  rect(0, height - 100, width, 100); // Ground rectangle
  
  // Draw tiles on the road
  stroke(100); // Grey for the tile lines
  for (int i = 0; i < width; i += 50) { // Vertical lines every 50 pixels
    line(i, height - 100, i, height);
  }
  for (int j = height - 100; j < height; j += 50) { // Horizontal lines every 50 pixels
    line(0, j, width, j);
  }

// Draw yellow crossing 
  noStroke();
  fill(285, 204, 0, 100); // Transparent yellow colour
  for (int i = 0; i < 5; i++) { // 5 crossing stripes
    rect(225, height - 75 + (i * 15), 150, 10); // Position each stripe
  }

  
  // Draw building
  fill(300, 105, 150); // Hot pink colour for the top
  rect(150, height - 550, 300, 375); // Hot pink part (200 pixels high)

  fill(139, 0, 0); // Red colour for the bottom
  rect(150, height - 187.5, 300, 120); // Red part (87.5 pixels high)

  // Draw  roof level 1 (red)
  fill(108, 20, 9); // Dark red colour for the roof
  rect(150, height - 550 - 20, 300, 20); // Flat roof (20 pixels high)

// Draw roof detail
  fill(108, 20, 9); // dark red colour 
  for (int i = 0; i < 300; i += 20) { //  half circles along the roof
    arc(150 + i + 10, height - 550, 20, 20, 0, PI);
  }
  
    // Draw  roof level 2 (white part)
  fill(255, 255, 228); // white
  rect(150, height - 575 - 8, 300, 15); // Flat roof (15 pixels high)
  
      // Draw  roof level 3 (thin red trim part)
  fill(108, 20, 9); // red
  rect(150, height - 575 - 8, 300, 5); // Flat roof (20 pixels high)


  //  off-white and charcoal grey (flashes every 2 seconds)
     if (frameCount % 120 < 60) {
    fill(255, 255, 228); // Off-white for the first second
  } else {
    fill(50, 50, 50); // Charcoal grey for the next second
  }

  // Draw windows on the first story
  rect(215, height - 225, 60, 155); // Left window on 1st story
  rect(325, height - 225, 60, 155); // Right window on 1st story
  
  // Draw grid pattern on the first story windows
  stroke(0); // Black grid lines
  strokeWeight(1);
  for (int i = 0; i <= 5; i++) { // Vertical lines
    line(215 + (i * 12), height - 225, 215 + (i * 12), height - 70);
    line(325 + (i * 12), height - 225, 325 + (i * 12), height - 70);
  }
  for (int j = 0; j <= 12; j++) { // Horizontal lines
    line(215, height - 225 + (j * 12), 275, height - 225 + (j * 12));
    line(325, height - 225 + (j * 12), 385, height - 225 + (j * 12));
  }

  // Draw windows on the second story
  rect(215, height - 455, 60, 140); // Left window on 2nd story
  rect(325, height - 455, 60, 140); // Right window on 2nd story
  
  // Draw grid pattern on the second story windows
  for (int i = 0; i <= 5; i++) { // Vertical lines
    line(215 + (i * 12), height - 455, 215 + (i * 12), height - 315);
    line(325 + (i * 12), height - 455, 325 + (i * 12), height - 315);
  }
  for (int j = 0; j <= 12; j++) { // Horizontal lines
    line(215, height - 455 + (j * 10), 275, height - 455 + (j * 10));
    line(325, height - 455 + (j * 10), 385, height - 455 + (j * 10));
  }

  // Draw building to the left 
  fill(225, 173, 1); // mustard colour
  rect(0, height - 280, 150, 212); //size 
  
    // Draw open door of building to the left 
  fill(0, 0, 0); // black colour
  rect(0, height - 200, 110, 120); //size 
  
      // Draw red trim on door 
  fill(108, 20, 9); // red
  rect(0, height - 220 - 8, 110, 10); 
  
  // Draw red car on the left side 
  fill(245, 0, 0); // Red colour for car body
  rect(25, height - 100, 100, 40, 10); // Car body with rounded edges 

  fill(0); // Black tyres
  ellipse(50, height - 60, 20, 20); // Left tyre
  ellipse(110, height - 60, 20, 20); // Right tyre

  fill(255); // White windows
  rect(45, height - 93, 70, 20,10); // rounded car windows
  
 
 }
