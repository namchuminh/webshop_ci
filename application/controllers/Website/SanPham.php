<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class SanPham extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Website/Model_SanPham');
		$this->load->model('Model_TrangChu');
		$data = array();
	}

	public function index()
	{

		$totalRecords = $this->Model_SanPham->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['popular'] = $this->Model_TrangChu->getPopular();
		$data['category'] = $this->Model_SanPham->getCategory();
		$data['totalPages'] = $totalPages;
		$data['list'] = $this->Model_SanPham->getAll();
		$data['title'] = "Tất Cả Sản Phẩm Trong Cửa Hàng";
		return $this->load->view('Website/View_SanPham', $data);
	}

	public function Page($trang){
		$totalRecords = $this->Model_SanPham->checkNumber();
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('san-pham/trang/1/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('san-pham/trang/'.$totalPages.'/'));
		}

		$start = ($trang - 1) * $recordsPerPage;

		$data['popular'] = $this->Model_TrangChu->getPopular();
		$data['category'] = $this->Model_SanPham->getCategory();
		$data['title'] = "Tất Cả Sản Phẩm Trong Cửa Hàng";

		if($start == 0){
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_SanPham->getAll();
			return $this->load->view('Website/View_SanPham', $data);
		}else{
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_SanPham->getAll($start);
			return $this->load->view('Website/View_SanPham', $data);
		}
	}

	public function Color($mau){
		$mauSacMap = [
	        "xanh" => "blue",
	        "do" => "red",
	        "vang" => "yellow",
	        "trang" => "white",
	        "den" => "black",
	        "hong" => "pink"
	    ];

	    if (array_key_exists($mau, $mauSacMap)) {
	        $mauSacCSDL = $mauSacMap[$mau];

	        $totalRecords = $this->Model_SanPham->checkNumberColor($mauSacCSDL);
			$recordsPerPage = 12;
			$totalPages = ceil($totalRecords / $recordsPerPage); 


			$data['popular'] = $this->Model_TrangChu->getPopular();
			$data['category'] = $this->Model_SanPham->getCategory();
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_SanPham->getAllColor($mauSacCSDL);
			$data['title'] = "Tất Cả Sản Phẩm Trong Cửa Hàng";
			$data['mau'] = $mau;
			return $this->load->view('Website/View_MauSanPham', $data);
	        
	    } else {
	        return redirect(base_url('san-pham/'));
	    }
	}

	public function PageColor($mau,$trang){
		$mauSacMap = [
	        "xanh" => "blue",
	        "do" => "red",
	        "vang" => "yellow",
	        "trang" => "white",
	        "den" => "black",
	        "hong" => "pink"
	    ];

	    if (array_key_exists($mau, $mauSacMap)) {
	        $mauSacCSDL = $mauSacMap[$mau];

	        $totalRecords = $this->Model_SanPham->checkNumberColor($mauSacCSDL);
			$recordsPerPage = 12;
			$totalPages = ceil($totalRecords / $recordsPerPage); 

			if($trang < 1){
				return redirect(base_url('san-pham/mau/'.$mau.'/trang/1/'));
			}

			if($trang > $totalPages){
				return redirect(base_url('san-pham/mau/'.$mau.'/trang/'.$totalPages.'/'));
			}

			$start = ($trang - 1) * $recordsPerPage;

			if($start == 0){
				$data['popular'] = $this->Model_TrangChu->getPopular();
				$data['category'] = $this->Model_SanPham->getCategory();
				$data['totalPages'] = $totalPages;
				$data['list'] = $this->Model_SanPham->getAllColor($mauSacCSDL);
				$data['title'] = "Tìm Sản Phẩm Theo Màu Sắc!";
				$data['mau'] = $mau;
				return $this->load->view('Website/View_MauSanPham', $data);
			}else{
				$data['popular'] = $this->Model_TrangChu->getPopular();
				$data['category'] = $this->Model_SanPham->getCategory();
				$data['totalPages'] = $totalPages;
				$data['list'] = $this->Model_SanPham->getAllColor($mauSacCSDL,$start);
				$data['title'] = "Tìm Sản Phẩm Theo Màu Sắc!";
				$data['mau'] = $mau;
				return $this->load->view('Website/View_MauSanPham', $data);
			}
	        
	    } else {
	        return redirect(base_url('san-pham/'));
	    }
	}

	public function Search(){
		$tensanpham = $this->input->get('s');

		if(!isset($tensanpham) || empty($tensanpham)){
			return redirect(base_url('san-pham/'));
		}

		$totalRecords = $this->Model_SanPham->checkNumberSearch($tensanpham);
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		$data['popular'] = $this->Model_TrangChu->getPopular();
		$data['category'] = $this->Model_SanPham->getCategory();
		$data['list'] = $this->Model_SanPham->getAllSearch($tensanpham);
		$data['totalPages'] = $totalPages;
		$data['title'] = "Tìm Kiếm: ".$tensanpham;
		$data['search'] = $tensanpham;
		return $this->load->view('Website/View_TimKiemSanPham', $data);
	}

	public function PageSearch($trang){

		$tensanpham = $this->input->get('s');

		if(!isset($tensanpham) || empty($tensanpham)){
			return redirect(base_url('san-pham/'));
		}

		$totalRecords = $this->Model_SanPham->checkNumberSearch($tensanpham);
		$recordsPerPage = 12;
		$totalPages = ceil($totalRecords / $recordsPerPage); 

		if($trang < 1){
			return redirect(base_url('tim-kiem/trang/1/'));
		}

		if($trang > $totalPages){
			return redirect(base_url('tim-kiem/trang/'.$totalPages.'/'));
		}

		$start = ($trang - 1) * $recordsPerPage;

		if($start == 0){
			$data['popular'] = $this->Model_TrangChu->getPopular();
			$data['category'] = $this->Model_SanPham->getCategory();
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_SanPham->getAllSearch($tensanpham);
			$data['title'] = "Tìm Kiếm: ".$tensanpham;
			$data['search'] = $tensanpham;
			return $this->load->view('Website/View_TimKiemSanPham', $data);
		}else{
			$data['popular'] = $this->Model_TrangChu->getPopular();
			$data['category'] = $this->Model_SanPham->getCategory();
			$data['totalPages'] = $totalPages;
			$data['list'] = $this->Model_SanPham->getAllSearch($tensanpham,$start);
			$data['title'] = "Tìm Kiếm: ".$tensanpham;
			$data['search'] = $tensanpham;
			return $this->load->view('Website/View_TimKiemSanPham', $data);
		}

	}

	public function Detail($DuongDan){

		if(count($this->Model_SanPham->getBySlug($DuongDan)) == 0){
			return redirect(base_url('san-pham'));
		}

		$machuyenmuc = $this->Model_SanPham->getBySlug($DuongDan)[0]['MaChuyenMuc'];

		$data['related'] = $this->Model_SanPham->getRelated($machuyenmuc);
		$data['detail'] = $this->Model_SanPham->getBySlug($DuongDan);
		$data['popular'] = $this->Model_TrangChu->getPopular();
		$data['category'] = $this->Model_SanPham->getCategory();
		$data['list'] = $this->Model_SanPham->getAll();
		$data['title'] = $this->Model_SanPham->getBySlug($DuongDan)[0]['TenSanPham'];
		return $this->load->view('Website/View_ChiTietSanPham', $data);
	}
}

/* End of file SanPham.php */
/* Location: ./application/controllers/SanPham.php */