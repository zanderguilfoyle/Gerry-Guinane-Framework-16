<?php
/**
* This file contains the GeneralHome Class
* 
*/


/**
 * GeneralHome is an extended PanelModel Class
 * 
 * 
 * The purpose of this class is to generate HTML view panel headings and template content
 * for an  <em><b>not logged in user home</b></em>  page.  The content generated is intended for 3 panel
 * view layouts. 
 * 
 * @author gerry.guinane
 * 
 */

class GeneralHome extends PanelModel{

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
        $this->modelType='GeneralHome';
        parent::__construct($user,$db,$postArray,$pageTitle,$pageHead,$pageID);
    } 

    /**
     * Set the Panel 1 heading 
     */
    public function setPanelHead_1(){
            $this->panelHead_1='<h3>Zpotify</h3>';
    }

    
    /**
    * Set the Panel 1 text content 
    */      
    public function setPanelContent_1(){
        //User is not logged in
             $this->panelContent_1.='<p>You must register and/or log in to use this system.';  
    }      

    /**
     * Set the Panel 2 heading 
     */
    public function setPanelHead_2(){    
            $this->panelHead_2='<h3>Login required</h3>';
    }   

    
    /**
    * Set the Panel 2 text content 
    */      
    public function setPanelContent_2(){
        //set the Middle panel content      
        $this->panelContent_2='<p>You must be logged in to use this system.  If you are a registered user, please log in.  If you are not a registered user, please register.</p>';
    }

    /**
     * Set the Panel 3 heading 
     */
    public function setPanelHead_3(){        
            $this->panelHead_3='<h3>Zpotify</h3>';
    }  

    
    /**
    * Set the Panel 3 text content 
    */      
    public function setPanelContent_3(){  
            $this->panelContent_3="<p>Zpotify can only be used as a user</p>";
    }        


}
        