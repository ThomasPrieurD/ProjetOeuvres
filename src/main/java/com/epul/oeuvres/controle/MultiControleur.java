package com.epul.oeuvres.controle;

//import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
//import com.epul.metier.*;
//import com.epul.meserreurs.*;



import com.epul.oeuvres.dao.Service;
import com.epul.oeuvres.meserreurs.*;
import com.epul.oeuvres.metier.*;







import org.springframework.ui.Model;



import java.util.*;

///
/// Les méthode du contrôleur répondent à des sollicitations
/// des pages JSP

@Controller
public class MultiControleur {

//	private static final Logger logger = LoggerFactory.getLogger(MultiControleur.class);

	@RequestMapping(value = "listerAdherent")
	public ModelAndView afficherLesStages(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String destinationPage;
		try {
			// HttpSession session = request.getSession();
			Service unService = new Service();
			request.setAttribute("mesAdherents", unService.consulterListeAdherents());
			destinationPage = "listerAdherent";
		} catch (MonException e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";

		}
		return new ModelAndView(destinationPage);
	}

	@RequestMapping(value = "insererAdherent")
 	public ModelAndView insererAdherent(HttpServletRequest request, HttpServletResponse response) throws Exception {

						String destinationPage;
				try {
						Adherent unAdherent = new Adherent();
						unAdherent.setNomAdherent(request.getParameter("txtnom"));
					unAdherent.setPrenomAdherent(request.getParameter("txtprenom"));
						unAdherent.setVilleAdherent(request.getParameter("txtville"));
						Service unService = new Service();
						unService.insertAdherent(unAdherent);
					} catch (Exception e) {
						request.setAttribute("MesErreurs", e.getMessage());
						destinationPage = "Erreur";
					}
				destinationPage = "home";
				return new ModelAndView(destinationPage);
			}

	@RequestMapping(value = "ajouterAdherent")
	public ModelAndView ajouterAdherent(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String destinationPage = "";
		try {
			destinationPage = "ajouterAdherent";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";
		}

		return new ModelAndView(destinationPage);
	}

	@RequestMapping(value = "editerAdherent/{idAdherent}")
	public ModelAndView editerAdherent(HttpServletRequest request, HttpServletResponse response, @PathVariable("idAdherent") int idAdherent) throws Exception {

		String destinationPage = "";
		try {
			Service unService = new Service();
			request.setAttribute("monAdherent", unService.consulterAdherent(idAdherent));
			destinationPage = "ajouterAdherent";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";
		}

		return new ModelAndView(destinationPage);
	}

	@RequestMapping(value = "ajouterOeuvre")
	public ModelAndView ajouterOeuvre(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String destinationPage;
		try {
			destinationPage = "ajouterOeuvre";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";
		}
		return new ModelAndView(destinationPage);
	}

	@RequestMapping(value = "insererOeuvre")
	public ModelAndView insererOeuvre(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String destinationPage;
		try {
			Oeuvrevente uneOeuvre = new Oeuvrevente();
			uneOeuvre.setTitreOeuvrevente(request.getParameter("titre"));
			uneOeuvre.setPrixOeuvrevente(Integer.parseInt(request.getParameter("prix")));

			Service unService = new Service();
			unService.insertOeuvre(uneOeuvre);
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";
		}
		destinationPage = "home";
		return new ModelAndView(destinationPage);
	}

	/*@RequestMapping(value = "supprimerAdherent_{idAdherent}")
	public ModelAndView supprimerAdherent(HttpServletRequest request, HttpServletResponse response, @PathVariable("idAdherent") int idAdherent) throws Exception {

		String destinationPage = "";
		try {
			Service unService = new Service();
			unService.deleteAdherent(idAdherent);
			destinationPage = "home";
		} catch (Exception e) {
			request.setAttribute("MesErreurs", e.getMessage());
			destinationPage = "Erreur";
		}

		return new ModelAndView(destinationPage);
	}*/



	// /
	// / Affichage de la page d'accueil
	// /
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public ModelAndView Afficheindex(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("home");
	}

	// /
		// / Affichage de la page d'accueil
		// /
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public ModelAndView Afficheindex2(HttpServletRequest request, HttpServletResponse response) throws Exception {
			return new ModelAndView("home");
		}
	// /
	// / Affichage de la page d'accueil
	// /
	@RequestMapping(value = "erreur", method = RequestMethod.GET)
	public ModelAndView AfficheErreur(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("Erreur");
	}
	
	

}
