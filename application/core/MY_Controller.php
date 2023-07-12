<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	protected $data = array();

    public function __construct() {
        parent::__construct();
        $this->load->model('Website/Model_Website');
        $this->data['config'] = $this->Model_Website->getAllConfig();
        $this->load->vars($this->data);
    }

}

/* End of file MY_Controller.php */
/* Location: ./application/controllers/MY_Controller.php */