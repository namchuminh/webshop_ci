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

		$this->load->model('Website/Model_KhachHang');
		$data = array();
	}

	public function index()
	{
		$data['title'] = "Thông Tin Khách Hàng!";
		$data['list'] = $this->Model_KhachHang->getById($this->session->userdata('MaKhachHang'));
		return $this->load->view('Website/View_KhachHang', $data);
	}

	public function Detail($madonhang){
		if(count($this->Model_KhachHang->checkOrderById($madonhang)) == 0){
			return redirect(base_url('khach-hang/'));
		}
		$data['id'] = $madonhang;
		$data['title'] = "Xem Đơn Hàng ĐH00".$madonhang;
		$data['list'] = $this->Model_KhachHang->getDetailById($madonhang);
		return $this->load->view('Website/View_ChiTietDonHang', $data);
	}

	public function removeOrder($madonhang){
		if(count($this->Model_KhachHang->checkOrderById($madonhang)) == 0){
			return redirect(base_url('khach-hang/'));
		}

		$this->Model_KhachHang->removeOrder($madonhang);

		return redirect(base_url('khach-hang/'));
	}
}

/* End of file KhachHang.php */
/* Location: ./application/controllers/KhachHang.php */