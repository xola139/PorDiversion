package com.pordiversion.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pordiversion.bean.Imagen;

@Controller
public class JSONController {
 
	@RequestMapping(value="/getImagenQueJalada/{contador}", method = RequestMethod.GET)
	public @ResponseBody  List<Imagen> getShopInJSON(@PathVariable String contador, HttpServletRequest request,  
            HttpServletResponse response) {
 
		List<Imagen> lstImg=new ArrayList<Imagen>();
		Document doc;
		try {
			doc = Jsoup.connect("http://quejalada.com/page/"+contador).get();
			Elements elementos=doc.select("div.entry-content").select("p").select("a");
			System.out.println(elementos.size());
		
			
			Imagen img;
			for (Element table : elementos) {
				img=new Imagen();
				img.setImg(table.attr("href"));
				lstImg.add(img);
			}
			
			//model.addAttribute("imagenes", lstImg);

		}catch (Exception e){
			
		}
		
		return lstImg;
 
	}
 
	
	
	@RequestMapping(value="/getImagenAsiPasa/{contador}", method = RequestMethod.GET)
	public @ResponseBody  List<Imagen> getImagenAP(@PathVariable int contador, HttpServletRequest request,  
            HttpServletResponse response) {
 
		List<Imagen> lstAsiPasa=new ArrayList<Imagen>();
		Imagen img;
		Document doc;
		
		
		try {
			
			doc = Jsoup.connect("http://asipasa.com").get();
			Element ultimoItem=doc.select("div.box_content").select("a").first();
			
			int ultimo=Integer.valueOf(ultimoItem.select("a").attr("href"));
			
			
			
			int inicioUltimo=(ultimo)-contador;
			ultimo=inicioUltimo;
			
			
		
			for(int i=0;i<=10;i++){
				doc = Jsoup.connect("http://asipasa.com/"+ultimo).get();
				Elements elementos=doc.select("div[id=main_image]").select("img");
				
				for (Element table : elementos) {
					img=new Imagen();
					img.setImg("http://asipasa.com/"+table.attr("src"));
					lstAsiPasa.add(img);
				}
				ultimo=ultimo-1;
			}
			
			// 1 2 3 4 5 6 7 8 9 10 
			
			
			
			
			
			

		}catch (Exception e){
			
		}
		
		return lstAsiPasa;
 
	}
	
}