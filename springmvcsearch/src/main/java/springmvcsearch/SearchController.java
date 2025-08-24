package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class SearchController {
	
	@RequestMapping("/home")
	public String home()
	{	
		String str=null;
		System.out.println(str.length());
		return "home";
	}
	
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query)
	{
		String url="https://www.google.co.in/search?q="+query;
		RedirectView redirectView = new RedirectView();
	    if(query.isBlank()) {
			redirectView.setUrl("home");
		}
	    else {
	    	redirectView.setUrl(url);
	    }
		return redirectView;
	}
	
	@RequestMapping("/complex")
	public String ComplexForm()
	{
		return "complex_form";
	}
	
	@RequestMapping(path = "/handleform", method = RequestMethod.POST)
	public String HandleForm(@ModelAttribute("student") Student student, BindingResult result)
	{	
		if(result.hasErrors()) {
			return "complex_form";
		}
		System.out.println(student);
		return "success";
	}
	
	@RequestMapping("/user/{userId}/{userName}")
	public String getUserDetails(@PathVariable("userId") int userId, @PathVariable("userName") String userName)
	{
		System.out.println("UserId is "+userId +" and User Name is "+userName);
		
		//For the number format exception
		Integer.parseInt(userName);
		return "home";
	}
	
	/*
	 * //Handling Exception
	 * 
	 * @ExceptionHandler(value=NullPointerException.class) public String
	 * exceptionHandlerNull(Model m) { m.addAttribute("msg",
	 * "Null pointer exception has been occurred."); return "nullPage"; }
	 * 
	 * @ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	 * 
	 * @ExceptionHandler(value=NumberFormatException.class) public String
	 * exceptionHandlerNumberFormate(Model m) { m.addAttribute("msg",
	 * "Number Format exception has been occurred."); return "nullPage"; }
	 * 
	 * @ExceptionHandler(value=Exception.class) //for all type of exception generic
	 * exception public String exceptionHandlerGeneric(Model m) {
	 * m.addAttribute("msg", "Exception has been occurred."); return "nullPage"; }
	 */
}
