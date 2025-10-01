float cijferEen = 5.5;
float cijferTwee = 6.7;
float cijferDrie = 8.4;
float gemiddelde =0;

gemiddelde = (cijferEen+cijferTwee+cijferDrie)/3;

gemiddelde *= 10;
gemiddelde = (int) gemiddelde;
gemiddelde /= 10;
println(gemiddelde);
