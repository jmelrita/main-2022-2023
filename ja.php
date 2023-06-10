<?php
 
    $flames = array(
        "F" => "Lovers",
        "L" => "Lovers",
        "A" => "Affection",
        "M" => "Marriage",
        "E" => "Enemy",
        "S" => "Sister"
    );
 
    if(isset($_POST["names"]))
 
        if(count($_POST["names"])==2){
 
            $name1 = strtoupper(str_replace(" ", "", $_POST["names"][0]));
 
            $name2 = strtoupper(str_replace(" ", "", $_POST["names"][1]));
 
            if($name1 == $name2)
 
                echo "<div>Names are same!</div>";
 
            else{
 
                for($i = 0; $i < strlen($name1); $i++){
 
                    if(isset($name1[$i]))
 
                        for($j = 0; $j < strlen($name1); $j++)
 
                            if(isset($name2[$j]))
 
                                if($name1[$i] == $name2[$j]){
 
                                     $name1[$i] = $name2[$j] = "/";
 
                                     break;
 
                                }
 
                }
 
                $name1 = str_replace("/", "", $name1);
 
                $name2 = str_replace("/", "", $name2);
 
                $count = strlen($name1) + strlen($name2);
 
                $flame = "FLAMES";
 
                echo "<div>";
 
                while(strlen($flame)!=1){
 
                    $flame[$count%strlen($flame)] = "/";
 
                    $flame = str_replace("/", "", $flame);
 
                }
 
                echo "FLAMES   :   " . $flames[$flame] . "</div>";
 
            }
 
        }
 
        else ;
 
    else
 
    {?>
 
    <form method="post" action="">
 
       <b>FLAMES Calculation</b></br>
 
        <div><label>Your Name</label><input type="text" name="names[]" /></div></br>
 
        <div><label>Partner Name</label><input type="text" name="names[]" /></div></br>
 
        <div><input type="submit" value="FLAMES" /></div>
 
    </form>
 
<?php } ?>