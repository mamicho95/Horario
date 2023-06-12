<?php
class Database
{
    private $host;
    private $username;
    private $password;
    private $database;
    private $connection;

    public function __construct($host, $username, $password, $database)
    {
        $this->host = $host;
        $this->username = $username;
        $this->password = $password;
        $this->database = $database;
    }

    public function connect()
    {
        $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database);
        if ($this->connection->connect_error) {
            die("Error de conexión: " . $this->connection->connect_error);
        } else {
            //print("connected successfully");
        }
    }

    public function getConnection()
    {
        return $this->connection;
    }
}

$host = "localhost"; // Nombre de host de la base de datos
$username = "root"; // Nombre de usuario de la base de datos
$password = ""; // Contraseña de la base de datos
$database = "horario"; // Nombre de la base de datos

$databaseObj = new Database($host, $username, $password, $database);
$databaseObj->connect();

$connection = $databaseObj->getConnection(); // Obtener la conexión establecida

$query = "SELECT m.nombre as modulo,semestral, d.nombre as docente_vespertino, horas_semestrales, horas_semanales from carga_academica,docente d,modulo m where m.id = modulo_id and d.id = docente_vespertino_id and nivel = 'I'";
$result = $connection->query($query);

if ($result) {
    $cargasDocentesNivel1 = $result->fetch_all(MYSQLI_ASSOC);
} else {
    echo "Error en la consulta: " . $connection->error;
}
$query = "SELECT m.nombre as modulo,semestral, d.nombre as docente_vespertino, horas_semestrales, horas_semanales from carga_academica,docente d,modulo m where m.id = modulo_id and d.id = docente_vespertino_id and nivel = 'III'";
$result = $connection->query($query);

if ($result) {
    $cargasDocentesNivel3 = $result->fetch_all(MYSQLI_ASSOC);
} else {
    echo "Error en la consulta: " . $connection->error;
}

$query = 'SELECT bloque, sala, d.nombre as docente, m.nombre as modulo, dia FROM clase, docente d, modulo m WHERE nivel = "I" AND id_docente = d.id AND id_modulo = m.id and orden = 1';
$result = $connection->query($query);

if ($result) {
    $claseN1B1 = $result->fetch_all(MYSQLI_ASSOC);
    $a1 = array();
    $a2 = array("N° SALA");
    $a3 = array("PROFESOR");
    foreach ($claseN1B1 as $row) {
        if (!$a1){
            array_push($a1, $row["bloque"]);
        }
        array_push($a1, $row["modulo"]);
        array_push($a2, $row["sala"]);
        array_push($a3, $row["docente"]);
    }
    $claseN1B1 = array($a1,$a2,$a3);
} else {
    echo "Error en la consulta: " . $connection->error;
}

$query = 'SELECT bloque, sala, d.nombre as docente, m.nombre as modulo, dia FROM clase, docente d, modulo m WHERE nivel = "I" AND id_docente = d.id AND id_modulo = m.id and orden = 2';
$result = $connection->query($query);

if ($result) {
    $claseN1B2 = $result->fetch_all(MYSQLI_ASSOC);
    $a1 = array();
    $a2 = array("N° SALA");
    $a3 = array("PROFESOR");
    foreach ($claseN1B2 as $row) {
        if (!$a1){
            array_push($a1, $row["bloque"]);
        }
        array_push($a1, $row["modulo"]);
        array_push($a2, $row["sala"]);
        array_push($a3, $row["docente"]);
    }
    $claseN1B2 = array($a1,$a2,$a3);
} else {
    echo "Error en la consulta: " . $connection->error;
}


$result->close();
$connection->close();

//var_dump($claseN1B1);
?>