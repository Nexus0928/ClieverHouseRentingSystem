package com.pl.service;

import com.pl.dao.HouseMapper;

public class HouseServiceImpl implements HouseService {
    private HouseMapper houseMapper;

    public void setHouseMapper(HouseMapper houseMapper) {
        this.houseMapper = houseMapper;
    }
}
