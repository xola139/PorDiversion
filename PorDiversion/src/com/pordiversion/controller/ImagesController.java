package com.pordiversion.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pordiversion.bean.Imagen;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pordiversion.thread.HiloGetImages;

@Controller
public class ImagesController {
	
	private static Thread hiloImagenes;
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String logTasPage( ModelMap model) {
		
		if(hiloImagenes==null){
			hiloImagenes=new Thread(new HiloGetImages(model));
			hiloImagenes.start();
			try {
				Thread.sleep(10000L);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		model.addAttribute("mapImagenes", HiloGetImages.getM());
		return "lavista";
		
	}
    
    
    @RequestMapping("/test")
    public String flujoACliente() {
		//SocketReader.arranca();
        return "tester";
    }//ClienteWebConexion
}
