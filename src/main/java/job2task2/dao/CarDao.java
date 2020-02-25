package job2task2.dao;

import job2task2.model.Car;

import java.util.List;

public interface CarDao {
    public List<Car> getCars();
    public void saveCar(Car theCar);
    public Car getCar(long theId);
    public void deleteCar(long theId);
}
