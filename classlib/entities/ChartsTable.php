<?php

/**
 * A class to represent the ArtistTable entity
 */
class ChartsTable extends TableEntity
{
    /**
     * The name of the table in the database
     */
    const TABLE_NAME = 'topcharts';

    /**
     * Constructor for the CountyTable Class
     * @param MySQLi $databaseConnection The database connection object.
     */
    public function __construct($databaseConnection)
    {
        parent::__construct($databaseConnection, self::TABLE_NAME);
    }

    /**
     * Returns an Artist record by Id
     *
     * @param string $id
     * @return bool|mysqli_result Returns false on failure. For successful SELECT returns a mysqli_result object
     */

    public function getRecordById(string $id): mysqli_result|bool
    {
        $sql = "SELECT * FROM " . self::TABLE_NAME . " WHERE id=$id";
        $result = $this->db->query($sql);
        if ($result->num_rows === 1) {
            return $result;
        } else {
            return false;
        }
    }

    /**
     * Deletes an Artist record by Id
     *
     * @param string $id The id of the record to delete
     * @return bool Returns true if the record was deleted, false otherwise
     */
    public function deleteRecordById(string $id): bool
    {
        if (!$this->getRecordById($id)) {
            return false;
        }
        $sql = "DELETE FROM " . self::TABLE_NAME . " WHERE id=$id";
        return $this->db->query($sql);
    }

    /**
     * Returns all records from the table
     *
     * @return bool|mysqli_result Returns false on failure. For successful SELECT returns a mysqli_result object
     */

    public function getAllRecords()
    {
        $sql = "SELECT * FROM " . self::TABLE_NAME;
        $rs = $this->db->query($sql);
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
    public function addRecord(array $postArray): bool
    {
        //get the values entered in the registration form contained in the $postArray argument
        extract($postArray);
        //add escape to special characters


        $sql = "INSERT INTO " . self::TABLE_NAME . "(songname, artist, length)VALUES ('$songname', '$artist', '$length');";
        $rs = $this->db->query($sql);

        return $rs ? true : false;
    }

    public function updateRecord($postArray)
    {

        //get the values entered in the registration form contained in the $postArray argument
        extract($postArray);

        //add escape to special characters
        $name = addslashes($name);//

        $sql = "UPDATE " . self::TABLE_NAME . " "
            . "SET "
            . "Songname = '$name' "
            . "artist = '$artist' "
            . "length = '$length' "
            . "WHERE id=$id;";


        $rs = $this->db->query($sql);

        return $rs ? true : false;
    }


}

