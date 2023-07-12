<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_SanPham extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	public function checkNumberProduct(){
		$sql = "SELECT * FROM sanpham WHERE TrangThai = 1";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getProductById($MaSanPham){
		$sql = "SELECT sanpham.*, hinhanh.DuongDan AS duongdananh, hinhanh.LoaiAnh, chuyenmuc.TenChuyenMuc FROM sanpham LEFT JOIN hinhanh ON sanpham.MaSanPham = hinhanh.MaSanPham INNER JOIN chuyenmuc ON sanpham.MaChuyenMuc = chuyenmuc.MaChuyenMuc WHERE sanpham.MaSanPham = ?";
		$result = $this->db->query($sql, array($MaSanPham));
		return $result->result_array();
	}

	public function getAllProduct($start = 0, $end = 10){
		$sql = "SELECT sanpham.*, hinhanh.DuongDan AS duongdananh, hinhanh.LoaiAnh, chuyenmuc.TenChuyenMuc FROM sanpham LEFT JOIN hinhanh ON sanpham.MaSanPham = hinhanh.MaSanPham AND hinhanh.LoaiAnh = 1 INNER JOIN chuyenmuc ON sanpham.MaChuyenMuc = chuyenmuc.MaChuyenMuc WHERE sanpham.TrangThai = 1 ORDER BY sanpham.MaSanPham DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function getAllCategory(){
		$sql = "SELECT * FROM chuyenmuc";
		$result = $this->db->query($sql);
		return $result->result_array();
	}

	public function addProduct($tensanpham,$motangan,$motadai,$giagoc,$giaban,$chuyenmuc,$the,$duongdan,$soluong,$loaisanpham){
		$data = array(
	        "TenSanPham" => $tensanpham,
	        "MoTaNgan" => $motangan,
	        "MoTaDai" => $motadai,
	        "GiaGoc" => $giagoc,
	        "GiaBan" => $giaban,
	        "MaChuyenMuc" => $chuyenmuc,
	        "The" => $the,
	        "DuongDan" => $duongdan,
	        "SoLuong" => $soluong,
	        "LoaiSanPham" => $loaisanpham
	    );

	    $this->db->insert('sanpham', $data);
	    $lastInsertedId = $this->db->insert_id();

	    return $lastInsertedId;
	}

	public function addImage($duongdan, $loaianh, $masanpham){
		$sql = "INSERT INTO `hinhanh`(`MaSanPham`, `DuongDan`, `LoaiAnh`) VALUES (?, ?, ?)";
		$result = $this->db->query($sql,array($masanpham,$duongdan,$loaianh));
		return $result;
	}

	public function addColor($masanpham, $tenmausac, $mahienthi){
		$sql = "INSERT INTO `mausac`(`MaSanPham`, `TenMauSac`, `MaHienThi`) VALUES (?, ?, ?)";
		$result = $this->db->query($sql,array($masanpham, $tenmausac, $mahienthi));
		return $result;
	}

	public function updateProduct($tensanpham,$motangan,$motadai,$giagoc,$giaban,$chuyenmuc,$the,$duongdan, $soluong, $loaisanpham, $masanpham){
		$sql = "UPDATE `sanpham` SET `TenSanPham`= ?,`MoTaNgan`= ?,`MoTaDai`= ?,`GiaGoc`= ?,`GiaBan`= ?,`MaChuyenMuc`= ?,`The`= ?,`DuongDan`= ?,`SoLuong`= ?, `LoaiSanPham` = ? WHERE `MaSanPham`= ?";
		$result = $this->db->query($sql,array($tensanpham,$motangan,$motadai,$giagoc,$giaban,$chuyenmuc,$the,$duongdan,$soluong, $loaisanpham, $masanpham));
		return $result;
	}

	public function updateImage($masanpham, $duongdan, $loaianh){
		$sql = "UPDATE `hinhanh` SET `DuongDan`= ? WHERE `MaSanPham`= ? AND `LoaiAnh`= ?";
		$result = $this->db->query($sql,array($duongdan,$masanpham,$loaianh));
		return $result;
	}

	public function deleteColor($masanpham){
		$sql = "DELETE FROM mausac WHERE MaSanPham = ?";
		$result = $this->db->query($sql,array($masanpham));
		return $result;
	}

	public function removeProduct($masanpham){
		$sql = "UPDATE `sanpham` SET `TrangThai`= 0 WHERE `MaSanPham`= ?";
		$result = $this->db->query($sql,array($masanpham));
		return $result;
	}


	public function checkNumberProductTrash(){
		$sql = "SELECT * FROM sanpham WHERE TrangThai = 0";
		$result = $this->db->query($sql);
		return $result->num_rows();
	}

	public function getAllProductTrash($start = 0, $end = 10){
		$sql = "SELECT sanpham.*, hinhanh.DuongDan AS duongdananh, hinhanh.LoaiAnh, chuyenmuc.TenChuyenMuc FROM sanpham LEFT JOIN hinhanh ON sanpham.MaSanPham = hinhanh.MaSanPham AND hinhanh.LoaiAnh = 1 INNER JOIN chuyenmuc ON sanpham.MaChuyenMuc = chuyenmuc.MaChuyenMuc WHERE sanpham.TrangThai = 0 ORDER BY sanpham.MaSanPham DESC LIMIT ?, ?";
		$result = $this->db->query($sql, array($start, $end));
		return $result->result_array();
	}

	public function deleteProduct($masanpham){
		$sql = "DELETE FROM `sanpham` WHERE `MaSanPham`= ? AND `TrangThai` = 0";
		$result = $this->db->query($sql,array($masanpham));
		return $result;
	}

	public function deleteAllProduct(){
		$sql = "DELETE FROM `sanpham` WHERE `TrangThai` = 0";
		$result = $this->db->query($sql);
		return $result;
	}

	public function resetProduct($MaSanPham){
		$sql = "UPDATE `sanpham` SET `TrangThai`= 1 WHERE `MaSanPham`= ?";
		$result = $this->db->query($sql, array($MaSanPham));
		return $result;
	}

	public function resetAllProduct(){
		$sql = "UPDATE `sanpham` SET `TrangThai`= 1 WHERE `TrangThai`= 0";
		$result = $this->db->query($sql);
		return $result;
	}

	public function importProduct($MaSanPham,$soluongmoi){
		$sql = "UPDATE `sanpham` SET `SoLuong`= ? WHERE `MaSanPham`= ?";
		$result = $this->db->query($sql, array($soluongmoi,$MaSanPham));
		return $result;
	}

	public function insertHistoryProvide($MaNhaCungCap, $MaSanPham, $SoLuong, $SoLuongCu){
		$sql = "INSERT INTO `lichsunhap`(`MaNhaCungCap`, `MaSanPham`, `SoLuong`, `SoLuongCu`) VALUES (?, ?, ?, ?)";
		$result = $this->db->query($sql,array($MaNhaCungCap, $MaSanPham, $SoLuong, $SoLuongCu));
		return $result;
	}
}

/* End of file Model_SanPham.php */
/* Location: ./application/models/Model_SanPham.php */