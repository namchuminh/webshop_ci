<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class TrangChu extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Model_TrangChu');
		$data = array();
	}

	public function index()
	{
		$data['title'] = "Cửa hàng mua sắm trực tuyến uy tín, giá rẻ!";
		$data['slide'] = $this->Model_TrangChu->getSlides();
		$data['banner1'] = $this->Model_TrangChu->getBanner1();
		$data['banner2'] = $this->Model_TrangChu->getBanner2();
		$data['popular'] = $this->Model_TrangChu->getPopular();
		$data['new'] = $this->Model_TrangChu->getNew();
		$data['sale'] = $this->Model_TrangChu->getSale();
		$data['news'] = $this->Model_TrangChu->getNews();
		return $this->load->view('View_TrangChu', $data);
	}

}

/* End of file TrangChu.php */
/* Location: ./application/controllers/TrangChu.php */