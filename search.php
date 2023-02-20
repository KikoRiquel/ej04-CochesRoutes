<?php
header("Access-Control-Allow-Origin: *");
class listItem {
	var $id;
	var $text;
}

function xmlAdd($xml, $root, $connection) {
	$sql = "SELECT * FROM modelos";
	$query = $connection->prepare($sql);
	$query->execute();
	$flag = false;
	while ($row = $query->fetch(PDO::FETCH_NAMED)){
		$flag = true;
		$node = $xml->createElement("resultado");
		$fila = $root->appendChild($node);
		foreach ($row as $columna => $valor) {
			$node = $xml->createElement($columna,$valor);
			$newnode = $fila->appendChild($node);
		}
	}
	return $flag;
}

function queryModelsXML($connection) {
	$xml = new DOMDocument('1.0', 'UTF-8');
	$root = $xml->appendChild($xml->createElement("resultados"));
	$hayResultados = false;
	if (xmlAdd($xml, $root, $connection)) $hayResultados = true;
	if ($hayResultados) {
		header('Content-type: text/xml');
		return ($xml->saveXML());
	} else return "Sin resultados";
}

function queryModelsJSON($connection) {
	$listado = array();
	$sql = "SELECT * FROM modelos";
	$query = $connection->prepare($sql);
	$query->execute();
	while ($row = $query->fetch(PDO::FETCH_NAMED)){
		$newSugerencia = new listItem();
		$newSugerencia->id = $row['id'];
		$newSugerencia->nombre = $row['nombre'];
		$newSugerencia->imagen = $row['imagen'];
		$newSugerencia->precio = $row['precio'];
		$newSugerencia->fabricante = $row['fabricante'];
		$newSugerencia->tecnologia = $row['tecnologia'];
		$listado[] = $newSugerencia;
	}
    return $listado;
}

function queryMakers($connection) {
	$listado = array();
	$sql = "SELECT * FROM fabricantes";
	$query = $connection->prepare($sql);
	$query->execute();
	while ($row = $query->fetch(PDO::FETCH_NAMED)){
		$newSugerencia = new listItem();
		$newSugerencia->id = $row['id'];
		$newSugerencia->text = $row['nombre'];
		$listado[] = $newSugerencia;
	}
    return $listado;
}

function queryTechnologies($connection) {
	$listado = array();
	$sql = "SELECT * FROM tecnologias";
	$query = $connection->prepare($sql);
	$query->execute();
	while ($row = $query->fetch(PDO::FETCH_NAMED)){
		$newSugerencia = new listItem();
		$newSugerencia->id = $row['id'];
		$newSugerencia->text = $row['nombre'];
		$listado[] = $newSugerencia;
	}
    return $listado;
}

$server = "mysql:dbname=ev";
$user = 'root';
$pw = '';
$conexion = new PDO($server,$user,$pw,array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));

if(isset($_GET['q'])) {
	if ($_GET['q'] == "models") {
		//echo utf8_encode( queryModelsXML($conexion) );
		echo json_encode( queryModelsJSON($conexion), JSON_UNESCAPED_UNICODE );
	} else if ($_GET['q'] == "makers") {
		echo json_encode( queryMakers($conexion), JSON_UNESCAPED_UNICODE );
	} else if ($_GET['q'] == "techs") {
		echo json_encode( queryTechnologies($conexion), JSON_UNESCAPED_UNICODE );
	} else {
		echo "Consulta con parámetro \"q=".$_GET['q']."\" no admitida";
	}
} else {
	echo "No has pasado parámetros adecuados";
}

?>
