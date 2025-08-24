package springmvcsearch;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("/uploadform")
	public String showUploadForm() {		
		return "uploadfile";
	}

	@RequestMapping(value = "/uploadimage", method = RequestMethod.POST)
	public String FileUpload(@RequestParam("image") CommonsMultipartFile file, HttpSession s, Model m) {
		System.out.println("File uploaded");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());

		// We have to save this file to server...
		byte[] data = file.getBytes();
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "Resources" + File.separator
				+ "image" + File.separator + file.getOriginalFilename();
		System.out.println("Path: " + path);

		// We are uploading the file on project file folder ex:image folder
		try {
			FileOutputStream fos = new FileOutputStream(path);
			fos.write(data);
			fos.close();
			m.addAttribute("filename", file.getOriginalFilename());
			m.addAttribute("msg", "File upladed successfully");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("File uploading error");
			m.addAttribute("msg", "Error: upoading error");
		}

		return "filesuccess";
	}
}
