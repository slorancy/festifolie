<?php

class PageController extends Controller {

    public function index(){
        $infosFormSearch = Festival::getAllFest(false);
        $types = Festival::getTypes();
        $months = array(
            'Janvier', 'Fevrier', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Aout', 'Septembre', 'Octobre', 'Novembre', 'Décembre');
        
        $festivals = Festival::getAllFest();        

        if(isset($_POST['searchFestival'])){
            $name = $_POST['name'];
            $type = $_POST['type'];
            $date = $_POST['date'];
            $festivals = Festival::search($name, $type, $date);
        }

        $template = $this->twig->loadTemplate('/Page/index.html.twig');
        echo $template->render(array(
            'infosFormSearch'   => $infosFormSearch,
            'types'             => $types,
            'months'            => $months,
            'festivals'         => $festivals,
        ));
    }

    public function infosFestival(){
        $id_festival = $this->route["params"]["id_festival"];
        $infosFest = Festival::getFestivalById($id_festival);

        if(!$infosFest){
            header('Location :/error404', 404);
        }

        $template = $this->twig->loadTemplate('/Page/festival.html.twig');
        echo $template->render(array(
            "infosFest"         => $infosFest,
        ));
    }


    public function help(){
        $template = $this->twig->loadTemplate('/Page/help.html.twig');
        echo $template->render(array());
    }
}