<?php
class ControllerTravelCustom extends Controller
{
    public function index()
    {
        $this->document->setTitle($this->config->get('config_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));

        $this->data['heading_title'] = $this->config->get('config_title');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/travel/custom.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/travel/custom.tpl';
        } else {
            $this->template = 'default/template/travel/custom.tpl';
        }
        $this->children = array(
            'common/header',
            'common/footer',
            'travel/custom/continent',
            'travel/custom/country',
            'travel/custom/city'
        );

        $this->response->setOutput($this->render());
    }

    public function continent()
    {
        $this->load->model('catalog/country');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/travel/continent.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/travel/continent.tpl';
        } else {
            $this->template = 'default/template/travel/continent.tpl';
        }

        $continents = $this->model_catalog_country->getCountryData();
        $this->data['continents'] = $continents;

        $this->response->setOutput($this->render());
    }

    public function country()
    {
        $this->load->model('catalog/country');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/travel/country.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/travel/country.tpl';
        } else {
            $this->template = 'default/template/travel/country.tpl';
        }
        $continentName = 'ASIA'; //default value
        if (isset($_POST['continentName'])) {
            $continentName = $_POST['continentName'];
        }

        $countries = $this->model_catalog_country->getCountries($continentName);
        $this->data['countries'] = $countries;

        $this->response->setOutput($this->render());
    }

    public function city()
    {
        $this->load->model('catalog/country');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/travel/city.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/travel/city.tpl';
        } else {
            $this->template = 'default/template/travel/city.tpl';
        }

        $countryName = 'VIETNAM'; //default value
        if (isset($_POST['countryName'])) {
            $countryName = $_POST['countryName'];
        }

        $cities = $this->model_catalog_country->getCities($countryName);
        $this->data['cities'] = $cities; //list city from model

        $this->data['countryName'] = $countryName;
        $this->response->setOutput($this->render());
    }

    public function submit()
    {
        $userEmail = '';
        $userData = array();
        if (isset($_POST['userEmail'])) {
            $userEmail = $_POST['userEmail'];
        }
        if (isset($_POST['userData'])) {
            $userData = $_POST['userData'];
        }
        // TODO : Save DB ---------------
        // TODO : Fill to email template & and send email
    }
}

?>