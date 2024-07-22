<?php
/**
* This file contains the UserTypeTable Class
* 
*/

/**
 * 
 * UserTypeTable entity class implements the table entity class for the 'usertype' table in the database. 
 * 
 * @author Gerry Guinane
 * 
 */

class UserTypeTable extends TableEntity {

    /**
     * Constructor for the UserTypeTable Class
     * 
     * @param MySQLi $databaseConnection  The database connection object. 
     */
    function __construct($databaseConnection){
        parent::__construct($databaseConnection,'usertype');  //the name of the table is passed to the parent constructor
    }
    //END METHOD: Construct
   
    
    

    /**
     * Returns the usertype from the usertype table
     * 
     * @param int $userTypeNr The user type reference number
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */ 
    public function getRecordByID($userTypeNr){
        $this->SQL="SELECT userTypeDescr FROM usertype WHERE userTypeNr='$userTypeNr'";
        $rs=$this->db->query($this->SQL);
        
                
        //execute the  query
        try {
            $rs=$this->db->query($this->SQL);               
            if($rs->num_rows===1){  //check only one record returned
                return $rs;
            }
            else{
                return false;
            }     
        } catch (mysqli_sql_exception $e) { //catch the exception 
                $this->MySQLiErrorNr=$e->getCode();
                $this->MySQLiErrorMsg=$e->getMessage();
           return false;
        }
     
        
   
        
    }

          

   

    /**
     * Performs a SELECT query to returns all records from the table. 
     *
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */
     public function getAllRecords(){
        $this->SQL = 'SELECT * FROM usertype';
        $rs=$this->db->query($this->SQL);
        
        //execute the  query
        try {
            $rs=$this->db->query($this->SQL);
        } catch (mysqli_sql_exception $e) { //catch the exception 
                $this->MySQLiErrorNr=$e->getCode();
                $this->MySQLiErrorMsg=$e->getMessage();
            return false;
        }
         
        if($rs->num_rows){  //check resultset not empty
            return $rs;
        }
        else{
            return false;
        }        
        
    }      

   
    
}

