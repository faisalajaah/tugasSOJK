#!/bin/bash
echo "Program perhitungan pajak penghasilan"
echo -n "Masukkan gaji anda  : "
read gaji

if [ $gaji -le 10000000 ]
then
	satu=`expr $gaji \* 15 / 100`
	echo "PPH = $satu"
elif [ $gaji -le 35000000 ]
then
	satu=`expr 10000000 \* 15 / 100`
	dua=`expr $gaji - 10000000`
	tiga=`expr $dua \* 25 / 100`
	empat=`expr $satu + $tiga`
	echo "PPH = $empat "
elif [ $gaji -gt 35000000 ]
then
	satu=`expr 10000000 \ *15 / 100`
	dua=`expr 25000000 \* 25 / 100`
	tiga=`expr $gaji - 35000000`
	empat=`expr $tiga \* 35 / 100`
	lima= `expr $satu + $dua + $empat`
	echo "PPH = $lima "
fi
