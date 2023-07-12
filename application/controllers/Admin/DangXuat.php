<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangXuat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('taikhoan')){
			return redirect(base_url('admin/dang-nhap/'));
		}
	}

	public function index()
	{
		$this->session->sess_destroy(); 
		return redirect(base_url('admin/dang-nhap/'));
	}

}

/* End of file DangXuat.php */
/* Location: ./application/controllers/DangXuat.php */