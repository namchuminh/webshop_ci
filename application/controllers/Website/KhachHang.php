<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class KhachHang extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('khachhang')){
			return redirect(base_url('dang-nhap/'));
		}

		if($this->session->has_userdata('redirectPay')){
			return redirect(base_url('thanh-toan/'));
		}
	}

	public function index()
	{
		echo "Khach hang";
	}

}

/* End of file KhachHang.php */
/* Location: ./application/controllers/KhachHang.php */