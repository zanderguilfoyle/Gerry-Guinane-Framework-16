<?php
/**
* This file contains the CountyTable Class
* 
*/

/**
 * 
 * ChatMsgTable entity class implements the table entity class for the 'CountyTable' table in the database. 
 * 
 * @author Gerry Guinane
 * 
 */

class CountyTable extends TableEntity {

    /**
     * Constructor for the CountyTable Class
     * 
     * @param MySQLi $databaseConnection  The database connection object. 
     */
    function __construct($databaseConnection){
        parent::__construct($databaseConnection,'county');  //the name of the table is passed to the parent constructor
    }
    //END METHOD: Construct
   
    
    

    /**
     * Returns a partial record (countyName only by ID)
     * 
     * @param string $idcounty
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */ 
    public function getRecordByID($idcounty){
        $this->SQL="SELECT countyName FROM county WHERE idcounty='$idcounty'";
                
        //execute the  query
        try {
            $rs=$this->db->query($this->SQL);
        } catch (mysqli_sql_exception $e) { //catch the exception 
            $this->MySQLiErrorNr=$e->getCode();
            $this->MySQLiErrorMsg=$e->getMessage();
            return false;
        }
        
        
        if($rs->num_rows===1){ //check only one record returned
            return $rs;
        }
        else{
            return false;  //empty recordset
        }        
        
    }

    

     
    

     /**
     * Performs a DELETE query for a single record ($idcounty).  Verifies the
     * record exists before attempting to delete
     * 
     * @param $idcounty  String containing ID of county record to be deleted
     * 
     * @return boolean Returns FALSE on failure. For successful DELETE returns TRUE
     */
    public function deleteRecordbyID($idcounty){
        
        if($this->getRecordByID($idcounty)){ //confirm the record exists before deletig
            
            $this->SQL = "DELETE FROM county WHERE ID='$idcounty'"; //construct the SQL
            
            //execute the  query
            try {
                $rs=$this->db->query($this->SQL);
            } catch (mysqli_sql_exception $e) { //catch the exception 
                    $this->MySQLiErrorNr=$e->getCode();
                    $this->MySQLiErrorMsg=$e->getMessage();
                $rs=FALSE;
            }
            
        }
        else{
            return false;  //invalid ID
        }       
    }

   

    /**
     * Performs a SELECT query to returns all records from the table. 
     * idcounty,countyName columns only.
     *
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */
     public function getAllRecords(){
         
        $this->SQL = 'SELECT idcounty,countyName FROM county';  //construct the SQL

        //execute the  query
        try {
            $rs=$this->db->query($this->SQL);
        } catch (mysqli_sql_exception $e) { //catch the exception 
                $this->MySQLiErrorNr=$e->getCode();
                $this->MySQLiErrorMsg=$e->getMessage();
            $rs=FALSE;
        }
         
        
        
        if($rs->num_rows){
            return $rs;
        }
        else{
            return false;
        }        
        
    }   

    

    /**
     * Inserts a new record in the table. 
     * 
     * @param array $postArray containing data to be inserted
         * $postArray['county'] string County Name
     * 
     * @return boolean
     * 
     * 
     */   
    public function addRecord($postArray){
        
        //get the values entered in the registration form contained in the $postArray argument      
        extract($postArray);
        
        //add escape to special characters
        $countyName= addslashes($county);
        
        
        //construct the INSERT SQL
        $this->SQL="INSERT INTO county (countyName) VALUES ('$countyName')";   
       
        
        //execute the  query
        try {
            $rs=$this->db->query($this->SQL);
        } catch (mysqli_sql_exception $e) { //catch the exception 
                $this->MySQLiErrorNr=$e->getCode();
                $this->MySQLiErrorMsg=$e->getMessage();
            $rs=FALSE;
        }
         
        
        //check the insert query worked
        if ($rs){return TRUE;}else{return FALSE;}
    }
 

   
    
}

