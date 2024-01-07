<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class YeuThich extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Website/Model_SanPham');
		$this->load->model('Website/Model_GioHang');
	}

	public function index()
	{
		$wishlist = $this->session->userdata('wishlist');
        $data['list'] = $wishlist;
        $data['title'] = "Sản phẩm yêu thích";
        return $this->load->view('Website/View_YeuThich', $data);
	}

	public function add($product_id)
    {
    	$sanpham = $this->Model_SanPham->getById($product_id);
    	$image = $this->Model_GioHang->getImageProductById($product_id)[0]['DuongDan'];

    	if(count($sanpham) <= 0){
    		echo "Sản phẩm không tồn tại!";
    	}else{
    		$wishlist = $this->session->userdata('wishlist');

	        // Kiểm tra nếu wishlist chưa được khởi tạo thì tạo mới là một mảng trống
	        if (!$wishlist) {
	            $wishlist = array();
	        }

		    if (isset($wishlist[$product_id])) {
                echo "Sản phẩm đã có trong danh sách yêu thích!";
            } else {
                $wishlist[$product_id] = array(
                    'id' => $product_id,
                    'price' => $sanpham[0]['GiaBan'],
                    'image' => $image,
                    'name' => $sanpham[0]['TenSanPham'],
                    'slug' => $sanpham[0]['DuongDan'], 
                );

                $this->session->set_userdata('wishlist', $wishlist);
                $this->session->set_userdata('count_wishlist', count($wishlist));
                echo count($wishlist);
            }
    	}

    }

    public function delete($product_id){
    	if(count($this->Model_SanPham->getById($product_id)) == 0){
            return redirect(base_url('yeu-thich/'));
        }

        $wishlist = $this->session->userdata('wishlist');
        if (isset($wishlist[$product_id])) {
            unset($wishlist[$product_id]);
        }
        $this->session->set_userdata('wishlist', $wishlist);
        $this->session->set_userdata('count_wishlist', count($wishlist));

        return redirect(base_url('yeu-thich/'));
    }

}

/* End of file YeuThich.php */
/* Location: ./application/controllers/YeuThich.php */