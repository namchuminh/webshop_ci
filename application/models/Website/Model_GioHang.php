<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_GioHang extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}

	public function getProductById($MaSanPham){
		$sql = "SELECT * FROM sanpham WHERE MaSanPham = ?";
		$result = $this->db->query($sql, array($MaSanPham));
		return $result->result_array();
	}

	public function getImageProductById($MaSanPham){
		$sql = "SELECT * FROM hinhanh WHERE MaSanPham = ? AND LoaiAnh = 1";
		$result = $this->db->query($sql, array($MaSanPham));
		return $result->result_array();
	}

	public function getColorById($MaSanPham){
		$sql = "SELECT * FROM mausac WHERE MaSanPham = ?";
		$result = $this->db->query($sql, array($MaSanPham));
		return $result->result_array();
	}


	public function checkCode($magiamgia){
		$sql = "SELECT * FROM magiamgia WHERE MaSuDung = ? AND TrangThai != 0";
		$result = $this->db->query($sql, array($magiamgia));
		return $result->result_array();
	}

	public function updateCode($solandung,$magiamgia){
		$sql = "UPDATE `magiamgia` SET `SoLanDung`=? WHERE `MaSuDung`=?";
		$result = $this->db->query($sql, array($solandung,$magiamgia));
		return $result;
	}

}	

/* End of file Model_GioHang.php */
/* Location: ./application/models/Model_GioHang.php */