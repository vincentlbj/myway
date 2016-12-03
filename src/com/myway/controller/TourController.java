package com.myway.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.myway.dto.CommonDto;
import com.myway.pojo.TourPrice;
import com.myway.pojo.TourWithBLOBs;
import com.myway.service.tour.TourService;
import com.myway.util.StringUtil;

@Controller
@RequestMapping("/tour")
public class TourController {
	@Autowired
	private TourService tourService;

	@RequestMapping("/detail/{id}")
	public String detail(@PathVariable int id, Model model)
			throws JsonParseException, JsonMappingException, IOException {
		TourWithBLOBs tour = (TourWithBLOBs) tourService.getTourById(id);
		ObjectMapper mapper = new ObjectMapper();
		List<CommonDto> routeIncludeList = mapper.readValue(tour.getRouteInclude(),
				new TypeReference<List<CommonDto>>() {
				});
		List<CommonDto> routeContentList = mapper.readValue(tour.getRouteContent(),
				new TypeReference<List<CommonDto>>() {
				});
		List<TourPrice> priceList = tourService.getTourPriceByTourId(id);
		String pictureListString = tour.getPicture();
		String[] pictureList = pictureListString.split(";");
		model.addAttribute("introduction", StringUtil.convertBr(tour.getIntroduction()));
		model.addAttribute("routeIncludeList", routeIncludeList);
		model.addAttribute("routeContentList", routeContentList);
		model.addAttribute("priceList", priceList);
		model.addAttribute("pictureList", pictureList);
		return "tour-detail";
	}

}
