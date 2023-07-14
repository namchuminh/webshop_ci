<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class GioHang extends MY_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Website/Model_GioHang');
		$data = array();
	}

	public function index()
	{
        $cart = $this->session->userdata('cart');
        $data['list'] = $cart;
        $data['title'] = "Giỏ Hàng Sản Phẩm";
        return $this->load->view('Website/View_GioHang', $data);
	}

	public function Add($product_id, $quantity) {
        $cart = $this->session->userdata('cart');
        
        if (!$cart) {
            $cart = array();
        }

        if(empty($quantity)){
        	return redirect(base_url('gio-hang/'));
        }
        
        if(count($this->Model_GioHang->getProductById($product_id)) == 0){
        	return redirect(base_url('gio-hang/'));
        }

        $price = $this->Model_GioHang->getProductById($product_id)[0]['GiaBan'];
        $image = $this->Model_GioHang->getImageProductById($product_id)[0]['DuongDan'];
        $name =  $this->Model_GioHang->getProductById($product_id)[0]['TenSanPham'];
        $slug = $this->Model_GioHang->getProductById($product_id)[0]['DuongDan'];
        $color = $this->Model_GioHang->getColorById($product_id);
        if (isset($cart[$product_id])) {
            $cart[$product_id]['number'] += $quantity;
        } else {
            $cart[$product_id] = array(
                'id' => $product_id,
                'number' => $quantity,
                'price' => $price,
                'image' => $image,
                'name' => $name,
                'slug' => $slug, 
                'color' => $color
            );
        }

        $sumCart = 0;

        foreach ($cart as $key => $value) {
        	$sumCart += $value['price'] * $value['number'];
        }


        if(isset($_SESSION['saleCode'])){
            $saleCode = $this->session->userdata('saleCode');
            $sumCart = $sumCart - $saleCode;
        }

        $this->session->set_userdata('cart', $cart);
        $this->session->set_userdata('sumCart', $sumCart);
        $this->session->set_userdata('numberCart', count($cart));

        $data = array(
		    'sumCart' => number_format($sumCart),
		    'numberCart' => count($cart),
		);

		$json = json_encode($data);

		echo $json;
    }


    public function AddDetail($product_id, $quantity, $color) {
        $cart = $this->session->userdata('cart');
        
        if (!$cart) {
            $cart = array();
        }

        if(count($this->Model_GioHang->getProductById($product_id)) == 0){
            return redirect(base_url('gio-hang/'));
        }

        $price = $this->Model_GioHang->getProductById($product_id)[0]['GiaBan'];
        $image = $this->Model_GioHang->getImageProductById($product_id)[0]['DuongDan'];
        $name =  $this->Model_GioHang->getProductById($product_id)[0]['TenSanPham'];
        $slug = $this->Model_GioHang->getProductById($product_id)[0]['DuongDan'];

        if (isset($cart[$product_id])) {
            $cart[$product_id]['number'] += $quantity;
            $cart[$product_id]['color'] = array($color);
        } else {
            $cart[$product_id] = array(
                'id' => $product_id,
                'number' => $quantity,
                'price' => $price,
                'image' => $image,
                'name' => $name,
                'slug' => $slug, 
                'color' => array($color)
            );
        }

        $sumCart = 0;

        foreach ($cart as $key => $value) {
            $sumCart += $value['price'] * $value['number'];
        }

        if(isset($_SESSION['saleCode'])){
            $saleCode = $this->session->userdata('saleCode');
            $sumCart = $sumCart - $saleCode;
        }

        $this->session->set_userdata('cart', $cart);
        $this->session->set_userdata('sumCart', $sumCart);
        $this->session->set_userdata('numberCart', count($cart));

        $data = array(
            'sumCart' => number_format($sumCart),
            'numberCart' => count($cart),
        );

        $json = json_encode($data);

        echo $json;
    }

    public function UpdateColor($product_id, $color){
        if(count($this->Model_GioHang->getProductById($product_id)) == 0){
            return redirect(base_url('gio-hang/'));
        }

        $cart = $this->session->userdata('cart');
        $cart[$product_id]['color'] = array($color);
        $this->session->set_userdata('cart', $cart);
    }

    public function UpdateNumber($product_id, $number){
        if(count($this->Model_GioHang->getProductById($product_id)) == 0){
            return redirect(base_url('gio-hang/'));
        }

        if($product_id == 0){
            $product_id = 1;
        }

        $cart = $this->session->userdata('cart');
        $cart[$product_id]['number'] = $number;
        $this->session->set_userdata('cart', $cart);

        $sumCart = 0;

        foreach ($cart as $key => $value) {
            $sumCart += $value['price'] * $value['number'];
        }

        if(isset($_SESSION['saleCode'])){
            $saleCode = $this->session->userdata('saleCode');
            $sumCart = $sumCart - $saleCode;
        }

        $this->session->set_userdata('sumCart', $sumCart);
    }

    public function DeleteById($product_id) {
        if(count($this->Model_GioHang->getProductById($product_id)) == 0){
            return redirect(base_url('gio-hang/'));
        }

        $cart = $this->session->userdata('cart');
        if (isset($cart[$product_id])) {
            unset($cart[$product_id]);
        }
        $this->session->set_userdata('cart', $cart);

        $sumCart = 0;
        foreach ($cart as $key => $value) {
            $sumCart += $value['price'] * $value['number'];
        }

        if(isset($_SESSION['saleCode'])){
            $saleCode = $this->session->userdata('saleCode');
            $sumCart = $sumCart - $saleCode;
        }
        $this->session->set_userdata('sumCart', $sumCart);
        $this->session->set_userdata('numberCart', count($cart));

        if(count($cart) == 0){
            if (isset($_SESSION['saleCode'])) {
                unset($_SESSION['saleCode']);
            }

            unset($_SESSION['cart']);
            unset($_SESSION['sumCart']);
            unset($_SESSION['numberCart']);
        }
    }

    public function Code($magiamgia){
        $cart = $this->session->userdata('cart');

        $sumCart = 0;
        foreach ($cart as $key => $value) {
            $sumCart += $value['price'] * $value['number'];
        }

        if(count($this->Model_GioHang->checkCode($magiamgia)) <= 0){
            echo "Mã Giảm Giá Không Đúng!";
            return;
        }

        $solandung = $this->Model_GioHang->checkCode($magiamgia)[0]['SoLanDung'];
        $soluong = $this->Model_GioHang->checkCode($magiamgia)[0]['SoLuong'];
        $ngayhethan = $this->Model_GioHang->checkCode($magiamgia)[0]['NgayHetHan'];

        if($solandung >= $soluong){
            echo "Mã Giảm Giá Đã Hết Số Lần Sử Dụng!";
            return;
        }

        $currentDate = date("Y-m-d");
        if (strtotime($currentDate) > strtotime($ngayhethan)) {
            echo "Mã Giảm Giá Đã Hết Hạn Sử Dụng";
            return;
        }

        $trigia = $this->Model_GioHang->checkCode($magiamgia)[0]['TriGia'];

        if($trigia >= $sumCart){
            echo "Mã Giảm Giá Không Được Có Giá Trị Lớn Hơn Tổng Đơn Hàng!";
            return;
        }

        $this->session->set_userdata('saleCode', $trigia);

        if(isset($_SESSION['saleCode'])){
            $saleCode = $this->session->userdata('saleCode');
            $sumCart = $sumCart - $saleCode;
        }

        $this->session->set_userdata('sumCart', $sumCart);

        $solandung = $solandung + 1;

        $this->Model_GioHang->updateCode($solandung,$magiamgia);

        echo TRUE;
    }

    public function checkCart(){
        $cart = $this->session->userdata('cart');
        if(!$cart || count($cart) == 0){
            echo "Vui Lòng Thêm Sản Phẩm Vào Giỏ Hàng";
            return;
        }

        $colorNull = FALSE;

        foreach ($cart as $key => $value) {
            if(count($value['color']) > 1){
                $colorNull = TRUE;
            }
        }

        if($colorNull == TRUE){
            echo "Vui Lòng Chọn Đủ Màu Sắc Sản Phẩm!";
            return;
        }

        $this->session->set_userdata('redirectPay', TRUE);

        echo TRUE;
    }

}

/* End of file GioHang.php */
/* Location: ./application/controllers/GioHang.php */