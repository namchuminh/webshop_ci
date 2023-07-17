<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_TrangChu extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function getNumberOrdersCurrent(){
		$sql = "SELECT * FROM donhang WHERE DATE(ThoiGian) = CURDATE() AND TrangThai >= 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getNumberOrdersOld(){
		$sql = "SELECT * FROM donhang WHERE WEEK(ThoiGian) = WEEK(CURDATE()) - 1 AND TrangThai >= 1";
		$result = $this->db->query($sql);
		return $result->num_rows() == 0 ? 1 : $result->num_rows();
	}


	public function getNumberRevenueCurrent(){
		$sql = "SELECT SUM(ThanhTien) AS thanhtien FROM donhang WHERE DATE(ThoiGian) = CURDATE() AND TrangThai >= 1";
		$result = $this->db->query($sql);
		if($result->result_array()[0]['thanhtien'] == null){
			return 0;
		}else{
			return $result->result_array()[0]['thanhtien'];
		}
	}


	public function getNumberRevenueOld(){
		$sql = "SELECT SUM(ThanhTien) AS thanhtien FROM donhang WHERE WEEK(ThoiGian) = WEEK(CURDATE()) - 1 AND TrangThai >= 1";
		$result = $this->db->query($sql);
		
		if($result->result_array()[0]['thanhtien'] == null){
			return 0;
		}else{
			return $result->result_array()[0]['thanhtien'];
		}
	}

	public function getNumberCustomerCurrent(){
		$sql = "SELECT * FROM khachhang WHERE DATE(NgayThamGia) = CURDATE() AND TrangThai >= 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}


	public function getNumberCustomerOld(){
		$sql = "SELECT * FROM khachhang WHERE WEEK(NgayThamGia) = WEEK(CURDATE()) - 1 AND TrangThai >= 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getNumberProductCurrent(){
		$sql = "SELECT SUM(SoLuong) AS soluong FROM `sanpham` WHERE TrangThai >= 1";
		$result = $this->db->query($sql);
		if($result->result_array()[0]['soluong'] == null){
			return 0;
		}else{
			return $result->result_array()[0]['soluong'];
		}
		
	}

	public function getProductSelling(){
		$sql = "SELECT sanpham.TenSanPham, sanpham.MaChuyenMuc, chuyenmuc.TenChuyenMuc, SUM(chitietdonhang.SoLuong) as TongSoLuong FROM chitietdonhang JOIN sanpham ON chitietdonhang.MaSanPham = sanpham.MaSanPham JOIN chuyenmuc ON chuyenmuc.MaChuyenMuc = sanpham.MaChuyenMuc GROUP BY sanpham.MaSanPham ORDER BY TongSoLuong DESC LIMIT 6";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function getTopCustomer(){
		$sql = "SELECT khachhang.TenKhachHang, khachhang.TaiKhoan, khachhang.SoDienThoai, SUM(donhang.SoLuong) as TongSoLuong FROM donhang JOIN khachhang ON donhang.MaKhachHang = khachhang.MaKhachHang GROUP BY donhang.MaKhachHang ORDER BY TongSoLuong DESC LIMIT 5";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

}

/* End of file Model_TrangChu.php */
/* Location: ./application/models/Model_TrangChu.php */