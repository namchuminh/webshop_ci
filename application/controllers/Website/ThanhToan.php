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

        $data = array();
	}

	public function index()
	{
		$data['title'] = "Thanh Toán Đơn Hàng!";
		return $this->load->view('Website/View_ThanhToan', $data);
	}


}

/* End of file ThanhToan.php */
/* Location: ./application/controllers/ThanhToan.php */