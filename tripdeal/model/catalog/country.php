<?php

class ModelCatalogCountry extends Model
{
    public function getCountryData()
    {
        $COUNTRY_DATA = array(
            1 => array(
                "continentName" => "ASIA",
                "country" => array(
                    1 => array(
                        "countryName" => "VIETNAM",
                        "image" => "/". DIR_ROOT_NAME. "/image/ASIA/VIETNAM/vn.png",
                        "city" => array(
                            1 => array(
                                "cityName" => "NHATRANG",
                                "place" => array(
                                    1 => array(
                                        "placeName" => "Vinperland",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/VIETNAM/NHATRANG/Vinperland.png"
                                    ),
                                    2 => array(
                                        "placeName" => "DaoKhi",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/VIETNAM/NHATRANG/daokhi.png"
                                    ),
                                )

                            ),
                            2 => array(
                                "cityName" => "PHANTHIET",
                                "place" => array(
                                    1 => array(
                                        "placeName" => "MuiNe",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/VIETNAM/PHANTHIET/daokhi.png"
                                    )
                                )
                            )
                        )
                    ),
                    2=> array(
                        "countryName" => "CHINA",
                        "image" => "/". DIR_ROOT_NAME. "/image/ASIA/CHINA/cn.png",
                        "city" => array(
                            1 => array(
                                "cityName" => "BACKINH",
                                "place" => array(
                                    1=> array(
                                        "placeName" => "VAN LY TRUONG THANH",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/CHINA/BACKINH/vanly.png"
                                    ),
                                    2=> array(
                                        "placeName" => "BAC KINH CITY",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/CHINA/BACKINH/city.png"
                                    )
                                )

                            ),
                            2 => array(
                                "cityName" => "SANGHAI",
                                "place" => array(
                                    1 => array(
                                        "placeName" => "SANGHAICITY",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/CHINA/SANGHAI/city.png"
                                    )
                                )
                            )
                        )
                    ),
                    3 => array(
                        "countryName" => "THAILAND",
                        "image" => "/". DIR_ROOT_NAME. "/image/ASIA/THAILAND/thailand.png",
                        "city" => array(
                            1 => array(
                                "cityName" => "Bangkok",
                                "place" => array(
                                    1=> array(
                                        "placeName" => "Bangkok city",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/THAILAND/Bangkok/city.png"
                                    )
                                )

                            )
                        )
                    ),
                    4=> array(
                        "countryName" => "SINGAPORE",
                        "image" => "/". DIR_ROOT_NAME. "/image/ASIA/SINGAPORE/singapore.png",
                        "city" => array(
                            1 => array(
                                "cityName" => "singapore",
                                "place" => array(
                                    1=> array(
                                        "placeName" => "tower",
                                        "image" => "/". DIR_ROOT_NAME."/image/ASIA/SINGAPORE/tower.png"
                                    )
                                )

                            )
                        )
                    )
                )
            )
        );
        return $COUNTRY_DATA;
    }

    public function getCountries($continentName){
        $countryData = $this->getCountryData();
        foreach($countryData as $continentIndex){
            if($continentIndex['continentName'] == $continentName){
                return $continentIndex['country'];
            }
        }
        return array();
    }

    public function getCities($countryName){
        $countryData = $this->getCountryData();
        foreach($countryData as $continentIndex){
            foreach($continentIndex['country'] as $country){
                if($country['countryName'] == $countryName){
                    return $country['city'];
                }
            }
        }
        return array();
    }
}
?>