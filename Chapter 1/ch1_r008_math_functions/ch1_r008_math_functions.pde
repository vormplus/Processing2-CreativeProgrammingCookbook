/**
 * Source-Code:    https://github.com/vormplus/Processing2-CreativeProgrammingCookbook
 * Book:           http://www.packtpub.com/processing-2-creative-programming-cookbook/book
 * Copyright:      Packt Publishing 2012.
 * Author:         Jan Vantomme
 */
 
int x = 177;
int y = -189;
float a = 32.75;
float b = -70.38;

float[] numbers = {a, b, x, y};

println("The absolute value of " + a + " is " + abs(a) );
println("The absolute value of " + b + " is " + abs(b) );
println("The absolute value of " + y + " is " + abs(y) );
println("The closest int value greater than (or equal to) " + x + " is " + ceil(x) );
println("The closest int value greater than (or equal to) " + a + " is " + ceil(a) );
println("The closest int value greater than (or equal to) " + b + " is " + ceil(b) );
println("The closest int value less than (or equal to) " + y + " is " + floor(y) );
println("The closest int value less than (or equal to) " + a + " is " + floor(a) );
println("The closest int value less than (or equal to) " + b + " is " + floor(b) );
println("The closest int value to " + a + " is " + round(a) );
println("The closest int value to " + b + " is " + round(b) );
println("The square number of " + x + " is " + sq(x) );
println("The square number of " + b + " is " + sq(b) );
println("The square root of " + x + " is " + sqrt(x) );
println("The square root of " + a + " is " + sqrt(a) );
println("The square root of " + b + " is " + sqrt(b) );
println("The smallest number in the list {" + a + "," + b + "," + x + "," + y + "} is " + min( numbers ) ); 
println("The largest number in the list {" + a + "," + b + "," + x + "," + y + "} is " + max( numbers ) ); 
println("The distance between (" + x + ", " + y + ") and (" + a + ", " + b + ") is " + dist(x, y, a, b ) );
