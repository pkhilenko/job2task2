package job2task2.service;

import job2task2.dao.CarDao;
import job2task2.model.Car;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Autowired
    private CarDao carDao;

    @Override
    @Transactional
    public List<Car> getCars() {
        return carDao.getCars();
    }

    @Override
    @Transactional
    public void saveCar(Car theCar) {
        carDao.saveCar(theCar);
    }

    @Override
    @Transactional
    public Car getCar(long theId) {
        return carDao.getCar(theId);
    }

    @Override
    @Transactional
    public void deleteCar(long theId) {
        carDao.deleteCar(theId);
    }
}
