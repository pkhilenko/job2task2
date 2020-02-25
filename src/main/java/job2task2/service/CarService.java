package job2task2.service;

import job2task2.model.Car;

import java.util.List;

public interface CarService {
    public List<Car> getCars();

    public void saveCar(Car theCar);

    public Car getCar(long theId);

    public void deleteCar(long theId);
}
