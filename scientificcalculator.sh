clear
i="y"

while [ $i = "y" ]
do

echo "******************** CALCULATOR **************************"
echo "\n\t1. Addition"
echo "\t2. Subtraction"
echo "\t3. Multiplication"
echo "\t4. Division"
echo "\t5. Square"
echo "\t6. Square Root"
echo "\t7. Qube"
echo "\t8. Power"
echo "\t9. Remainder"
echo "\t10. Natural Logarithm"
echo "\t11. Exponential" 
echo "\t12. Sine"
echo "\t13. Cosine"
echo "\t14. Length"
echo "\t15. Number Conversion"
echo "\n**********************************************************"
echo "Enter your choice:"
read ch
case $ch in
    1)echo "\nEnter two nos:"
	read n1 n2
       sum=`expr $n1 + $n2`
     echo "Addition = "$sum;;
    2)echo "\nEnter two nos:"
	read n1 n2
	sub=`expr $n1 - $n2`
     echo "Subtraction = "$sub;;
    3)echo "\nEnter two nos:"
	read n1 n2
	mul=`expr $n1 \* $n2`
     echo "Multiplication = "$mul;;
    4)echo "\nEnter two nos:"
	read n1 n2
	div=`expr $n1 / $n2`
     echo "Division = "$div;;
    5)echo "\nEnter the no:"
	read n
	sq=$(echo "$n^2" | bc)
     echo "Square = " $sq;;
    6)echo "\nEnter the no:"
	read n
	sqr=$(echo "sqrt($n)" | bc)
     echo "Square root = " $sqr;;
    7)echo "\nEnter the no:"
	read n
	qb=$(echo "$n^3" | bc)
     echo "Qube = " $qb;;
    8)echo "\nEnter two nos:"
	read n1 n2
	po=$(echo "$n1^$n2" | bc)
     echo "Power = " $po;;
    9)echo "\nEnter two nos:"
	read n1 n2
	rem=$(echo "$n1%$n2" | bc)
     echo "Remainder = "$rem;;
    10)echo "\nEnter the no:"
	read n
	log=$(echo "l($n)" | bc -l)
     echo "Log = "$log;;
    11)echo "\nEnter the no:"
	read n
	exp=$(echo "e($n)" | bc -l)
     echo "Exponential = "$exp;;
    12)echo "\nEnter the no:"
	read n
	sin=$(echo "s($n)" | bc -l)
     echo "Sine = "$sin;;
    13)echo "\nEnter the no:"
	read n
	cs=$(echo "c($n)" | bc -l)
     echo "Cosine = "$cs;;
    14)echo "\nEnter the no:"
	read n
	ln=$(echo "length($n)" | bc -l)
     echo "Length = "$ln;;

	15)echo "******************** Number Conversion ********************"
echo "\t1. Convert Decimal to Binary"
echo "\t2. Convert Decimal to Octal"
echo "\t3. Convert Decimal to Hexadecimal"
echo "\t4. Convert Binary to Decimal"
echo "\t5. Convert Binary to Octal"
echo "\t6. Convert Binary to Hexadecimal"
echo "\t7. Convert Octal to Binary"
echo "\t8. Convert Octal to Decimal"
echo "\t9. Convert Octal to Hexadecimal"
echo "\t10. Convert Hexadecimal to Binary"
echo "\t11. Convert Hexadecimal to Decimal"
echo "\t12. Convert Hexadecimal to Octal"
echo "\n***********************************************************"
echo "Enter your choice:"
	read ch1
	case $ch1 in
	1)echo "\nEnter the Decimal no:"
	read n
	cs=$(echo "obase=2;$n" | bc -l)
     echo "Binary no = "$cs;;
	2)echo "\nEnter the Decimal no:"
	read n
	cs=$(echo "obase=8;$n" | bc -l)
     echo "Octal no = "$cs;;
	3)echo "\nEnter the Decimal no:"
	read n
	cs=$(echo "obase=16;$n" | bc -l)
     echo "Hexadecimal no = "$cs;;
	4)echo "\nEnter the Binary no:"
	read n
	cs=$(echo "ibase=2;$n" | bc -l)
     echo "Decimal no = "$cs;;
	5)echo "\nEnter the Binary no:"
	read n
	cs=$(echo "ibase=2;obase=8;$n" | bc -l)
     echo "Octal no = "$cs;;
	6)echo "\nEnter the Binary no:"
	read n
	cs=$(echo "ibase=2;obase=10000;$n" | bc -l)
     echo "Hexadecimal no = "$cs;;
	7)echo "\nEnter the Octal no:"
	read n
	cs=$(echo "ibase=8;obase=2;$n" | bc -l)
     echo "Binary no = "$cs;;
	8)echo "\nEnter the Octal no:"
	read n
	cs=$(echo "ibase=8;$n" | bc -l)
     echo "Decimal no = "$cs;;
	9)echo "\nEnter the Octal no:"
	read n
	cs=$(echo "ibase=8;obase=16;$n" | bc -l)
     echo "Hexadecimal no = "$cs;;
	10)echo "\nEnter the Hexadecimal no:"
	read n
	cs=$(echo "ibase=16;obase=2;$n" | bc -l)
     echo "Binary no = "$cs;;
	11)echo "\nEnter the Hexadecimal no:"
	read n
	cs=$(echo "ibase=16;$n" | bc -l)
     echo "Decimal no = "$cs;;
	12)echo "\nEnter the Hexadecimal no:"
	read n
	cs=$(echo "ibase=16;obase=8;$n" | bc -l)
     echo "Octal no = "$cs;;
 *)echo "Invalid choice!";;
esac
;;
	
    *)echo "Invalid choice!";;
esac
echo "\n***********************************************************"
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
    exit
fi
done    

