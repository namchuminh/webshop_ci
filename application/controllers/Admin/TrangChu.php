<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('taikhoan')){
			return redirect(base_url('admin/dang-nhap/'));
		}
	}

	public function index()
	{
		return $this->load->view('Admin/View_TrangChu');
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */