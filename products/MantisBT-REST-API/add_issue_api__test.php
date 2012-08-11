<?php

define('MANTIS_API_LINK', 'http://mantisbt-1.2.11/api/soap/mantisconnect.php?wsdl');
define('USER', 'userapi');
define('PASS', 'passwd');

function getIssueToAdd($projectId, $category) {
    return array(
        'summary' => '--- test issue: ' . rand(1, 1000000),
        'description' => 'Description of test issue.',
        'project' => array( 'id' => $projectId ),
        'category' => $category
    );
}

$client = new soapclient(MANTIS_API_LINK);

print_r($client);

print_r($client->mc_version() . "

");

$getArray = array();

foreach( array(1, 2) as $id ){
    $getArray[$id] = $client->mc_project_get_categories(USER, PASS, $id );
}

print_r($getArray);

$result = $client->mc_issue_add(USER, PASS, getIssueToAdd(1, 'cat1'));

print_r($result);

die('---STOP TEST');

