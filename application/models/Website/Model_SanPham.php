<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_SanPham extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	public function getAll($start = 0, $end = 12){
		$sql = "SELECT sanpham.*, hinhanh.LoaiAnh, hinhanh.MaSanPham, hinhanh.DuongDan AS duongdananh FROM sanpham,hinhanh WHERE hinhanh.MaSanPham = sanpham.MaSanPham AND hinhanh.LoaiAnh = 1 AND sanpham.TrangThai != 0 ORDER BY sanpham.MaSanPham DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function checkNumber(){
		$sql = "SELECT * FROM sanpham WHERE TrangThai != 0";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getCategory(){
		$sql = "SELECT COUNT(sp.MaSanPham) AS soLuongSanPham, cm.tenChuyenMuc, cm.DuongDan FROM sanpham sp JOIN chuyenmuc cm ON sp.maChuyenMuc = cm.maChuyenMuc GROUP BY cm.maChuyenMuc, cm.tenChuyenMuc;";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function getAllColor($mau, $start = 0, $end = 12){
		$sql = "SELECT sanpham.*, mausac.TenMauSac, mausac.MaSanPham, hinhanh.LoaiAnh, hinhanh.MaSanPham, hinhanh.DuongDan AS duongdananh FROM sanpham,mausac,hinhanh WHERE sanpham.MaSanPham = mausac.MaSanPham AND hinhanh.MaSanPham = sanpham.MaSanPham AND hinhanh.LoaiAnh = 1 AND sanpham.TrangThai != 0 AND mausac.TenMauSac = ? ORDER BY sanpham.MaSanPham DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($mau, $start, $end));
		return $result->result_array();
	}

	public function checkNumberColor($mau){
		$sql = "SELECT sanpham.*, mausac.TenMauSac, mausac.MaSanPham FROM sanpham,mausac,hinhanh WHERE sanpham.MaSanPham = mausac.MaSanPham AND sanpham.TrangThai != 0 AND mausac.TenMauSac = ? GROUP BY sanpham.MaSanPham";
		$result = $this->db->query($sql,array($mau));
		return $result->num_rows();
	}

	public function getAllSearch($tensanpham, $start = 0, $end = 12){
		$tsp = "%".$tensanpham."%";
		$sql = "SELECT sanpham.*, hinhanh.LoaiAnh, hinhanh.MaSanPham, hinhanh.DuongDan AS duongdananh FROM sanpham,hinhanh WHERE hinhanh.MaSanPham = sanpham.MaSanPham AND hinhanh.LoaiAnh = 1 AND sanpham.TrangThai != 0 AND sanpham.TenSanPham LIKE ? ORDER BY sanpham.MaSanPham DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($tsp,$start, $end));
		return $result->result_array();
	}

	public function checkNumberSearch($tensanpham){
		$tsp = "%".$tensanpham."%";
		$sql = "SELECT * FROM sanpham WHERE TrangThai != 0 AND TenSanPham LIKE ?";
		$result = $this->db->query($sql, array($tsp));
		return $result->num_rows();
	}

}

/* End of file Model_SanPham.php */
/* Location: ./application/models/Model_SanPham.php */