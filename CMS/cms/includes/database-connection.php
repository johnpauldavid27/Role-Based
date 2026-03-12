<?php
$type = 'mysql';    // Type of database
$server = 'localhost';    // Server the database is on
$db = 'cf';    // Name of the database
$port = 3306;    // Port is usually 8889 in MAMP and 3306 in XAMPP
$charset = 'utf8mb4';    // UTF-8 encoding using 4 bytes of data per character

$username = 'root';    // Enter YOUR username here
$password = '';    // Enter YOUR password here

$options = [    // Options for how PDO works
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,  // Fixed: ATTR_DEFAULT_FETCH_MODE
    PDO::ATTR_EMULATE_PREPARES => false,
];

// DO NOT CHANGE ANYTHING BENEATH THIS LINE
// NOTE: Added missing colon after {$type} - the image has a typo here!
$dsn = "{$type}:host={$server};dbname={$db};port={$port};charset={$charset}";

try {
    $pdo = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    throw new PDOException($e->getMessage(), $e->getCode());
}
?>