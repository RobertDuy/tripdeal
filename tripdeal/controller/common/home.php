<?php
class ControllerCommonHome extends Controller {
    public function index() {
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
            'common/product_new_receive',
            'common/product_special'
        );

        $this->response->setOutput($this->render());
    }
}
?>