<?php
require 'conexionBdd.php';
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="functions.js"></script>
    <link rel="stylesheet" href="style.css">
    <title>Horaio</title>
</head>

<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto  bg-dark">
                <div class="d-flex flex-column vh-100 flex-shrink-0 p-3 text-white bg-dark" style="width: 250px;"> <a
                        href="/"
                        class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none"> <img
                            src="https://avirtual.cftsanagustin.cl/pluginfile.php/1/theme_moove/logo/1683816394/logo.png"
                            width="180"> </a>
                    <hr>
                    <div class="list-group" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action list-group-item-dark active"
                            id="list-home-list" data-bs-toggle="list" href="#list-home" role="tab"
                            aria-controls="list-home"> <i class="fa fa-home"></i><span class="ms-2">Inicio</span></a>
                        <a class="list-group-item list-group-item-action list-group-item-dark " id="list-profile-list"
                            data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile"> <i
                                class="fa fa-calendar"></i><span class="ms-2">Horarios</span></a>
                    </div>
                </div>
            </div>

            <div class="col py-3">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade " id="list-home" role="tabpanel" aria-labelledby="list-home-list">
                        <table>
                            <tr class="plomo">
                                <td>Area:</td>
                                <td>Informatica</td>
                                <th colspan="0">2023</th>
                            </tr>
                            <tr class="azul">
                                <td>Carrera:</td>
                                <td>Técnico en Ciberseguridad</td>
                            </tr>
                            <tr>
                                <td>Nivel:</td>
                                <td>I</td>
                            </tr>
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr class="azul">
                                <th>Asignatura/Modulo</th>
                                <th>Semestral</th>
                                <th>Docente Vespertino</th>
                                <th>Horas Semestrales</th>
                                <th>Horas Semanales</th>
                            </tr>
                            <tbody>
                                <?php
                                foreach ($cargasDocentesNivel1 as $row) {
                                    echo "<tr>";
                                    echo "<td>", $row['modulo'], "</td>";
                                    echo "<td>", $row['semestral'], "</td>";
                                    echo "<td>", $row['docente_vespertino'], "</td>";
                                    echo "<td>", $row['horas_semestrales'], "</td>";
                                    echo "<td>", $row['horas_semanales'], "</td>";
                                    echo "</tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                        <table>
                            <tr class="plomo">
                                <td>Area:</td>
                                <td>Informatica</td>
                                <th>2023</th>
                            </tr>
                            <tr class="azul">
                                <td>Carrera:</td>
                                <td>Técnico en Ciberseguridad</td>
                            </tr>
                            <tr>
                                <td>Nivel:</td>
                                <td>III</td>
                            </tr>
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr class="azul">
                                <th>Asignatura/Modulo</th>
                                <th>Semestral</th>
                                <th>Docente Vespertino</th>
                                <th>Horas Semestrales</th>
                                <th>Horas Semanales</th>
                            </tr>
                            <tbody>
                                <?php
                                foreach ($cargasDocentesNivel3 as $row) {
                                    echo "<tr>";
                                    echo "<td>", $row['modulo'], "</td>";
                                    echo "<td>", $row['semestral'], "</td>";
                                    echo "<td>", $row['docente_vespertino'], "</td>";
                                    echo "<td>", $row['horas_semestrales'], "</td>";
                                    echo "<td>", $row['horas_semanales'], "</td>";
                                    echo "</tr>";
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane fade show active" id="list-profile" role="tabpanel"
                        aria-labelledby="list-profile-list">
                        <table>
                            <tr>
                                <th>Horas</th>
                                <th>Lunes</th>
                                <th>Martes</th>
                                <th>Miercoles</th>
                                <th>Jueves</th>
                                <th>Viernes</th>
                            </tr>
                            <?php
                            foreach ($claseN1B1 as $row) {
                                echo "<tr>";
                                foreach ($row as $col) {
                                    echo "<td>", $col, "</td>";
                                }
                            }
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>