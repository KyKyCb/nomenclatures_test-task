<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: *");


$postClientRequest = file_get_contents('php://input');
$clientRequest = json_decode($postClientRequest, true);

function sendRequestToClient($req){

    $MySQL_link = "localhost:3306";
    $MySQL_name = "root";
    $MySQL_password = "123123123";
    $MySQL_DBName = "nomenclatures_db";


    $mySQLconnection = mysqli_connect($MySQL_link, $MySQL_name, $MySQL_password, $MySQL_DBName);

    if($mySQLconnection == false) {
        error_log("Connection error " . mysqli_connect_error());
    }
    else {
        error_log("Connection succes");
    }


    $result = mysqli_query($mySQLconnection, $req);
    $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);

    $response = ['items'=> $rows];
    header('Content-type: application/json');
    echo json_encode( $response );
};
function sqlRequest ($req){
    
    if($req[0]!=null){
        $request = "SELECT * FROM nomenclaturestest 
        WHERE 
            CASE 
                WHEN SUBSTRING_INDEX(CHANNELS,',',1)='$req[0]' 
                    THEN SUBSTRING_INDEX(CHANNELS,',',1)='$req[0]' 
                    ELSE SUBSTRING_INDEX(CHANNELS,',',3)='$req[0]' 
            END";
    }
    if($req[0]!=null && $req[1]!=null){
        $request = "SELECT * FROM nomenclaturestest 
        WHERE 
            CASE 
                WHEN SUBSTRING_INDEX(CHANNELS,',',2)='$req[0],$req[1]' 
                    THEN SUBSTRING_INDEX(CHANNELS,',',2)='$req[0],$req[1]' 
                    ELSE SUBSTRING_INDEX(CHANNELS,',',3)='$req[0],$req[1]' 
            END";
    }
    if($req[0]!=null && $req[1]!=null && $req[2]!=null){
        $request = "SELECT * FROM nomenclaturestest 
            WHERE 
                CASE 
                    WHEN SUBSTRING_INDEX(CHANNELS,',',2)='$req[0],$req[1]' 
                    AND  SUBSTRING_INDEX(CHANNELS,',',3)='$req[0],$req[1]'
                        THEN SUBSTRING_INDEX(CHANNELS,',',3)='$req[0],$req[1]' 
                        ELSE SUBSTRING_INDEX(CHANNELS,',',3)='$req[0],$req[1],$req[2]' 
                END";
    }
    sendRequestToClient($request);

}

if ($clientRequest[0]!=null){
    sqlRequest($clientRequest); 
}



if ($_GET['table'] == 1){
    $request = "SELECT * FROM nomenclatures_table_1";
    sendRequestToClient($request);
}

if ($_GET['table'] == 2){
    $request = "SELECT * FROM nomenclatures_table_2";
    sendRequestToClient($request);
}

if ($_GET['table'] == 3){
    $request = "SELECT * FROM nomenclatures_table_3";
    sendRequestToClient($request);
}
?>