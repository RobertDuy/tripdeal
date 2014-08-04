<?php
class ControllerCommonHome extends Controller {
    public function index() {
        $this->load->model('catalog/product');

        $this->document->setTitle($this->config->get('config_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));

        $this->data['heading_title'] = $this->config->get('config_title');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/common/home.tpl';
        } else {
            $this->template = 'default/template/common/home.tpl';
        }

        $this->children = array(
            'common/header',
            'common/footer',
        );

        $dataModel = $this->model_catalog_product->getNewProductListReceive('short', 0 , 20);
        $this->data['dataModel'] = $dataModel;

        $this->response->setOutput($this->render());
    }
}
?>