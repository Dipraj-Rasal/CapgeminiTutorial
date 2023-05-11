$c=1
while($c -lt 11){
$filename='Dipraj'+$c+'.txt';
 new-item -path $filename -itemtype file 
 $c++
}

$c=1
while($c -lt 11){
$filename='Dipraj'+$c;
 new-item -path $filename -itemtype directory 
 $c++
}


$c=1
while($c -lt 11){
    $fdr='Dipraj'+$c;
    $d=1
    while($d -lt 11){
    $fdr1='Dip'+$d;
    new-item -path $fdr\$fdr1 -itemtype directory
    $d++
    }
    $c++
}


$c=1
while($c -lt 11){
    $fdr='Dipraj'+$c;
    $d=1
    while($d -lt 11){
    $fdr1='Dip'+$d;
    $e=1
    while($e -lt 11){
    
        $fdr2='D'+$e+'.txt';
        new-item -path $fdr\$fdr1\$fdr2 -itemtype file
        $e++
        }        
        $d++
    }
    $c++
}


$c=1
while($c -lt 11){
    $fdr='Dipraj'+$c;
    $d=1
    while($d -lt 11){
    $fdr1='Dip'+$d;
    $e=1
    while($e -lt 11){
    
        $file='Dipraj'+$e+'.txt';
        copy-item -path $file -recurse -destination $fdr\$fdr1
        $e++
        }        
        $d++
    }
    $c++
}


$c=1
while($c -lt 11){
    $fdr='Dipraj'+$c;
    $d=1
    while($d -lt 11){
    $fdr1='Dip'+$d;
    remove-item $fdr\$fdr1\* -recurse
    $d++
    }
    $c++
}




