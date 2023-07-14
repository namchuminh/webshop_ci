<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class DangXuat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('khachhang')){
			return redirect(base_url('dang-nhap/'));
		}
	}

	public function index()
	{
		$this->session->unset_userdata('khachhang');
		$this->session->unset_userdata('login');
		$this->session->unset_userdata('TenKhachHang');
		$this->session->unset_userdata('SoDienThoai');
		return redirect(base_url('dang-nhap/'));
	}

}

/* End of file DangXuat.php */
/* Location: ./application/controllers/DangXuat.php */