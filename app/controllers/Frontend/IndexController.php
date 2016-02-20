<?php
namespace Frontend;
use \Redirect;

class IndexController extends BaseController {

    public function index() {
        //return Redirect::to('http://www.tju.edu.cn');
        echo 'publish success! &ltinfo from:/app/controllers/Frontend/IndexController.php&gt';
    }

}
