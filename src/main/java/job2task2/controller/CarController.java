package job2task2.controller;

import job2task2.model.Car;
import job2task2.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/car")
public class CarController {
    @Autowired
    private CarService carService;

    @GetMapping("/list")
    public String listCars(@RequestParam(name="locale", required=false, defaultValue="ru") String locale ,Model theModel) {
        List<Car> theCars = carService.getCars();
        theModel.addAttribute("cars", theCars);
        theModel.addAttribute("locale", locale);
        return "list-cars";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Car theCar = new Car();
        theModel.addAttribute("car", theCar);
        return "car-form";
    }

    @PostMapping("/saveCar")
    public String saveCar(@ModelAttribute("car") Car theCar) {
        carService.saveCar(theCar);
        return "redirect:/car/list";
    }

    @GetMapping("/updateForm")
    public String showFormForUpdate(@RequestParam("carId") long theId, Model theModel) {
        Car theCar = carService.getCar(theId);
        theModel.addAttribute("car", theCar);
        return "car-form";
    }

    @GetMapping("/delete")
    public String deleteCar(@RequestParam("carId") long theId) {
        carService.deleteCar(theId);
        return "redirect:/car/list";
    }
}
