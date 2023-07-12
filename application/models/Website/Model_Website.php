<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_Website extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	public function getAllConfig(){
		$query = $this->db->get('cauhinh');
        $data = $query->result_array();
        return $data;
	}

}

/* End of file Model_Website.php */
/* Location: ./application/models/Model_Website.php */