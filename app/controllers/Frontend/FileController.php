<?php namespace Frontend;

use \Input;
use \Redirect;
use \AdminLog;

class FileController extends \Controller {
    /**
     * 文件上传
     *
     * @return Response
     */
    public function postUpload() {
        header('Access-Control-Allow-Origin:*');

        /*$referer = $_SERVER['HTTP_REFERER'];
        if (empty($referer)) {
            throw new Exception("非法访问！", 1);
        }*/

        $output = array('err' => 0, 'msg' => '', 'src' => '');

        $file = Input::file('file');
        if ($file) {
             $tmpName = $file->getFileName();
             $ext = $file->getClientOriginalExtension();
             $fileName =  md5($tmpName) . uniqid() .'.'. $ext;
//             $movePath = 'storage/uploads/';
$movePath = 'uploadFile/uploads/';
             $path = $file->move($movePath, $fileName);
             //
             $output['src'] = 'http://' . $_SERVER['HTTP_HOST'] . '/' . $movePath . $fileName;
//$output['src'] = 'http://127.0.0.1:8088' . '/' . $movePath . $fileName;
//$output['src'] = 'http://66.175.220.107:8088' . '/' . $movePath . $fileName;
AdminLog::log($output['src'],"上传文件");
        }
        else {
            $output['err'] = 1;
            $output['msg'] = '无上传文件';
        }

        //output json;
        exit(json_encode($output));
    }
}
