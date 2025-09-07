float gewicht = 70;
int lengteInput = 175;
float lengte = 175;
String a = "Met een gewicht van";
String kg = "kg";
String b = "en een lengte van";
String c = "cm, is jouw BMI ";
lengte /= 100;
float BMI;

BMI = gewicht/(lengte*lengte);
BMI = round(BMI);
BMI = int (BMI);
println(a+" "+gewicht+" "+kg+" "+b+" "+lengteInput+" "+c+BMI);
