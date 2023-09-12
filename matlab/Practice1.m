%You are given two sides of a triangle, a = 4.5 a b = 6. The angle between them is 35 degrees. 
%Write a script to find the third side and the area of the triangle.
%The area of a triangle is given by the formula: area = 1/2 * a * b * sin(angle)
%The third side of a triangle is given by the formula Law of Cosine: c = sqrt(a^2 + b^2 - 2 * a * b * cos(angle))
a=4.5;
b=6;
angle=35;
c=sqrt(a^2+b^2-2*a*b*cosd(angle));
area=1/2*a*b*sind(angle);
fprintf('The third side is %.1f\n',c);
fprintf('The area is %.1f\n',area);

%There are 8 pints in a gallon and 1.76 pints in a liter. The volume of a tank is given as 2 gallons and 4 pints.
%Write a script to find the volume of the tank in liters.
gallon=8;
pint=1.76;
tank=2*gallon+4;
tank_liter=tank/pint;
fprintf('The volume of the tank is %.1f liters.\n',tank_liter);



