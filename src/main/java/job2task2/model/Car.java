package job2task2.model;

import javax.persistence.*;

@Entity
@Table(name = "cars")
public class Car {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "series")
    private int series;

    @Column(name = "licensePlate")
    private String licensePlate;

    public Car() {
    }

    public Car(Long id, String name, int series, String licensePlate) {
        this.id = id;
        this.name = name;
        this.series = series;
        this.licensePlate = licensePlate;
    }

    public Car(String name, int series, String licensePlate) {
        this.name = name;
        this.series = series;
        this.licensePlate = licensePlate;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSeries() {
        return series;
    }

    public void setSeries(int series) {
        this.series = series;
    }

    public String getLicensePlate() {
        return licensePlate;
    }

    public void setLicensePlate(String licensePlate) {
        this.licensePlate = licensePlate;
    }

}
