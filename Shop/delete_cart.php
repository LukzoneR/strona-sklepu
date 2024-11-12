<?php
    include("db_connect.php");
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        
        $sql = "DELETE FROM koszyk_produkty WHERE id='$id'";
        
        $result = mysqli_query($conn, $sql);
        
        if(!$result){
                echo "Błąd odczytu: ". mysqli_error($conn);
                exit();
        }else{
           header('Location: index.php');
        }
            
    }
    mysqli_close($conn);