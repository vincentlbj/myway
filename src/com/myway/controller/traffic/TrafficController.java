package com.myway.controller.traffic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/traffic")
public class TrafficController {
	@RequestMapping("/checkTraffic")
	public String checkTraffic() {
		return "traffic-check";
	}
}
