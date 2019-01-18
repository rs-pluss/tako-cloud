package sia.tacocloud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;
import sia.tacocloud.Model.Order;

@Slf4j
@Controller
@RequestMapping("/orders")
public class OrderController {

    public String orderForm(Model model) {
        model.addAttribute("order", new Order());
        return "orderForm";
    }

}
