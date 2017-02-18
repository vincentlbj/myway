package com.myway.controller.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.myway.dto.PhotoResult;

@Controller
public class FileServiceController {

	@RequestMapping(value = "/photoUpload", method = RequestMethod.POST)
	@ResponseBody
	public PhotoResult photoUpload(MultipartFile file, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		PhotoResult result = new PhotoResult();
		try {
			if (file != null) {
				String fileName = file.getOriginalFilename();
				String type = fileName.indexOf(".") != -1
						? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length()) : null;
				if (type != null) {
					String trueFileName = getRandomFileName() + "." + type;
					String path = "D:\\jingtai\\" + trueFileName;
					file.transferTo(new File(path));
					result.setData("http://localhost:8080/static/" + trueFileName);
					result.setStatus("0");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.setStatus("1");
		}
		return result;
	}

	/**
	 * 生成随机文件名：当前年月日时分秒+五位随机数
	 * 
	 * @return
	 */
	public static String getRandomFileName() {

		SimpleDateFormat simpleDateFormat;

		simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

		Date date = new Date();

		String str = simpleDateFormat.format(date);

		Random random = new Random();

		int rannum = (int) (random.nextDouble() * (99999 - 10000 + 1)) + 10000;// 获取5位随机数

		return rannum + str;// 当前时间
	}
}
