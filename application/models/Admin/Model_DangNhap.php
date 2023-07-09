<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_DangNhap extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	public function checkAccountAdmin($taikhoan, $matkhau){
		$sql = "SELECT * FROM nhanvien WHERE TaiKhoan = ? AND MatKhau = ?";
		$result = $this->db->query($sql, array($taikhoan, $matkhau));
		return $result->num_rows();
	}

	public function checkAccountAdminStatus($taikhoan, $matkhau){
		$sql = "SELECT * FROM nhanvien WHERE TaiKhoan = ? AND MatKhau = ? AND TrangThai = -1";
		$result = $this->db->query($sql, array($taikhoan, $matkhau));
		return $result->num_rows();
	}
}

/* End of file DangNhap.php */
/* Location: ./application/models/DangNhap.php */