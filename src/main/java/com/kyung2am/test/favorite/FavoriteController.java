package com.kyung2am.test.favorite;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kyung2am.test.favorite.domain.Favorite;
import com.kyung2am.test.favorite.service.FavoriteService;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {

	@Autowired
	private FavoriteService favoriteService;
	
	@GetMapping("/list")
	public String listFavorite(Model model) {
		
		List<Favorite> list = favoriteService.getFavoriteList();
		
		model.addAttribute("favoriteList", list);
		return "/favorite/list";
	}
	
	@GetMapping("/addInput")
	public String addInputFavorite() {
		return "/favorite/addInput";
	}
	
	@PostMapping("/add")
	@ResponseBody
	public Map<String, String> addFavorite(
			@RequestParam("name") String name
			,@RequestParam("url") String url
			) {
		
		int count = favoriteService.addFavorite(name, url);
		
		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		}else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
	
	
	
}
