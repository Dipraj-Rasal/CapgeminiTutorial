for($i=1;$i -lt 11;$i++){

 $filename='Dipraj'+$i+'.txt';
 new-item -path $filename -itemtype file   
}


for($j=1;$j -lt 11;$j++){ 
 $foldername='c:\temp\'+('Dipraj'+$j);
 new-item -path $foldername -itemtype directory  
}


for($i=1;$i -lt 11;$i++){
    $fdr='Dipraj'+$i;
    for($j=1;$j -lt 11;$j++) { 
        $fdr1='Dip'+$j;
        new-item -path $fdr\$fdr1 -itemtype directory 
     } 
}


for($i=1;$i -lt 11;$i++){
    $fdr='Dipraj'+$i;
    for($j=1;$j -lt 11;$j++) { 
        $fdr1='Dip'+$j;
        for($k=1;$k -lt 11;$k++){
            $fdr2='D'+$k+'.txt';
            new-item -path $fdr\$fdr1\$fdr2 -itemtype file 
        }
     } 
}


for($i=1;$i -lt 11;$i++){
    $fdr='Dipraj'+$i;
    for($j=1;$j -lt 11;$j++) { 
        $fdr1='Dip'+$j;
        for($k=1;$k -lt 11;$k++){
            $file='Dipraj'+$k+'.txt';
            copy-item -path $file -recurse -destination $fdr\$fdr1
        }
     } 
}

for($i=1;$i -lt 11;$i++){
    $fdr='Dipraj'+$i;
    for($j=1;$j -lt 11;$j++) { 
        $fdr1='Dip'+$j;
       
        remove-item $fdr\$fdr1\* -recurse
     } 
}





 

