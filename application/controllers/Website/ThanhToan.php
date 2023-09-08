<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class ThanhToan extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('khachhang')){
			return redirect(base_url('dang-nhap/'));
		}

		$this->session->unset_userdata('redirectPay');


		$cart = $this->session->userdata('cart');
        if(!$cart || count($cart) == 0){
            return redirect(base_url('gio-hang/'));
        }
        foreach ($cart as $key => $value) {
            if(count($value['color']) > 1){
                return redirect(base_url('gio-hang/'));
            }
        }
        $this->load->model('Website/Model_ThanhToan');
        $this->load->model('Website/Model_SanPham');
        $data = array();
	}

	public function index()
	{
		$cart = $this->session->userdata('cart');
		$data['title'] = "Thanh Toán Đơn Hàng!";
		return $this->load->view('Website/View_ThanhToan', $data);
	}

	public function PayOrder(){
		$cart = $this->session->userdata('cart');
		if ($this->input->server('REQUEST_METHOD') === 'POST') {
			$makhachhang = $this->Model_ThanhToan->getCustomerById($this->session->userdata('khachhang'))[0]['MaKhachHang'];
			$quanhuyen = $this->input->post('quanhuyen');
			$thanhpho = $this->input->post('thanhpho');
			$diachi = $this->input->post('diachi');
			$tencongty = "Không";
			$thanhtien = $this->session->userdata('sumCart');
			$giamgia = 0;
			$soluong = 0;
			$phuongthucthanhtoan = $this->input->post('payment_method');

			if(empty($quanhuyen) || empty($thanhpho) || empty($diachi)){
				echo "Vui Lòng Nhập Đầy Đủ Thông Tin Địa Chỉ Giao Hàng!";
				return;
			}

			if(empty($phuongthucthanhtoan)){
				echo "Vui Lòng Chọn Phương Thức Thanh Toán!";
				return;
			}

			foreach ($cart as $key => $value) {
				$soluong += $value['number'];
			}
			
			if(!empty($this->input->post('tencongty'))){
				$tencongty = $this->input->post('tencongty');
			}

			if($this->session->has_userdata('saleCode')){
				$giamgia = $this->session->userdata('saleCode');
			}

			$diachi = $diachi. " - ".$quanhuyen." ".$thanhpho;

			$madonhang = $this->Model_ThanhToan->add($makhachhang, $soluong, $thanhtien, $diachi, $giamgia, $tencongty, $phuongthucthanhtoan);


			$mau = [
                'blue' => 'Xanh',
                'red' => 'Đỏ',
                'yellow' => 'Vàng',
                'white' => 'Trắng',
                'black' => 'Đen',
                'pink' => 'Hồng'
            ];

			foreach ($cart as $key => $value) {
				$this->Model_ThanhToan->addDetail($madonhang, $value['id'], $value['number'], $mau[$value['color'][0]]);
				$soluongcu = $this->Model_SanPham->getById($value['id'])[0]['SoLuong'];
				$soluongmoi = $soluongcu - $value['number'];
				if($soluongmoi <= 0){
					$soluongmoi = 0;
				}
				$this->Model_SanPham->updateNumberProductPay($value['id'], $soluongmoi);
			}

			$this->session->unset_userdata('saleCode');
			$this->session->unset_userdata('cart');
			$this->session->unset_userdata('sumCart');
			$this->session->unset_userdata('numberCart');

			echo TRUE;
		}
	}

}

/* End of file ThanhToan.php */
/* Location: ./application/controllers/ThanhToan.php */