<?php
/**
* This file contains the CustomerHome Class
* 
*/


/**
 * CustomerHome is an extended PanelModel Class
 * 
 * 
 * The purpose of this class is to generate HTML view panel headings and template content
 * for a <em><b>CUSTOMER user home</b></em>  page.  The content generated is intended for 3 panel
 * view layouts. 
 * 
 * @author gerry.guinane
 * 
 */


class ManagerCharts extends PanelModel{


    /**
    * Constructor Method
    * 
    * The constructor for the PanelModel class. The ManageSystems class provides the 
    * panel content for up to 3 page panels.
    * 
    * @param User $user  The current user
    * @param MySQLi $db The database connection handle
    * @param Array $postArray Copy of the $_POST array
    * @param String $pageTitle The page Title
    * @param String $pageHead The Page Heading
    * @param String $pageID The currently selected Page ID
    */  
    function __construct($user,$db,$postArray,$pageTitle,$pageHead,$pageID){  
        $this->modelType='CustomerHome';
        parent::__construct($user,$db,$postArray,$pageTitle,$pageHead,$pageID);
    } 



    /**
     * Set the Panel 1 heading 
     */
    public function setPanelHead_1(){
            $this->panelHead_1='<h3>Here are the top charts</h3>';
    }
    
    /**
    * Set the Panel 1 text content 
    */   
    public function setPanelContent_1(){
        if($this->pageID != "delete") {
            $table = new ChartsTable($this->db);
            $rs = $table->getAllRecords();
            $this->panelContent_1 = HelperHTML::generateTABLE($rs);
            array_push($this->panelModelObjects, $table);
        }

    }       

    /**
     * Set the Panel 2 heading 
     */
    public function setPanelHead_2(){
        switch($this->pageID){
            case "charts":
                $this->panelHead_2='<h3>Charts Management</h3>';
                break;
            case "add":
                $this->panelHead_2='<h3>Add a Chart</h3>';
                break;
            case "delete":
                $this->panelHead_2='<h3>Delete a Chart</h3>';
                break;
            default:
                $this->panelHead_2='<h3>Charts Management</h3>';
                break;
        }

    }

    
     /**
     * Set the Panel 2 text content 
     */       
    public function setPanelContent_2(){
        switch ($this->pageID){
            case "charts":
                $this->panelContent_2='<p>Choose an option from the menu</p>';
                break;
            case "add":
                $this->panelContent_2.='<p>Use the form below to add a new chart<br></p>';
                $this->addChartIfSubmitted();
                $this->panelContent_2 .= Form::AddChartForm($this->pageID);

                break;
            case "delete":
                $this->panelContent_1 = '';

                $this->deleteSongByIdIfRequested();
                $this->panelContent_1 .= '<hr>';

                $table = new ChartsTable($this->db);
                $rs = $table->getAllRecords();
                $this->panelContent_1 .= HelperHTML::generateSelectTABLE($rs, 'id', $this->pageID, 'Delete');
                array_push($this->panelModelObjects, $table); #for diagnostic purposes
                break;

            default:
                $this->panelContent_2='<p>Choose an option from the menu</p>';
                break;
        }
    }

    /**
     * Set the Panel 3 heading 
     */
    public function setPanelHead_3(){ 
        $this->panelHead_3='<h3>Application Setup</h3>';
    } 

     /**
     * Set the Panel 3 text content 
     */       
    public function setPanelContent_3(){ 
             $this->panelContent_3="<p>To ! set up this application read the following <a href='readme/installation.php' target='_blank' >SETUP INSTRUCTIONS</a></p>";   
    }
    public function deleteSongByIdIfRequested()
    {
        if (isset($this->postArray['btnRecordSelected'])) {
            $table = new ChartsTable($this->db);
            if ($table->deleteRecordbyID($this->postArray['recordSelected'])) {
                $this->panelContent_2 .= 'Playlist (playlistsID=' . $this->postArray['recordSelected'] . ') has been deleted';

            } else {
                $this->panelContent_2 .= 'Unable to delete selected record';
            }
            array_push($this->panelModelObjects, $table); #for diagnostic purposes
        } else {
            $this->panelContent_2 .= 'Select a playlist to delete';
        }
    }
    public function addChartIfSubmitted()
    {
        if (isset($this->postArray['create-playlist-button'])) {
            $table = new ChartsTable($this->db);
            $songname = $this->postArray['songname'];
            $artist = $this->postArray['artist'];
            $length = $this->postArray['length'];
            if ($table->addRecord(['songname' => $songname, 'artist' => $artist, 'length' => $length])) {
                $this->panelContent_2 .= 'Song Added Successfully<br>';
            } else {
                $this->panelContent_2 .= 'Unable to add Song<br>';
            }
        }
        else {
            $this->panelContent_2 .= 'Failed to add song';
        }
    }


     
        
}
        