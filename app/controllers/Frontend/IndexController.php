<?php namespace Frontend;
use \Redirect;

class IndexController extends BaseController {

    public function index() {
        return Redirect::to('http://www.tju.edu.cn');
    }

}
