<?php
/**
 * This file contains the ChatMsgTable Class
 *
 */

/**
 *
 * ChatMsgTable entity class implements the table entity class for the 'chatmsg' table in the database.
 *
 * @author Gerry Guinane
 *
 */
class PlaylistTable extends TableEntity
{


    const TABLE_NAME = 'playlists';

    /**
     * Constructor for the TableEntity Class
     *
     * @param MySQLi $databaseConnection The database connection object.
     */
    function __construct($databaseConnection)
    {
        parent::__construct($databaseConnection, 'playlists');  //the name of the table is passed to the parent constructor
    }

    public function getAllRecords($userID)
    {
        $sql = "SELECT * FROM " . self::TABLE_NAME . " WHERE public=1 OR owner='$userID'";
        $rs = $this->db->query($sql);
        if ($rs->num_rows) {
            return $rs;
        } else {
            return false;
        }
    }
    /**
     * Returns an Artist record by Id
     *
     * @param string $id
     * @return bool|mysqli_result Returns false on failure. For successful SELECT returns a mysqli_result object
     */
    public function getPlaylistById(string $id): mysqli_result|bool
    {
        $sql = "SELECT * FROM " . self::TABLE_NAME . " WHERE idplaylists =$id";
        $result = $this->db->query($sql);
        if ($result->num_rows === 1) {
            return $result;
        } else {
            return false;
        }
    }


    /**
     * Performs a DELETE query for a single record ($msgID).  Verifies the
     * record exists before attempting to delete
     *
     * @param $ID  String containing ID of user record to be deleted
     *
     * @return boolean Returns FALSE on failure. For successful DELETE returns TRUE
     */
    public function deleteRecordbyID($ID)
    {
        if ($this->getPlaylistById($ID)) {
            $sql = "DELETE FROM playlists WHERE idplaylists='$ID'";
            $this->db->query($sql);
            return true;
        } else {
            return false;
        }
    }

    /**
     * Performs a SELECT query to returns all records from the table where messages are TO the specified user or ALL users.
     *
     * @param string $userID The user's unique ID
     *
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */
    public function getUserAuthoredPlaylists($userID)
    {
        $this->SQL = "SELECT * FROM " . self::TABLE_NAME . " WHERE owner='$userID'";

        $rs = $this->db->query($this->SQL);

        //check the recordset is not empty
        if ($rs->num_rows) {
            return $rs;
        } else {
            return false;
        }

    }


    /**
     * Performs a SELECT query to returns all records from the table where messages are TO the specified user or ALL users and NOT authored by the specified user
     *
     * @param string $userID The user's unique ID
     *
     * @return mixed Returns false on failure. For successful SELECT returns a mysqli_result object $rs
     */
    public function getRecords($userID)
    {
        $this->SQL = "SELECT idplaylists,name,owner,songs,public FROM playlists WHERE (owner='$userID' OR public=1)";

        $rs = $this->db->query($this->SQL);

        if ($rs->num_rows) {
            return $rs;
        } else {
            return false;
        }

    }


    /**
     * Inserts a new record in the table.
     *
     * @param array $postArray containing data to be inserted
     * $postArray['firstName'] string FirstName
     * $postArray['lastName'] string LastName
     * $postArray['pass1'] string PassWord
     * $postArray['email'] string email
     * $postArray['mobile'] string mobile
     *
     * @param String $userID The users unique identifier (email address)
     * @param String $userType The users type - eg ADMIN,CUSTOMER, MANAGER
     * @param String $owner The recipients unique identifier (email address)
     *
     * @return boolean TRUE if message is added successfully , else FALSE
     *
     *
     */
    public function updateRecord($postArray, $userID)
    {

        //get the values entered in the registration form contained in the $postArray argument
        extract($postArray);

        //add escape to special characters
        $playname = addslashes($playname);//
        $public = (int)$public;//
        $songs = (int)$playsong;

        $sql = "UPDATE " . self::TABLE_NAME . " "
            . "SET "
            . "name = '$playname',"
            . "public = $public,"
            . "songs = '$playsong',"
            . "owner = '$userID',"
            . "WHERE id=$id;";


        $rs = $this->db->query($sql);

        return $rs ? true : false;

    }

    public function addRecord($postArray, $userID)
    {

        //get the values entered in the registration form contained in the $postArray argument
        extract($postArray);

        //add escape to special characters
        $playname = addslashes($playname);//
        $public = (int)$public;//
        $songs = (int)$playsong;

        $sql = "INSERT INTO " . self::TABLE_NAME . " (name,public,songs,owner) VALUES ('$playname',$public,$playsong,'$userID')";
        $rs = $this->db->query($sql);

        return $rs ? true : false;

    }


}

