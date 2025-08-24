package springmvcsearch;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class MyExceptionHandler {

	// Handling Exception
	@ExceptionHandler(value = NullPointerException.class)
	public String exceptionHandlerNull(Model m) {
		m.addAttribute("msg", "Null pointer exception has been occurred.");
		return "nullPage";
	}

	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value = NumberFormatException.class)
	public String exceptionHandlerNumberFormate(Model m) {
		m.addAttribute("msg", "Number Format exception has been occurred.");
		return "nullPage";
	}

	@ExceptionHandler(value = Exception.class) // for all type of exception generic exception
	public String exceptionHandlerGeneric(Model m) {
		m.addAttribute("msg", "Exception has been occurred.");
		return "nullPage";
	}

}
