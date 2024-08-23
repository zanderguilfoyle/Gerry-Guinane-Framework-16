<?php
/**
 * This file contains the CustomerMessages Class
 *
 */


/**
 * CustomerMessages is an extended PanelModel Class
 *
 * The purpose of this class is to generate HTML view panel headings and template content
 * for a <em><b>CUSTOMER user messages</b></em>  page.  The content generated is intended for 3 panel
 * view layouts.
 *
 * @author gerry.guinane
 *
 */
class CustomerPlaylists extends PanelModel
{


    /**
     * Constructor Method
     *
     * The constructor for the PanelModel class. The ManageSystems class provides the
     * panel content for up to 3 page panels.
     *
     * @param User $user The current user
     * @param MySQLi $db The database connection handle
     * @param Array $postArray Copy of the $_POST array
     * @param String $pageTitle The page Title
     * @param String $pageHead The Page Heading
     * @param String $pageID The currently selected Page ID
     */
    function __construct($user, $db, $postArray, $pageTitle, $pageHead, $pageID)
    {
        $this->modelType = 'CustomerPlaylists';
        parent::__construct($user, $db, $postArray, $pageTitle, $pageHead, $pageID);
    }


    /**
     * Set the Panel 1 heading
     */
    public function setPanelHead_1()
    {
        switch ($this->pageID) {

            case "playlist":
                $this->panelHead_1 = '<h3>Playlists</h3>';
                break;
            case "deleteplay":
                $this->panelHead_1 = '<h3>Delete a playlist</h3>';
                break;
            case "viewplay":
                $this->panelHead_1 = '<h3>View all playlists</h3>';
                break;
            case "createplay":
                $this->panelHead_1 = '<h3>Create a playlist</h3>';
                break;
            default:
                $this->panelHead_1 = '<h3>Playlists</h3>';
                break;
        }//end switch
    }

    /**
     * Set the Panel 1 text content
     */
    public function setPanelContent_1()
    {
        switch ($this->pageID) {
            case "playlist":
                $this->panelContent_1 = 'This page is used to manage playlists. you can view, create and delete playlists using the navigation bar at the top of the page<br><br>If you want to go back to the home page just click home and the other tabs will appear.';
                break;
            case "viewplay":
                $table = new PlaylistTable($this->db);
                $rs = $table->getAllRecords($this->user->getUserID());
                $this->panelContent_1 = HelperHTML::generateTABLE($rs);
                array_push($this->panelModelObjects, $table); #for diagnostic purposes
                break;
            case "deleteplay":
                $this->panelContent_1 = '';

                $this->deletePlaylistByIdIfRequested();
                $this->panelContent_1 .= '<hr>';

                $table = new PlaylistTable($this->db);
                $rs = $table->getUserAuthoredPlaylists($this->user->getUserID());
                $this->panelContent_1 .= HelperHTML::generateSelectTABLE($rs, 'idplaylists', $this->pageID, 'Delete');
                array_push($this->panelModelObjects, $table); #for diagnostic purposes
                break;
            case "createplay":
                $this->createPlayListIfRequested();
                $this->panelContent_1 .= Form::form_createplay($this->pageID);
                break;
            default:
                $this->panelContent_1 .= 'playlist';
                break;
        }//end switch
    }

    /**
     * Set the Panel 2 heading
     */
    public function setPanelHead_2()
    {
        switch ($this->pageID) {
            case "playlist":
                $this->panelHead_2 = '<h3>Messages</h3>';
                break;;
            case "viewplay":
                $this->panelHead_2 = '<h3>View Messages</h3>';
                break;
            case "createplay":
                $this->panelHead_2 = '<h3>Playlist creation</h3>';
                break;
            case "deleteplay":
                $this->panelHead_2 = '<h3>Delete My Messages</h3>';
                break;
            default:
                $this->panelHead_2 = '<h3>Messages</h3>';
                break;
        }//end switch
    }

    /**
     * Set the Panel 2 text content
     */
    public function setPanelContent_2()
    {
        switch ($this->pageID) {
            case "createplay":
                $this->panelContent_2 = 'To create a playlist, enter a name, how many songs and public or private for the playlist and click the create button. After that is done make sure to view the playlist in the view tab to see the playlist you just created.';
                break;


            default:
                $this->panelContent_2 = 'Messages';
                break;
        }//end switch

    }

    /**
     * Set the Panel 3 heading
     */
    public function setPanelHead_3()
    {
        switch ($this->pageID) {
            case "messages":
                $this->panelHead_3 = '<h3>Messages</h3>';
                break;
            case "livechat":
                $this->panelHead_3 = '<h3>Live Chat</h3>';
                break;
            case "viewMsgs":
                $this->panelHead_3 = '<h3>View Messages</h3>';
                break;
            case "sendMsg":
                $this->panelHead_3 = '<h3>Send Messages</h3>';
                break;
            default:
                $this->panelHead_3 = '<h3>Messages</h3>';
                break;
        }//end switch
    }

    /**
     * Set the Panel 3 text content
     */
    public function setPanelContent_3()
    {//set the panel 2 content
        switch ($this->pageID) {
            case "messages":
                $this->panelContent_3 = 'This messages sub-menu illustrates a number of different implementations of messaging between users - including live chat which utilises AJAX';
                break;
            case "livechat":
                $this->panelContent_3 = 'Live chat content';
                break;
            case "viewMsgs":
                $this->panelContent_3 = 'View Messages';
                break;
            case "sendMsg":
                $this->panelContent_3 = 'Send Messages';
                break;
            default:
                $this->panelContent_3 = 'Messages';
                break;
        }//end switch

    }

    /**
     * @return bool
     */
    public function isPlayListSaveButtonPresent(): bool
    {
        return isset($this->postArray['create-playlist-button']);
    }

    /**
     * @return void
     */
    public function createPlayListIfRequested(): void
    {
        if ($this->isPlayListSaveButtonPresent()) {
            $table = new PlaylistTable($this->db);
            if ($table->addRecord($this->postArray, $this->user->getUserID())) {
                $this->panelContent_1 .= 'Playlist Added Successfully<br>';
            } else {
                $this->panelContent_1 .= 'Unable to add playlist<br>';
            }
        } else {
            $this->panelContent_1 .= 'Create a new playlist';
        }
    }

    /**
     * @return PlaylistTable
     */
    public function deletePlaylistByIdIfRequested()
    {
        if (isset($this->postArray['btnRecordSelected'])) {
            $table = new PlaylistTable($this->db);
            if ($table->deleteRecordbyID($this->postArray['recordSelected'])) {
                $this->panelContent_1 .= 'Playlist (playlistsID=' . $this->postArray['recordSelected'] . ') has been deleted';

            } else {
                $this->panelContent_1 .= 'Unable to delete selected record';
            }
            array_push($this->panelModelObjects, $table); #for diagnostic purposes
        } else {
            $this->panelContent_1 .= 'Select a playlist to delete';
        }
    }


}//end class
        