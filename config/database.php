<?php
/**
* This file contains the database configuration for this application
* 
*/

/**
* The database must be configured for the users environment 
* 
*/


/**
 * Transform a configuration array to a String for writing to a file
 * @param array $config The configuration array
 * @return string The configuration text
 */
function configToString(array $config): string
{
    $text = '';
    foreach ($config as $key => $value)
        $text .= $key . ' = "' . $value . '"' . "\n";

    return $text;
}


/**
 * Create a configuration file with default values the file  does not exist
 * @param string $config_file_path The path to the configuration file. Default is 'config.ini'
 * @return array The configuration data
 */
function createConfigFileIfNotExists(string $config_file_path = 'config.ini'): array
{
    if (!file_exists($config_file_path)) {

        $default_config = [
            'database.params.host' => 'localhost',
            'database.params.username' => 'root',
            'database.params.port' => '3306',
            'database.params.password' => '',
            'database.params.dbname' => 'k00287168_framework_16',
        ];

        // Write the config text content to the file
        file_put_contents($config_file_path, configToString($default_config));
    }

    return parse_ini_file($config_file_path);
}


$configFilePath = 'config.ini';


$ini_array = createConfigFileIfNotExists($configFilePath);

$DBServer = $ini_array['database.params.host'];
$DBUser = $ini_array['database.params.username'];
$DBportNr = $ini_array['database.params.port'];
$DBPass = $ini_array['database.params.password'];
$DBName = $ini_array['database.params.dbname'];
