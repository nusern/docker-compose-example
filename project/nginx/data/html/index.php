<?php

echo '<html><head><title>Example</title></head><body>';

//$host = 'example-db';
$host = getenv('DATABASE_HOST');
$db = 'example_db';
$user = 'example_user';
$pass = 'example_pass';
$charset = 'utf8mb4';
$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$opt = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false
];

$pdo = new PDO($dsn, $user, $pass, $opt);

$stmt = $pdo->prepare('SELECT * FROM example_table WHERE num > :num AND foobar = :foobar');
$stmt->execute(['num' => 2, 'foobar' => 'foo']);
$rows = $stmt->fetchAll();

foreach ($rows as $row) {
    foreach ($row as $key => $val) {
        echo "{$key} => {$val}, ";
    }
    echo "<br \>\n";
}

echo '</body></html>';
