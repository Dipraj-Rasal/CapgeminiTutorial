$c=0
do{
 $filename='Dipraj'+$c+'.txt';
 new-item -path $filename -itemtype file 
 $c++

}while($c -lt 10)


$c=0
do{
 $filename='Dipraj'+$c;
 new-item -path $filename -itemtype directory 
 $c++

}while($c -lt 10)


$c=0
do{ 
    $fdr='Dipraj'+$c;
    $d=0
    do{
        $fdr1='Dip'+$d;
        new-item -path $fdr\$fdr1 -itemtype directory 
        $d++
      }while($d -lt 10)
    $c++
  }while($c -lt 10)


$c=0
do{ 
    $fdr='Dipraj'+$c;
    $d=0
    do{
        $fdr1='Dip'+$d;
        $e=0
        do{
        $fdr2='Dip'+$e+'.txt'
        new-item -path $fdr\$fdr1\$fdr2 -itemtype file
        $e++
        }while($e -lt 10)
         
        $d++
      }while($d -lt 10)
    $c++
  }while($c -lt 10)


  $c=0
do{ 
    $fdr='Dipraj'+$c;
    $d=0
    do{
        $fdr1='Dip'+$d;
        $e=0
        do{
        $file='Dipraj'+$e+'.txt'
        copy-item -path $file -recurse -destination $fdr\$fdr1
        $e++
        }while($e -lt 10)
         
        $d++
      }while($d -lt 10)
    $c++
  }while($c -lt 10)



  $c=0
do{ 
    $fdr='Dipraj'+$c;
    $d=0
    do{
        $fdr1='Dip'+$d;
        remove-item $fdr\$fdr1\* 
        $d++
      }while($d -lt 10)
    $c++
  }while($c -lt 10)

