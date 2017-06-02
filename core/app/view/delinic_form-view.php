<?php

$inic_form = inic_formData::delById($_GET["id"]);

Core::redir("./index.php?view=inic_form");