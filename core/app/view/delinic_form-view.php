<?php

$inic_form = inic_formData::getById($_GET["id"]);
$inic_form->del();
Core::redir("./index.php?view=inic_form");