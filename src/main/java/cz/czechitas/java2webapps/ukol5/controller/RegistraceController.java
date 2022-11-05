package cz.czechitas.java2webapps.ukol5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Random;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {
    Random random = new Random();

    @GetMapping("/")
    public ModelAndView form() {
        ModelAndView formular = new ModelAndView("/formular");
        formular.addObject("form", new RegistraceForm());
        formular.addObject("rekapitulace",false);
        return formular;
    }


    @PostMapping("/")
    public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return new ModelAndView("formular")
                    .addObject("rekapitulace",false);
        } else if (form.getVek() < 9 || form.getVek() > 15) {
            return "validaceVeku";
        }
        return new ModelAndView("formular")
                .addObject("rekapitulace",true);



    }
}
