#area of a triangle

#area= (1/2) x base x height
echo -n "Enter the base of a triangle"
read base

echo -n "Enter the height of a triangle"
read height

#calculate the answe and display back
area=$(echo "scale=2;(1/2) * $b *h"|bc)
echo "Area of a triangle is $area"
