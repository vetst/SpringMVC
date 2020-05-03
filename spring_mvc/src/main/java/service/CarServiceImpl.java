package service;

import model.Car;

import java.util.ArrayList;
import java.util.List;

public class CarServiceImpl implements CarService {

    private static CarServiceImpl INSTANCE;

    private CarServiceImpl() {

    }

    public static CarServiceImpl getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new CarServiceImpl();
        }
        return INSTANCE;
    }

    @Override
    public List<Car> getCars() {
        List<Car> list = new ArrayList();
        list.add(new Car("Audi", "A6", 30000));
        list.add(new Car("BMW", "X6", 35000));
        list.add(new Car("Ford", "Focus", 15000));
        return list;
    }
}
