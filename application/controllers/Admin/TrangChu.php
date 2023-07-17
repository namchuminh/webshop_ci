<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		if(!$this->session->has_userdata('taikhoan')){
			return redirect(base_url('admin/dang-nhap/'));
		}

		$this->load->model('Admin/Model_TrangChu');
		$data = array();
	}

	public function index()
	{
		$data['topCustomer'] = $this->Model_TrangChu->getTopCustomer();
		$data['productSelling'] = $this->Model_TrangChu->getProductSelling();
		$data['numberProduct'] = $this->Model_TrangChu->getNumberProductCurrent();
		$data['sumCustomer'] = $this->Model_TrangChu->getNumberCustomerCurrent() - $this->Model_TrangChu->getNumberCustomerOld();
		$data['customerCurrent'] = $this->Model_TrangChu->getNumberCustomerCurrent();
		$data['sumCurrent'] = $this->Model_TrangChu->getNumberRevenueCurrent() - $this->Model_TrangChu->getNumberRevenueOld();
		$data['revenueCurrent'] = $this->Model_TrangChu->getNumberRevenueCurrent();
		$data['sumOrders'] = $this->Model_TrangChu->getNumberOrdersCurrent() - $this->Model_TrangChu->getNumberOrdersOld();
		$data['numberOrders'] = $this->Model_TrangChu->getNumberOrdersCurrent();
		return $this->load->view('Admin/View_TrangChu', $data);
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */