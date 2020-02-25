package job2task2.dao;

import job2task2.model.Car;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class CarDaoImpl implements CarDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Car> getCars() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<Car> cq = cb.createQuery(Car.class);
        Root<Car> root = cq.from(Car.class);
        cq.select(root);
        Query query = session.createQuery(cq);
        return query.getResultList();
    }

    @Override
    public void saveCar(Car theCar) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.saveOrUpdate(theCar);
    }

    @Override
    public Car getCar(long theId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Car theCar = currentSession.get(Car.class, theId);
        return theCar;
    }

    @Override
    public void deleteCar(long theId) {
        Session session = sessionFactory.getCurrentSession();
        Car car = session.byId(Car.class).load(theId);
        session.delete(car);
    }
}
