<?php
  $result=0;
    if(isset($_GET["compute"]))
			{
                
					
					if(isset($_GET["processor"]))
					{
                        
                       
						$myprocessor= $_GET["processor"];

                        $price=0.0;


				for($i=0; $i<count($myprocessor); $i++)
				{
                    
					echo "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $myprocessor[$i]. "</p>";
                    if($myprocessor[$i]='Intel i7'){
                            $price=$price+15000;
                    }
                    if($myprocessor[$i]=='Intel i5'){
                        $price=$price+13000;
                    }
                    if($myprocessor[$i]=='Intel i3'){
                        $price=$price+10000;
                    }
                    if($myprocessor[$i]=='Intel Quad Core'){
                        $price=$price+8000;
                    }
                    if($myprocessor[$i]=='Intel Dual Core'){
                        $price=$price+6000;
                    }
				}	
			}
           


            if(isset($_GET["ram"]))
            {
                
               
                $ram= $_GET["ram"];
                $price2=0.00;



        for($j=0; $j<count($ram); $j++)
        {
            
            echo "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $ram[$j]. "</p>";
            if($ram[$j]=='16 GB'){
                    $price2=$price2+10000;
            }
            if($ram[$j]=='8 GB'){
                $price2=$price2+8000;
            }
            if($ram[$j]=='4 GB'){
                $price2=$price2+4000;
            }
            if($ram[$j]=='2 GB'){
                $price2=$price2+2000;
            }
        }	
    }

    if(isset($_GET["accessories"]))
    {
        
       
        $accessories= $_GET["accessories"];
        $price3=00.0;



for($k=0; $k<count($accessories); $k++)
{
    
    echo "<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" . $accessories[$k]. "</p>";
    if($accessories[$k]=='Gaming Keyboard'){
            $price3=$price3+3000;
    }
    if($accessories[$k]=='Gaming Headset'){
        $price3=$price3+3500;
    }
    if($accessories[$k]=='Gaming Mouse'){
        $price3=$price3+2000;
    }
}	
}

                    $result=$price+$price2+$price3;
                    echo $result;	
                  	
                    
                } 
                   
            
?>